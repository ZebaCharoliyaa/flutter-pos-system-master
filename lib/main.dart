// import 'dart:async';

// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:possystem/constants/constant.dart';
// import 'package:possystem/models/analysis/analysis.dart';
// import 'package:possystem/models/printer.dart';
// import 'package:possystem/models/repository/cart.dart';
// import 'package:provider/provider.dart';

// import 'app.dart';
// import 'firebase_compatible_options.dart';
// import 'helpers/logger.dart';
// import 'models/repository/cashier.dart';
// import 'models/repository/menu.dart';
// import 'models/repository/order_attributes.dart';
// import 'models/repository/quantities.dart';
// import 'models/repository/replenisher.dart';
// import 'models/repository/seller.dart';
// import 'models/repository/stock.dart';
// import 'services/cache.dart';
// import 'services/database.dart';
// import 'services/storage.dart';
// import 'settings/collect_events_setting.dart';
// import 'settings/settings_provider.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key}); // Ensure 'const' is included if possible

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Flutter Test')),
//         body: const Center(child: Text('0')),
//       ),
//     );
//   }
// }

// void main() async {
//   // Not all errors are caught by Flutter. Sometimes, errors are instead caught by Zones.
//   await runZonedGuarded<Future<void>>(
//     () async {
//       // https://stackoverflow.com/questions/57689492/flutter-unhandled-exception-servicesbinding-defaultbinarymessenger-was-accesse
//       final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//       FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

//       await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//       Log.out('start with firebase: ${DefaultFirebaseOptions.currentPlatform.appId}', 'init');

//       // https://firebase.google.com/docs/crashlytics/get-started?platform=flutter&authuser=0&hl=zh-tw#configure-crash-handlers
//       // Pass all uncaught errors from the framework to Crashlytics.
//       FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
//       // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
//       PlatformDispatcher.instance.onError = (error, stack) {
//         FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//         return true;
//       };

//       if (kDebugMode) {
//         await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
//         await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
//         await FirebaseInAppMessaging.instance.setMessagesSuppressed(true);
//       }

//       await Database.instance.initialize(logWhenQuery: isLocalTest);
//       await Storage.instance.initialize();
//       await Cache.instance.initialize();

//       SettingsProvider.instance.initialize();
//       Log.allowSendEvents = CollectEventsSetting.instance.value;

//       await Stock().initialize();
//       await Quantities().initialize();
//       await OrderAttributes().initialize();
//       await Replenisher().initialize();
//       await Cashier().reset();
//       await Analysis().initialize();
//       await Printers().initialize();
//       // Last for setup ingredient and quantity
//       await Menu().initialize();

//       /// Why use provider?
//       /// https://stackoverflow.com/questions/57157823/provider-vs-inheritedwidget
//       runApp(MultiProvider(
//         providers: [
//           ChangeNotifierProvider.value(value: SettingsProvider.instance),
//           ChangeNotifierProvider.value(value: Menu.instance),
//           ChangeNotifierProvider.value(value: Stock.instance),
//           ChangeNotifierProvider.value(value: Quantities.instance),
//           ChangeNotifierProvider.value(value: Replenisher.instance),
//           ChangeNotifierProvider.value(value: OrderAttributes.instance),
//           ChangeNotifierProvider.value(value: Seller.instance),
//           ChangeNotifierProvider.value(value: Cashier.instance),
//           ChangeNotifierProvider.value(value: Cart.instance),
//           ChangeNotifierProvider.value(value: Printers.instance),
//         ],
//         child: const App(),
//       ));
//     },
//     (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
//   );
// }

// import 'dart:async';

// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:possystem/constants/constant.dart';
// import 'package:possystem/models/analysis/analysis.dart';
// import 'package:possystem/models/printer.dart';
// import 'package:possystem/models/repository/cart.dart';
// import 'package:provider/provider.dart';

// import 'app.dart';
// import 'firebase_compatible_options.dart';
// import 'helpers/logger.dart';
// import 'models/repository/cashier.dart';
// import 'models/repository/menu.dart';
// import 'models/repository/order_attributes.dart';
// import 'models/repository/quantities.dart';
// import 'models/repository/replenisher.dart';
// import 'models/repository/seller.dart';
// import 'models/repository/stock.dart';
// import 'services/cache.dart';
// import 'services/database.dart';
// import 'services/storage.dart';
// import 'settings/collect_events_setting.dart';
// import 'settings/settings_provider.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   print('✅ Firebase Connected to Project: ${DefaultFirebaseOptions.currentPlatform.projectId}');




//   // ✅ Check if Firebase is already initialized
//   if (Firebase.apps.isEmpty) {
//     await Firebase.initializeApp();
//     Log.out('Firebase initialized: ${DefaultFirebaseOptions.currentPlatform.appId}', 'init');
//   }

