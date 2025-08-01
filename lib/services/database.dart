import 'dart:async';
import 'dart:math';

import 'package:possystem/helpers/logger.dart';
import 'package:possystem/models/xfile.dart';
import 'package:possystem/services/database_migration_actions.dart';
import 'package:possystem/services/database_migrations.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sqflite/sqlite_api.dart';
// This only be used in dev.
// ignore: depend_on_referenced_packages
import 'package:sqflite_common/sqflite_logger.dart';

typedef DbOpener = Future<sqflite.Database> Function(
  String path, {
  int? version,
  FutureOr<void> Function(sqflite.Database)? onConfigure,
  FutureOr<void> Function(sqflite.Database, int)? onCreate,
  FutureOr<void> Function(sqflite.Database, int, int)? onUpgrade,
  FutureOr<void> Function(sqflite.Database, int, int)? onDowngrade,
  FutureOr<void> Function(sqflite.Database)? onOpen,
  bool readOnly,
  bool singleInstance,
});

class Database {
  static Database instance = Database();

  /// delimiter: https://stackoverflow.com/a/29811033/12089368
  static final delimiter = String.fromCharCode(29);

  /// delimiter for blob.
  static const queryDelimiter = 'char(29)';

  static const latestVersion = 9;

  late sqflite.Database db;

  /// Whether the database is initialized.
  bool _initialized = false;

  Future<List<Object?>> batchUpdate(
    String table,
    List<Map<String, Object?>> data, {
    required String where,
    required List<List<Object>> whereArgs,
  }) {
    final batch = db.batch();
    final maxLength = min(data.length, whereArgs.length);

    for (var i = 0; i < maxLength; i++) {
      batch.update(table, data[i], where: where, whereArgs: whereArgs[i]);
    }

    return batch.commit();
  }

  Future<void> reset(
    String? table, [
    Future<void> Function(String path) del = sqflite.deleteDatabase,
  ]) async {
    if (table == null) {
      return del(await getRootPath());
    }

    await db.delete(table);
  }

  Future<int?> count(
    String table, {
    String? where,
    List<Object>? whereArgs,
  }) async {
    final result = await db.query(
      table,
      columns: ['COUNT(*)'],
      where: where,
      whereArgs: whereArgs,
    );

    return sqflite.Sqflite.firstIntValue(result);
  }

  Future<void> delete(
    String table,
    Object? id, {
    String keyName = 'id',
  }) {
    return db.delete(table, where: '$keyName = ?', whereArgs: [id]);
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
  }

  Future<void> initialize({
    String? path,
    sqflite.DatabaseFactory? factory,
    bool logWhenQuery = false,
  }) async {
    if (_initialized) return;
    _initialized = true;

    factory ??= sqflite.databaseFactory;
    if (logWhenQuery) {
      factory = SqfliteDatabaseFactoryLogger(
        factory,
        options: SqfliteLoggerOptions(
          type: SqfliteDatabaseFactoryLoggerType.all,
        ),
      );
    }

    final databasePath = path ?? await getRootPath();
    Log.out('start at $databasePath', 'db_initialize');

    db = await factory.openDatabase(
      databasePath,
      options: OpenDatabaseOptions(
        version: latestVersion,
        onCreate: (db, latestVer) async {
          Log.ger('create_db', {'latestVer': latestVer});
          for (var ver = 1; ver <= latestVer; ver++) {
            await execMigration(db, ver);
          }
        },
        onUpgrade: (db, oldVer, newVer) async {
          Log.ger('upgrade_db', {'newVer': newVer, 'oldVer': oldVer});
          for (var ver = oldVer + 1; ver <= newVer; ver++) {
            await execMigration(db, ver);
            await execMigrationAction(db, ver);
          }
        },
      ),
    );
  }

  Future<void> addData(String collection, Map<String, dynamic> data) {
    return FirebaseFirestore.instance.collection(collection).add(data);
  }

  Future<List<Map<String, dynamic>>> getData(String collection) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection(collection).get();
    return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }

  Future<int> push(String table, Map<String, Object?> data) {
    return db.insert(table, data);
  }

  Future<T> transaction<T>(Future<T> Function(sqflite.DatabaseExecutor txn) action) {
    return db.transaction<T>(action);
  }

  Future<List<Map<String, Object?>>> query(
    String table, {
    String? where,
    List<Object?>? whereArgs,
    List<String>? columns,
    JoinQuery? join,
    String? groupBy,
    String? orderBy,
    int? limit,
    int offset = 0,
    bool escapeTable = true,
  }) async {
    if (escapeTable) table = "`$table`";
    final selectQuery = columns?.join(',') ?? '*';
    final whereQuery = where == null ? '' : 'WHERE $where';
    final groupByQuery = groupBy == null ? '' : 'GROUP BY $groupBy';
    final orderByQuery = orderBy == null ? '' : 'ORDER BY $orderBy';
    final limitQuery = limit == null ? '' : 'LIMIT $offset, $limit';
    final joinQuery = join == null ? '' : join.toString();

    return db
        .rawQuery(
      'SELECT $selectQuery FROM $table $joinQuery $whereQuery $groupByQuery $orderByQuery $limitQuery',
      whereArgs,
    )
        .catchError((e, stack) {
      Log.err(e, 'db_query_error', stack);
      return <Map<String, Object?>>[];
    });
  }

  Future<int> update(
    String table,
    Object? key,
    Map<String, Object?> data, {
    keyName = 'id',
  }) {
    return db.update(
      table,
      data,
      where: '$keyName = ?',
      whereArgs: [key],
    );
  }

  static Future<void> execMigration(sqflite.Database db, int version) async {
    final sqlSet = dbMigrationUp[version];
    if (sqlSet == null) return;

    for (final sql in sqlSet) {
      try {
        await db.execute(sql);
      } catch (e, stack) {
        Log.err(e, 'db_migration_error', stack);
      }
    }
  }

  static Future<void> execMigrationAction(sqflite.Database db, int ver) async {
    final action = dbMigrationActions[ver];

    if (action != null) {
      Log.out('start at: $ver', 'db_migration');
      try {
        await action(db);
      } catch (e, stack) {
        Log.err(e, 'db_migration', stack);
      }
    }
  }

  static Future<String> getRootPath() async {
    final paths = (await XFile.getRootPath()).split('/')
      ..removeLast()
      ..add('databases');
    return '${paths.join('/')}/pos_system.sqlite';
  }
}

class JoinQuery {
  final String hostTable;
  final String guestTable;
  final String hostKey;
  final String guestKey;
  final String? guestAlias;
  final String joinType;

  const JoinQuery({
    required this.hostTable,
    required this.guestTable,
    required this.hostKey,
    required this.guestKey,
    this.guestAlias,
    this.joinType = 'INNER',
  });

  @override
  String toString() {
    final alias = guestAlias == null ? '' : 'AS $guestAlias';
    return '$joinType JOIN `$guestTable` $alias ON `$hostTable`.$hostKey = `$guestTable`.$guestKey';
  }
}