//   // ✅ Configure Firebase Crashlytics
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
//   PlatformDispatcher.instance.onError = (error, stack) {
//     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//     return true;
//   };

//   // ✅ Disable Firebase Analytics & Crashlytics in Debug Mode
//   if (kDebugMode) {
//     await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
//     await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
//     await FirebaseInAppMessaging.instance.setMessagesSuppressed(true);
//   }

//   // ✅ Initialize Services
//   await Future.wait([
//     Database.instance.initialize(logWhenQuery: isLocalTest),
//     Storage.instance.initialize(),
//     Cache.instance.initialize(),
//   ]);

//   SettingsProvider.instance.initialize();
//   Log.allowSendEvents = CollectEventsSetting.instance.value;

//   // ✅ Initialize Repositories
//   await Future.wait([
//     Stock().initialize(),
//     Quantities().initialize(),
//     OrderAttributes().initialize(),
//     Replenisher().initialize(),
//     Cashier().reset(),
//     Analysis().initialize(),
//     Printers().initialize(),
//     Menu().initialize(),
//   ]);

//   // ✅ Start App
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(value: SettingsProvider.instance),
//         ChangeNotifierProvider.value(value: Menu.instance),
//         ChangeNotifierProvider.value(value: Stock.instance),
//         ChangeNotifierProvider.value(value: Quantities.instance),
//         ChangeNotifierProvider.value(value: Replenisher.instance),
//         ChangeNotifierProvider.value(value: OrderAttributes.instance),
//         ChangeNotifierProvider.value(value: Seller.instance),
//         ChangeNotifierProvider.value(value: Cashier.instance),
//         ChangeNotifierProvider.value(value: Cart.instance),
//         ChangeNotifierProvider.value(value: Printers.instance),
//       ],
//       child: const App(),
//     );
//   }
// }



import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:possystem/constants/constant.dart';
import 'package:possystem/models/analysis/analysis.dart';
import 'package:possystem/models/printer.dart';
import 'package:possystem/models/repository/cart.dart';
import 'package:possystem/models/repository/cashier.dart';
import 'package:possystem/models/repository/menu.dart';
import 'package:possystem/models/repository/order_attributes.dart';
import 'package:possystem/models/repository/quantities.dart';
import 'package:possystem/models/repository/replenisher.dart';
import 'package:possystem/models/repository/seller.dart';
import 'package:possystem/models/repository/stock.dart';
import 'package:possystem/services/cache.dart';
import 'package:possystem/services/database.dart';
import 'package:possystem/services/storage.dart';
import 'package:possystem/settings/collect_events_setting.dart';
import 'package:possystem/settings/settings_provider.dart';
import 'package:possystem/helpers/logger.dart';
import 'package:possystem/firebase_compatible_options.dart';
import 'package:possystem/app.dart';
import 'package:possystem/l10n/app_localizations.dart'; // ✅ Manual localization

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  print('✅ Firebase Connected to Project: ${DefaultFirebaseOptions.currentPlatform.projectId}');

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
    Log.out('Firebase initialized: ${DefaultFirebaseOptions.currentPlatform.appId}', 'init');
  }

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode) {
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    await FirebaseInAppMessaging.instance.setMessagesSuppressed(true);
  }

  await Future.wait([
    Database.instance.initialize(logWhenQuery: isLocalTest),
    Storage.instance.initialize(),
    Cache.instance.initialize(),
  ]);

  SettingsProvider.instance.initialize();
  Log.allowSendEvents = CollectEventsSetting.instance.value;

  await Future.wait([
    Stock().initialize(),
    Quantities().initialize(),
    OrderAttributes().initialize(),
    Replenisher().initialize(),
    Cashier().reset(),
    Analysis().initialize(),
    Printers().initialize(),
    Menu().initialize(),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SettingsProvider.instance),
        ChangeNotifierProvider.value(value: Menu.instance),
        ChangeNotifierProvider.value(value: Stock.instance),
        ChangeNotifierProvider.value(value: Quantities.instance),
        ChangeNotifierProvider.value(value: Replenisher.instance),
        ChangeNotifierProvider.value(value: OrderAttributes.instance),
        ChangeNotifierProvider.value(value: Seller.instance),
        ChangeNotifierProvider.value(value: Cashier.instance),
        ChangeNotifierProvider.value(value: Cart.instance),
        ChangeNotifierProvider.value(value: Printers.instance),
      ],
      child: MaterialApp(
        title: 'POS System',
        theme: ThemeData(primarySwatch: Colors.blue),
        localizationsDelegates: const [
          AppLocalizations.delegate, // ✅ Your manual localization delegate
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('zh'),
        ],
        home:App(), // Your main App widget
      ),
    );
  }
}
