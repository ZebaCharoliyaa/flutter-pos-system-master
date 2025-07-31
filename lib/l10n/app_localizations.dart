import 'dart:async';

<<<<<<< HEAD
=======
import 'package:flutter/foundation.dart';
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

<<<<<<< HEAD
import 'app_localizations_en.dart' deferred as app_localizations_en;
import 'app_localizations_zh.dart' deferred as app_localizations_zh;
=======
import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
<<<<<<< HEAD
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());
=======
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

<<<<<<< HEAD
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();
=======
  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
<<<<<<< HEAD
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];
=======
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
<<<<<<< HEAD
    Locale('zh'),
=======
    Locale('zh')
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  ];

  /// No description provided for @settingTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定'**
=======
  /// In en, this message translates to:
  /// **'Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingTab;

  /// Display the app version
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'版本：{version}'**
=======
  /// In en, this message translates to:
  /// **'Version: {version}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String settingVersion(String version);

  /// Display user's name
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'HI，{name}'**
=======
  /// In en, this message translates to:
  /// **'Hi, {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String settingWelcome(String name);

  /// No description provided for @settingLogoutBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'登出'**
=======
  /// In en, this message translates to:
  /// **'Log Out'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingLogoutBtn;

  /// No description provided for @settingElfTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建議'**
=======
  /// In en, this message translates to:
  /// **'Suggestions'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingElfTitle;

  /// No description provided for @settingElfDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用 Google 表單提供回饋'**
=======
  /// In en, this message translates to:
  /// **'Provide feedback using Google Forms'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingElfDescription;

  /// No description provided for @settingElfContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'覺得這裡還少了什麼嗎？\n歡迎[提供建議](https://forms.gle/R1vZDk9ztQLScUdb9)。\n也可以來看看[排程中的功能](https://github.com/evan361425/flutter-pos-system/milestones)。'**
=======
  /// In en, this message translates to:
  /// **'Feel like something\'s missing here?\nFeel free to [give suggestions](https://forms.gle/s8V5SXuqhA1u3zmt7).\nYou can also check out [upcoming features](https://github.com/evan361425/flutter-pos-system/milestones).'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingElfContent;

  /// No description provided for @settingFeatureTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'其他設定'**
=======
  /// In en, this message translates to:
  /// **'Other Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingFeatureTitle;

  /// No description provided for @settingFeatureDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'外觀、語言、提示'**
=======
  /// In en, this message translates to:
  /// **'Appearance, Language, Tips'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingFeatureDescription;

  /// No description provided for @settingThemeTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'調色盤'**
=======
  /// In en, this message translates to:
  /// **'Theme'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingThemeTitle;

  /// Appearance of the app
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, dark{暗色模式} light{日光模式} system{跟隨系統} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, dark{Dark Mode} light{Light Mode} system{Follow System} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String settingThemeName(String name);

  /// No description provided for @settingLanguageTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'語言'**
=======
  /// In en, this message translates to:
  /// **'Language'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingLanguageTitle;

  /// No description provided for @settingCheckoutWarningTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀機提示'**
=======
  /// In en, this message translates to:
  /// **'Cash Registry Warnings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingCheckoutWarningTitle;

  /// Whether to display cash registry warnings
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, showAll{全部顯示} onlyNotEnough{僅不夠時顯示} hideAll{全部隱藏} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, showAll{Show All} onlyNotEnough{Show Only When Not Enough} hideAll{Hide All} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String settingCheckoutWarningName(String name);

  /// No description provided for @settingCheckoutWarningTip.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, showAll{若使用小錢去找，顯示提示。\n例如 5 塊錢不夠了，開始用 5 個 1 塊去找錢} onlyNotEnough{當零錢不夠找的時候，顯示提示。} hideAll{當點餐時，收銀機不會顯示任何提示} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, showAll{Show warning when using smaller denominations to give change.\nFor example, if \$5 is not enough, start using 5 \$1 bills for change.} onlyNotEnough{Show warning when cash registry not enough money.} hideAll{Won\'t display any warnings during ordering.} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String settingCheckoutWarningTip(String name);

  /// Keep the screen on during ordering, even when idle
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點餐時不關閉螢幕'**
=======
  /// In en, this message translates to:
  /// **'Keep Screen On During Ordering'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingOrderAwakeningTitle;

  /// No description provided for @settingOrderAwakeningDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'若取消，則會根據系統設定時間關閉螢幕'**
=======
  /// In en, this message translates to:
  /// **'If disabled, the screen will turn off based on system settings during ordering.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingOrderAwakeningDescription;

  /// No description provided for @settingReportTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收集錯誤訊息和事件'**
=======
  /// In en, this message translates to:
  /// **'Collect Error Messages and Events'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingReportTitle;

  /// No description provided for @settingReportDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'當應用程式發生錯誤時，寄送錯誤訊息，以幫助應用程式成長'**
=======
  /// In en, this message translates to:
  /// **'Send error messages when the app encounters issues, helping the app improve'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get settingReportDescription;

  /// No description provided for @stockTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'庫存'**
=======
  /// In en, this message translates to:
  /// **'Inventory'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockTab;

  /// No description provided for @stockUpdatedAt.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'上次補貨時間：{updatedAt}'**
=======
  /// In en, this message translates to:
  /// **'Last Purchased: {updatedAt}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockUpdatedAt(DateTime updatedAt);

  /// No description provided for @stockIngredientEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成份後，就可以開始追蹤這些成份的庫存囉！'**
=======
  /// In en, this message translates to:
  /// **'Once ingredients are added, you can start tracking their inventory!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientEmptyBody;

  /// No description provided for @stockIngredientTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分'**
=======
  /// In en, this message translates to:
  /// **'Add Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientTitleCreate;

  /// No description provided for @stockIngredientTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯成分'**
=======
  /// In en, this message translates to:
  /// **'Edit Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientTitleUpdate;

  /// No description provided for @stockIngredientTitleUpdateAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯庫存'**
=======
  /// In en, this message translates to:
  /// **'Edit Inventory'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientTitleUpdateAmount;

  /// No description provided for @stockIngredientTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分'**
=======
  /// In en, this message translates to:
  /// **'Add Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientTutorialTitle;

  /// No description provided for @stockIngredientTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成份可以幫助我們確認產品的庫存。\n你可以在「產品」中設定成分，然後在這裡設定庫存。'**
=======
  /// In en, this message translates to:
  /// **'Ingredients help us track product inventory.\n\nYou can add ingredients in \"Menu\"\nand then manage inventory here.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientTutorialContent;

  /// Indicates how many products will be affected when deleting the ingredient
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count, plural, =0{目前無任何產品有本成分} other{將會一同刪除掉 {count} 個產品的成分}}'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =0{No products currently use this ingredient} other{Deleting this ingredient will also remove it from {count} products}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockIngredientDialogDeletionContent(int count);

  /// When editing an ingredient, it indicates how many products are using it and allows for navigation to the product page
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'共有 {count} 個產品使用此成分'**
=======
  /// In en, this message translates to:
  /// **'{count} products using it'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockIngredientProductsCount(int count);

  /// No description provided for @stockIngredientNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分名稱'**
=======
  /// In en, this message translates to:
  /// **'Ingredient Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientNameLabel;

  /// No description provided for @stockIngredientNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：起司'**
=======
  /// In en, this message translates to:
  /// **'e.g., Cheese'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientNameHint;

  /// No description provided for @stockIngredientNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分名稱重複'**
=======
  /// In en, this message translates to:
  /// **'Ingredient name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientNameErrorRepeat;

  /// No description provided for @stockIngredientAmountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'現有庫存'**
=======
  /// In en, this message translates to:
  /// **'Current Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientAmountLabel;

  /// No description provided for @stockIngredientAmountMaxLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'最大庫存'**
=======
  /// In en, this message translates to:
  /// **'Maximum Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientAmountMaxLabel;

  /// No description provided for @stockIngredientAmountMaxHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定這個值可以幫助你一眼看出用了多少成分。\n填空或不填寫則每次增加庫存，都會自動設定這值，'**
=======
  /// In en, this message translates to:
  /// **'Setting this value helps you see how much of the ingredient is being used.\nLeave blank or don\'t fill it in, and the value will automatically be set each time inventory is increased.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientAmountMaxHelper;

  /// No description provided for @stockIngredientRestockTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'每次補貨可以補貨多少成分。\n例如，每 30 份起司要價 100 元，「補貨單位」就填寫 30，「補貨單價」就填寫 100。\n\n這可以幫助你透過價錢快速補貨。'**
=======
  /// In en, this message translates to:
  /// **'The amount of ingredient you can restock each time.\nFor example, if 30 units of cheese cost 100 dollars,\nfill in \"30\" for \"Restock Unit\" and \"100\" for \"Restock Price.\"\n\nThis helps you quickly restock by price.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockTitle;

  /// No description provided for @stockIngredientRestockPriceLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'補貨單價'**
=======
  /// In en, this message translates to:
  /// **'Restock Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockPriceLabel;

  /// No description provided for @stockIngredientRestockQuantityLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'補貨單位'**
=======
  /// In en, this message translates to:
  /// **'Restock Unit'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockQuantityLabel;

  /// Headline of the dialog for setting the restock price
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'目前每{quantity}個要價{price}元'**
=======
  /// In en, this message translates to:
  /// **'Each {quantity} costs {price} dollars'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockIngredientRestockDialogTitle(String quantity, String price);

  /// Helper text to remind users to enter the purchase price
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請輸入購買價格'**
=======
  /// In en, this message translates to:
  /// **'Please enter the purchase price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogSubtitle;

  /// No description provided for @stockIngredientRestockDialogQuantityTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogQuantityTab;

  /// No description provided for @stockIngredientRestockDialogQuantityBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用數量'**
=======
  /// In en, this message translates to:
  /// **'Use Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogQuantityBtn;

  /// No description provided for @stockIngredientRestockDialogQuantityLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'現有庫存'**
=======
  /// In en, this message translates to:
  /// **'Current Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogQuantityLabel;

  /// Auxiliary text used for quickly increasing inventory
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'若沒有設定最大庫存量，增加本值會重設最大庫存量。'**
=======
  /// In en, this message translates to:
  /// **'If Maximum Amount is not set, every time increase the amount will be considered as the Maximum Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogQuantityHelper;

  /// No description provided for @stockIngredientRestockDialogPriceTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'價格'**
=======
  /// In en, this message translates to:
  /// **'Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogPriceTab;

  /// No description provided for @stockIngredientRestockDialogPriceBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用價錢'**
=======
  /// In en, this message translates to:
  /// **'Use Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogPriceBtn;

  /// No description provided for @stockIngredientRestockDialogPriceLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'補貨價格'**
=======
  /// In en, this message translates to:
  /// **'Total Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogPriceLabel;

  /// No description provided for @stockIngredientRestockDialogPriceEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'趕緊設定單價，讓你可以利用補貨的金額直接算出補貨的量。'**
=======
  /// In en, this message translates to:
  /// **'Set the restock price first to calculate the amount directly from the price.\n'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogPriceEmptyBody;

  /// The original amount before the restock
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'原始庫存'**
=======
  /// In en, this message translates to:
  /// **'Origin'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockIngredientRestockDialogPriceOldAmount;

  /// No description provided for @stockReplenishmentButton.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'採購'**
=======
  /// In en, this message translates to:
  /// **'Replenish'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentButton;

  /// No description provided for @stockReplenishmentEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'採購可以幫你快速調整成分的庫存'**
=======
  /// In en, this message translates to:
  /// **'Purchasing helps you quickly adjust ingredient inventory'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentEmptyBody;

  /// No description provided for @stockReplenishmentTitleList.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'採購列表'**
=======
  /// In en, this message translates to:
  /// **'Replenishment'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentTitleList;

  /// No description provided for @stockReplenishmentTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增採購'**
=======
  /// In en, this message translates to:
  /// **'Add Replenishment'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentTitleCreate;

  /// No description provided for @stockReplenishmentTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯採購'**
=======
  /// In en, this message translates to:
  /// **'Edit Replenishment'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentTitleUpdate;

  /// Indicates in the replenishment list how many ingredients are affected
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'會影響 {count} 項成分'**
=======
  /// In en, this message translates to:
  /// **'Affects {count} Ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockReplenishmentMetaAffect(int count);

  /// The stock page displays the last replenishment time; if never replenished, this text is set
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未補貨過'**
=======
  /// In en, this message translates to:
  /// **'Never Replenished'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentNever;

  /// No description provided for @stockReplenishmentApplyPreview.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預覽'**
=======
  /// In en, this message translates to:
  /// **'Preview'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentApplyPreview;

  /// No description provided for @stockReplenishmentApplyConfirmButton.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'套用'**
=======
  /// In en, this message translates to:
  /// **'Apply'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentApplyConfirmButton;

  /// No description provided for @stockReplenishmentApplyConfirmTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'套用採購？'**
=======
  /// In en, this message translates to:
  /// **'Apply Replenishment?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentApplyConfirmTitle;

  /// No description provided for @stockReplenishmentApplyConfirmColumn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{value, select, name{名稱} amount{數量} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{value, select, name{Name} amount{Amount} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockReplenishmentApplyConfirmColumn(String value);

  /// No description provided for @stockReplenishmentApplyConfirmHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇套用後，將會影響以下成分的庫存'**
=======
  /// In en, this message translates to:
  /// **'After apply, following ingredients will be adjusted'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentApplyConfirmHint;

  /// No description provided for @stockReplenishmentTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成份採購'**
=======
  /// In en, this message translates to:
  /// **'Replenishment'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentTutorialTitle;

  /// No description provided for @stockReplenishmentTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'透過採購，你不再需要一個一個去設定成分的庫存。\n馬上設定採購，一次調整多個成份吧！'**
=======
  /// In en, this message translates to:
  /// **'Through Replenishment, you no longer need to set the inventory of each ingredient one by one.\nSet up Replenishment now and adjust multiple ingredients at once!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentTutorialContent;

  /// No description provided for @stockReplenishmentNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'採購名稱'**
=======
  /// In en, this message translates to:
  /// **'Replenishment Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentNameLabel;

  /// No description provided for @stockReplenishmentNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：Costco 採購'**
=======
  /// In en, this message translates to:
  /// **'e.g., Costco Shopping'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentNameHint;

  /// No description provided for @stockReplenishmentNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'採購名稱重複'**
=======
  /// In en, this message translates to:
  /// **'Replenishment name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentNameErrorRepeat;

  /// No description provided for @stockReplenishmentIngredientsDivider.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分'**
=======
  /// In en, this message translates to:
  /// **'Ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentIngredientsDivider;

  /// No description provided for @stockReplenishmentIngredientsHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點選以設定不同成分欲採購的量'**
=======
  /// In en, this message translates to:
  /// **'Click to set the quantity of different ingredients to be purchased'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentIngredientsHelper;

  /// No description provided for @stockReplenishmentIngredientAmountHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定增加／減少的量'**
=======
  /// In en, this message translates to:
  /// **'Set the amount to increase/decrease'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockReplenishmentIngredientAmountHint;

  /// No description provided for @stockQuantityTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'份量'**
=======
  /// In en, this message translates to:
  /// **'Quantities'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityTitle;

  /// No description provided for @stockQuantityDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'半糖、微糖等'**
=======
  /// In en, this message translates to:
  /// **'Half Sugar, Low Sugar, etc.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityDescription;

  /// No description provided for @stockQuantityTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增份量'**
=======
  /// In en, this message translates to:
  /// **'Add Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityTitleCreate;

  /// No description provided for @stockQuantityTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯份量'**
=======
  /// In en, this message translates to:
  /// **'Edit Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityTitleUpdate;

  /// No description provided for @stockQuantityEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'份量可以快速調整成分的量，例如：\n半糖、微糖。'**
=======
  /// In en, this message translates to:
  /// **'Quantity allows for quick adjustments to the amount of ingredients, such as:\nHalf Sugar, Low Sugar.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityEmptyBody;

  /// Text explaining default ratios in subheadings of quantity items
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設比例：{proportion}'**
=======
  /// In en, this message translates to:
  /// **'Default Ratio: {proportion}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockQuantityMetaProportion(num proportion);

  /// Indicates how many product ingredients will be affected when deleting the quantity
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count, plural, =0{目前無任何產品成分有本份量} other{將會一同刪除掉 {count} 個產品成分的份量\'}}'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =0{No product ingredients currently use this quantity} other{Deleting this quantity will also remove it from {count} product ingredients}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String stockQuantityDialogDeletionContent(int count);

  /// No description provided for @stockQuantityNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'份量名稱'**
=======
  /// In en, this message translates to:
  /// **'Quantity Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityNameLabel;

  /// No description provided for @stockQuantityNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：少量或多量'**
=======
  /// In en, this message translates to:
  /// **'e.g., Small or Large'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityNameHint;

  /// No description provided for @stockQuantityNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'份量名稱重複'**
=======
  /// In en, this message translates to:
  /// **'Quantity name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityNameErrorRepeat;

  /// No description provided for @stockQuantityProportionLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設比例'**
=======
  /// In en, this message translates to:
  /// **'Default Ratio'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityProportionLabel;

  /// No description provided for @stockQuantityProportionHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'當產品成分使用此份量時，預設替該成分增加的比例。\n\n例如：此份量為「多量」預設份量為「1.5」，\n今有一產品「起司漢堡」的成分「起司」，每份漢堡會使用「2」單位的起司，\n當增加此份量時，則會自動替「起司」設定為「3」（2 * 1.5）的份量。\n\n若設為「1」則無任何影響。\n\n若設為「0」則代表將不會使用此成分'**
=======
  /// In en, this message translates to:
  /// **'Applied when this quantity is used for an ingredient.\n\nFor example:\nif this quantity is \"Large\" and the default ratio is \"1.5\",\nand there\'s a product \"Cheeseburger\" with the ingredient \"Cheese,\"\nwhich uses \"2\" units of cheese per burger,\nwhen adding this quantity,\nthe quantity of \"Cheese\" will automatically be set to \"3\" (2 * 1.5).\n\nIf set to \"1,\" there\'s no effect.\n\nIf set to \"0,\" the ingredient won\'t be used.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get stockQuantityProportionHelper;

  /// No description provided for @printerTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機管理'**
=======
  /// In en, this message translates to:
  /// **'Printer Management'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerTitle;

  /// No description provided for @printerDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'藍牙連線、出單設定'**
=======
  /// In en, this message translates to:
  /// **'Bluetooth Connection, Printer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerDescription;

  /// Displayed on the upper in mobile view
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機'**
=======
  /// In en, this message translates to:
  /// **'Printers'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerHeaderInfo;

  /// No description provided for @printerTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增出單機'**
=======
  /// In en, this message translates to:
  /// **'Add Printer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerTitleCreate;

  /// No description provided for @printerTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯出單機'**
=======
  /// In en, this message translates to:
  /// **'Edit Printer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerTitleUpdate;

  /// No description provided for @printerTitleSettings.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定格式'**
=======
  /// In en, this message translates to:
  /// **'Format Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerTitleSettings;

  /// No description provided for @printerBtnConnect.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建立連線'**
=======
  /// In en, this message translates to:
  /// **'Connect'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerBtnConnect;

  /// No description provided for @printerBtnDisconnect.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'中斷連線'**
=======
  /// In en, this message translates to:
  /// **'Disconnect'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerBtnDisconnect;

  /// No description provided for @printerBtnTestPrint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'列印測試'**
=======
  /// In en, this message translates to:
  /// **'Test Print'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerBtnTestPrint;

  /// No description provided for @printerBtnRetry.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'重新連線'**
=======
  /// In en, this message translates to:
  /// **'Re-Connect'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerBtnRetry;

  /// No description provided for @printerBtnPrint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'列印'**
=======
  /// In en, this message translates to:
  /// **'Print'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerBtnPrint;

  /// No description provided for @printerStatusSuccess.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成功連結出單機'**
=======
  /// In en, this message translates to:
  /// **'Printer connected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerStatusSuccess;

  /// No description provided for @printerStatusConnecting.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'連線中'**
=======
  /// In en, this message translates to:
  /// **'Connecting'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerStatusConnecting;

  /// No description provided for @printerStatusStandby.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未進行連線'**
=======
  /// In en, this message translates to:
  /// **'Not connected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerStatusStandby;

  /// No description provided for @printerStatusPrinted.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'列印完成'**
=======
  /// In en, this message translates to:
  /// **'Print complete'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerStatusPrinted;

  /// No description provided for @printerStatusName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, good{正常} writeFailed{上次列印失敗} paperNotFound{缺紙} tooHot{出單機過熱} lowBattery{電量不足} printing{列印中} unknown{未知} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, good{All Good} writeFailed{Last Print Failed} paperNotFound{Paper Not Found} tooHot{Printer Overheated} lowBattery{Low Battery} printing{Printing} unknown{Unknown} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String printerStatusName(String name);

  /// No description provided for @printerSignalName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, good{良好} normal{一般} weak{微弱} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, good{Good} normal{Normal} weak{Weak} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String printerSignalName(String name);

  /// No description provided for @printerScanIng.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋藍牙設備中...'**
=======
  /// In en, this message translates to:
  /// **'Scanning for Bluetooth Devices...'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerScanIng;

  /// No description provided for @printerScanCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋到 {count} 個裝置'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} Device Found} other{{count} Devices Found}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String printerScanCount(int count);

  /// No description provided for @printerScanRetry.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'重新搜尋'**
=======
  /// In en, this message translates to:
  /// **'Re-scan'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerScanRetry;

  /// No description provided for @printerScanNotFound.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找不到裝置？'**
=======
  /// In en, this message translates to:
  /// **'Not Found?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerScanNotFound;

  /// No description provided for @printerErrorNotSelect.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未選擇裝置'**
=======
  /// In en, this message translates to:
  /// **'No device selected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorNotSelect;

  /// No description provided for @printerErrorNotSupportTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'裝置不相容'**
=======
  /// In en, this message translates to:
  /// **'Device Not Compatible'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorNotSupportTitle;

  /// No description provided for @printerErrorNotSupportContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'目前尚未支援此裝置，你可以[聯絡我們](mailto:evanlu361425@gmail.com)以取得協助。'**
=======
  /// In en, this message translates to:
  /// **'This device is currently unsupported.\n\n[Contact Us](mailto:evanlu361425@gmail.com) for assistance.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorNotSupportContent;

  /// No description provided for @printerErrorBluetoothOff.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'藍牙未開啟'**
=======
  /// In en, this message translates to:
  /// **'Bluetooth is off'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorBluetoothOff;

  /// No description provided for @printerErrorDisconnected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機已斷線'**
=======
  /// In en, this message translates to:
  /// **'Printer is disconnected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorDisconnected;

  /// No description provided for @printerErrorTimeout.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機連線逾時'**
=======
  /// In en, this message translates to:
  /// **'Printer connection timeout'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorTimeout;

  /// No description provided for @printerErrorCanceled.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機連線請求被中斷'**
=======
  /// In en, this message translates to:
  /// **'Printer connection request interrupted'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorCanceled;

  /// No description provided for @printerErrorTimeoutMore.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'可以嘗試以下操作：\n• 確認裝置是否開啟（通常裝置會閃爍）\n• 確認裝置是否在範圍內\n• 重新開啟藍牙'**
=======
  /// In en, this message translates to:
  /// **'Try the following:\n• Check if the device is powered on (usually will flash)\n• Ensure the device is within range\n• Restart Bluetooth'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerErrorTimeoutMore;

  /// No description provided for @printerNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機名稱'**
=======
  /// In en, this message translates to:
  /// **'Printer Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerNameLabel;

  /// No description provided for @printerNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：廚房的出單機'**
=======
  /// In en, this message translates to:
  /// **'e.g., Kitchen\'s Printer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerNameHint;

  /// No description provided for @printerNameHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'位置：{address}'**
=======
  /// In en, this message translates to:
  /// **'Location: {address}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String printerNameHelper(String address);

  /// No description provided for @printerAutoConnLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'自動連線'**
=======
  /// In en, this message translates to:
  /// **'Auto-Connect'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerAutoConnLabel;

  /// No description provided for @printerAutoConnHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'當進入訂單頁時自動連線'**
=======
  /// In en, this message translates to:
  /// **'Automatically connect when entering the order page'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerAutoConnHelper;

  /// No description provided for @printerMetaConnected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'已連線'**
=======
  /// In en, this message translates to:
  /// **'Connected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerMetaConnected;

  /// No description provided for @printerMetaExist.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'已建立，無法新增'**
=======
  /// In en, this message translates to:
  /// **'Existing, cannot add'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerMetaExist;

  /// No description provided for @printerMetaHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'打開藍牙並確保出單機就在你旁邊'**
=======
  /// In en, this message translates to:
  /// **'Enable Bluetooth and keep the printer nearby'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerMetaHelper;

  /// No description provided for @printerSettingsTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定出單機格式'**
=======
  /// In en, this message translates to:
  /// **'Printer Format Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerSettingsTitle;

  /// No description provided for @printerSettingsPaddingLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'窄間距'**
=======
  /// In en, this message translates to:
  /// **'Narrow Spacing'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerSettingsPaddingLabel;

  /// No description provided for @printerSettingsPaddingHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單子跟單子之間的空白會變少，較省紙張，但是撕紙時要小心'**
=======
  /// In en, this message translates to:
  /// **'Reduces paper between receipts; need caution when tearing'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerSettingsPaddingHelper;

  /// No description provided for @printerSettingsMore.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'其他更多設定，敬請期待！'**
=======
  /// In en, this message translates to:
  /// **'More Settings Coming Soon!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerSettingsMore;

  /// No description provided for @printerReceiptTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'交易明細'**
=======
  /// In en, this message translates to:
  /// **'Receipt'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptTitle;

  /// No description provided for @printerReceiptColumnName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'品項'**
=======
  /// In en, this message translates to:
  /// **'Item'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptColumnName;

  /// No description provided for @printerReceiptColumnPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單價'**
=======
  /// In en, this message translates to:
  /// **'U/P'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptColumnPrice;

  /// No description provided for @printerReceiptColumnCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'QTY'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptColumnCount;

  /// No description provided for @printerReceiptColumnTotal.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'小計'**
=======
  /// In en, this message translates to:
  /// **'TOT'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptColumnTotal;

  /// No description provided for @printerReceiptColumnTime.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間'**
=======
  /// In en, this message translates to:
  /// **'Time'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptColumnTime;

  /// No description provided for @printerReceiptDiscountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'折扣'**
=======
  /// In en, this message translates to:
  /// **'Discount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptDiscountLabel;

  /// No description provided for @printerReceiptDiscountOrigin.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'原單價'**
=======
  /// In en, this message translates to:
  /// **'Origin'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptDiscountOrigin;

  /// No description provided for @printerReceiptAddOnsLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'附加'**
=======
  /// In en, this message translates to:
  /// **'Add-Ons'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptAddOnsLabel;

  /// No description provided for @printerReceiptAddOnsAdjustment.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'調整金額'**
=======
  /// In en, this message translates to:
  /// **'Adj'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptAddOnsAdjustment;

  /// No description provided for @printerReceiptTotal.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價'**
=======
  /// In en, this message translates to:
  /// **'Total'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptTotal;

  /// No description provided for @printerReceiptPaid.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額'**
=======
  /// In en, this message translates to:
  /// **'Paid'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptPaid;

  /// No description provided for @printerReceiptPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價'**
=======
  /// In en, this message translates to:
  /// **'Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptPrice;

  /// No description provided for @printerReceiptChange.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找錢'**
=======
  /// In en, this message translates to:
  /// **'Change'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerReceiptChange;

  /// No description provided for @printerInfoTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機資訊'**
=======
  /// In en, this message translates to:
  /// **'Printer Information'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerInfoTitle;

  /// No description provided for @printerInfoName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'名稱'**
=======
  /// In en, this message translates to:
  /// **'Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerInfoName;

  /// No description provided for @printerInfoAddress.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'位置'**
=======
  /// In en, this message translates to:
  /// **'Location'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerInfoAddress;

  /// No description provided for @printerInfoSignal.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訊號強度'**
=======
  /// In en, this message translates to:
  /// **'Signal'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerInfoSignal;

  /// No description provided for @printerInfoStatus.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'狀態'**
=======
  /// In en, this message translates to:
  /// **'Status'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get printerInfoStatus;

  /// No description provided for @transitTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'資料轉移'**
=======
  /// In en, this message translates to:
  /// **'Data Transfer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitTitle;

  /// No description provided for @transitDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入、匯出店家資訊和訂單'**
=======
  /// In en, this message translates to:
  /// **'Importing and Exporting Store Information and Orders'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitDescription;

  /// No description provided for @transitMethodTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請選擇欲轉移的方式'**
=======
  /// In en, this message translates to:
  /// **'Please Select Transfer Method'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitMethodTitle;

  /// No description provided for @transitMethodName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, googleSheet{Google 試算表} plainText{純文字} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, googleSheet{Google Sheets} plainText{Plain Text} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitMethodName(String name);

  /// No description provided for @transitCatalogName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, order{訂單記錄} model{店家資訊} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, order{Order Records} model{Store Information} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitCatalogName(String name);

  /// No description provided for @transitCatalogHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, order{訂單資訊可以讓你匯出到第三方位置後做更細緻的統計分析。} model{商家資訊通常是用來把菜單、庫存等資訊同步到第三方位置或用來匯入到另一台手機。} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, order{Export order info for detailed statistical analysis.} model{Store info is usually used to sync menu, inventory, etc., to third-party locations or to import to another device.} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitCatalogHelper(String name);

  /// No description provided for @transitModelName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, menu{菜單} stock{庫存} quantities{份量} replenisher{補貨} orderAttr{顧客設定} order{訂單} orderDetailsAttr{訂單顧客設定} orderDetailsProduct{訂單產品細項} orderDetailsIngredient{訂單成分細項} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, menu{Menu} stock{Inventory} quantities{Quantities} replenisher{Replenisher} orderAttr{Customer Settings} order{Order} orderDetailsAttr{Order Customer Settings} orderDetailsProduct{Order Product Details} orderDetailsIngredient{Order Ingredient Details} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitModelName(String name);

  /// No description provided for @transitOrderMetaRange.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{range}的訂單'**
=======
  /// In en, this message translates to:
  /// **'Orders for {range}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitOrderMetaRange(String range);

  /// No description provided for @transitOrderMetaRangeDays.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{days} 天的資料'**
=======
  /// In en, this message translates to:
  /// **'Data for {days} Days'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitOrderMetaRangeDays(int days);

  /// No description provided for @transitOrderCapacityTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預估容量為：{size}'**
=======
  /// In en, this message translates to:
  /// **'Estimated Capacity: {size}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitOrderCapacityTitle(String size);

  /// No description provided for @transitOrderCapacityContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'過高的容量可能會讓執行錯誤，建議分次執行，不要一次匯出太多筆。'**
=======
  /// In en, this message translates to:
  /// **'High capacity may cause execution errors. It\'s recommended to perform in batches and not export too many records at once.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitOrderCapacityContent;

  /// No description provided for @transitOrderCapacityOk.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'容量剛好'**
=======
  /// In en, this message translates to:
  /// **'Capacity Okay'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitOrderCapacityOk;

  /// No description provided for @transitOrderCapacityWarn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'容量警告'**
=======
  /// In en, this message translates to:
  /// **'Capacity Warning'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitOrderCapacityWarn;

  /// No description provided for @transitOrderCapacityDanger.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'容量危險'**
=======
  /// In en, this message translates to:
  /// **'Capacity Danger'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitOrderCapacityDanger;

  /// No description provided for @transitOrderItemTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
=======
  /// In en, this message translates to:
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  /// **'{date}'**
  String transitOrderItemTitle(DateTime date);

  /// No description provided for @transitOrderItemMetaProductCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'餐點數：{count}'**
=======
  /// In en, this message translates to:
  /// **'Product Count: {count}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitOrderItemMetaProductCount(int count);

  /// No description provided for @transitOrderItemMetaPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價：{price}'**
=======
  /// In en, this message translates to:
  /// **'Total Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitOrderItemMetaPrice(String price);

  /// No description provided for @transitOrderItemDialogTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單細節'**
=======
  /// In en, this message translates to:
  /// **'Order Details'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitOrderItemDialogTitle;

  /// No description provided for @transitExportPreviewBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預覽'**
=======
  /// In en, this message translates to:
  /// **'Preview'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitExportPreviewBtn;

  /// No description provided for @transitExportPreviewTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預覽輸出結果'**
=======
  /// In en, this message translates to:
  /// **'Preview Output Result'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitExportPreviewTitle;

  /// No description provided for @transitExportBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯出'**
=======
  /// In en, this message translates to:
  /// **'Export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitExportBtn;

  /// No description provided for @transitImportPreviewBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預覽'**
=======
  /// In en, this message translates to:
  /// **'Preview'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportPreviewBtn;

  /// No description provided for @transitImportPreviewTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預覽匯入結果'**
=======
  /// In en, this message translates to:
  /// **'Preview Import Result'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportPreviewTitle;

  /// No description provided for @transitImportPreviewHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'注意：匯入後將會把下面沒列到的資料移除，請確認是否執行！'**
=======
  /// In en, this message translates to:
  /// **'Note: Importing will remove the data not listed below. Please confirm before executing!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportPreviewHeader;

  /// No description provided for @transitImportPreviewIngredientMetaAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'庫存：{amount}'**
=======
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitImportPreviewIngredientMetaAmount(num amount);

  /// No description provided for @transitImportPreviewIngredientMetaMaxAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{exist, plural, =0{未設定} other{最大值：{value}}}'**
=======
  /// In en, this message translates to:
  /// **'{exist, plural, =0{Not Set} other{Max Value: {value}}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitImportPreviewIngredientMetaMaxAmount(int exist, num value);

  /// No description provided for @transitImportPreviewIngredientHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入後，為了避免影響「菜單」的狀況，並不會把舊的成分移除。'**
=======
  /// In en, this message translates to:
  /// **'After import, old ingredients won\'t be removed to avoid affecting the \"Menu\" status.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportPreviewIngredientHeader;

  /// No description provided for @transitImportPreviewQuantityHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入後，為了避免影響「菜單」的狀況，並不會把舊的份量移除。'**
=======
  /// In en, this message translates to:
  /// **'After import, old quantities won\'t be removed to avoid affecting the \"Menu\" status.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportPreviewQuantityHeader;

  /// No description provided for @transitImportBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入'**
=======
  /// In en, this message translates to:
  /// **'Import'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportBtn;

  /// No description provided for @transitImportErrorColumnCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'資料量不足，需要 {columns} 個欄位'**
=======
  /// In en, this message translates to:
  /// **'Insufficient data, {columns} columns required'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitImportErrorColumnCount(int columns);

  /// No description provided for @transitImportErrorDuplicate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'將忽略本行，相同的項目已於前面出現'**
=======
  /// In en, this message translates to:
  /// **'This line will be ignored as the same item appeared earlier'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitImportErrorDuplicate;

  /// Additional status of the data displayed
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, normal{（一般）} staged{（新增）} stagedIng{（新的成分）} stagedQua{（新的份量）} updated{（異動）} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, normal{(Normal)} staged{(New)} stagedIng{(New Ingredient)} stagedQua{(New Quantity)} updated{(Updated)} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitImportColumnStatus(String name);

  /// No description provided for @transitGSDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'Google 試算表是一個強大的小型資料庫，匯出之後可以做很多客制化的分析！'**
=======
  /// In en, this message translates to:
  /// **'Google Sheets is a powerful mini-database. After exporting, it can be customized for various analyses!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSDescription;

  /// Label of title
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name}的表單標題'**
=======
  /// In en, this message translates to:
  /// **'Sheet Title of {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSSheetNameLabel(String name);

  /// No description provided for @transitGSSheetNameUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'修改標題'**
=======
  /// In en, this message translates to:
  /// **'Modify Title'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSheetNameUpdate;

  /// No description provided for @transitGSSpreadsheetLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'試算表'**
=======
  /// In en, this message translates to:
  /// **'Spreadsheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetLabel;

  /// No description provided for @transitGSSpreadsheetActionSelect.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇試算表'**
=======
  /// In en, this message translates to:
  /// **'Select Spreadsheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetActionSelect;

  /// No description provided for @transitGSSpreadsheetActionClear.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'清除所選'**
=======
  /// In en, this message translates to:
  /// **'Clear Selection'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetActionClear;

  /// No description provided for @transitGSSpreadsheetExportEmptyLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建立匯出'**
=======
  /// In en, this message translates to:
  /// **'Create & Export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetExportEmptyLabel;

  /// No description provided for @transitGSSpreadsheetExportEmptyHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建立新的試算表「{name}」，並把資料匯出至此'**
=======
  /// In en, this message translates to:
  /// **'Create a new spreadsheet \"{name}\" and export data to it.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSSpreadsheetExportEmptyHint(String name);

  /// Inform the user that data will be exported to the specified spreadsheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'指定匯出'**
=======
  /// In en, this message translates to:
  /// **'Export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetExportExistLabel;

  /// No description provided for @transitGSSpreadsheetExportExistHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯出至試算表「{name}」'**
=======
  /// In en, this message translates to:
  /// **'Export to spreadsheet \"{name}\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSSpreadsheetExportExistHint(String name);

  /// No description provided for @transitGSSpreadsheetImportAllBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入全部'**
=======
  /// In en, this message translates to:
  /// **'Import All'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportAllBtn;

  /// No description provided for @transitGSSpreadsheetImportAllHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'不會有任何預覽畫面，直接覆寫全部的資料。'**
=======
  /// In en, this message translates to:
  /// **'There will be no preview screen, directly overwrite all data.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportAllHint;

  /// No description provided for @transitGSSpreadsheetImportAllConfirmTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯入全部資料？'**
=======
  /// In en, this message translates to:
  /// **'Import All Data?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportAllConfirmTitle;

  /// No description provided for @transitGSSpreadsheetImportAllConfirmContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'將會把所選表單的資料都下載，並完全覆蓋本地資料。\n此動作無法復原。'**
=======
  /// In en, this message translates to:
  /// **'All data from the selected sheets will be downloaded and completely overwrite local data.\nThis action cannot be undone.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportAllConfirmContent;

  /// No description provided for @transitGSSpreadsheetImportExistLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'確認表單名稱'**
=======
  /// In en, this message translates to:
  /// **'Load Sheets Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportExistLabel;

  /// No description provided for @transitGSSpreadsheetImportExistHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'從試算表中取得所有表單的名稱，並進行匯入'**
=======
  /// In en, this message translates to:
  /// **'Get all sheet names from the spreadsheet and ready to import.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportExistHint;

  /// No description provided for @transitGSSpreadsheetImportEmptyLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇試算表'**
=======
  /// In en, this message translates to:
  /// **'Select Spreadsheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportEmptyLabel;

  /// No description provided for @transitGSSpreadsheetImportEmptyHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇要匯入的試算表後，就能開始匯入資料'**
=======
  /// In en, this message translates to:
  /// **'Once you choose the spreadsheet to import, you can start importing data.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportEmptyHint;

  /// No description provided for @transitGSSpreadsheetImportDropdownHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇欲匯入的表單'**
=======
  /// In en, this message translates to:
  /// **'Select desired sheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetImportDropdownHint;

  /// No description provided for @transitGSSpreadsheetConfirm.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'此動作將會{hint}'**
=======
  /// In en, this message translates to:
  /// **'This action will {hint}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSSpreadsheetConfirm(String hint);

  /// No description provided for @transitGSSpreadsheetSelectionHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, _{輸入試算表網址或試算表 ID} other{原試算表為「{name}」}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, _{Enter the spreadsheet URL or spreadsheet ID} other{The current spreadsheet is \"{name}\"}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSSpreadsheetSelectionHint(String name);

  /// No description provided for @transitGSSpreadsheetModelDefaultName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'POS System 資料'**
=======
  /// In en, this message translates to:
  /// **'POS System Data'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetModelDefaultName;

  /// No description provided for @transitGSSpreadsheetModelExportDivider.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇欲匯出的種類'**
=======
  /// In en, this message translates to:
  /// **'Select types to export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetModelExportDivider;

  /// No description provided for @transitGSSpreadsheetModelImportDivider.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇欲匯入表單'**
=======
  /// In en, this message translates to:
  /// **'Select sheet to import'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetModelImportDivider;

  /// No description provided for @transitGSSpreadsheetOrderDefaultName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單資料'**
=======
  /// In en, this message translates to:
  /// **'POS System Orders'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetOrderDefaultName;

  /// No description provided for @transitGSSpreadsheetSnackbarAction.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'開啟表單'**
=======
  /// In en, this message translates to:
  /// **'Open'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSSpreadsheetSnackbarAction;

  /// No description provided for @transitGSProgressStatusAddSpreadsheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增試算表中..'**
=======
  /// In en, this message translates to:
  /// **'Adding Spreadsheet...'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSProgressStatusAddSpreadsheet;

  /// No description provided for @transitGSProgressStatusAddSheets.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增表單中..'**
=======
  /// In en, this message translates to:
  /// **'Adding Sheets...'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSProgressStatusAddSheets;

  /// No description provided for @transitGSProgressStatusVerifyUser.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'驗證身份中'**
=======
  /// In en, this message translates to:
  /// **'Verifying Identity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSProgressStatusVerifyUser;

  /// No description provided for @transitGSProgressStatusFetchLocalOrders.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'取得本地資料..'**
=======
  /// In en, this message translates to:
  /// **'Retrieving Local Data...'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSProgressStatusFetchLocalOrders;

  /// No description provided for @transitGSProgressStatusOverwriteOrders.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'覆寫訂單資料..'**
=======
  /// In en, this message translates to:
  /// **'Overwriting Order Data...'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSProgressStatusOverwriteOrders;

  /// No description provided for @transitGSProgressStatusAppendOrders.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'附加進 {name}'**
=======
  /// In en, this message translates to:
  /// **'Appended to {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSProgressStatusAppendOrders(String name);

  /// No description provided for @transitGSModelStatus.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{model, select, menu{更新菜單中..} stock{更新庫存中..} quantities{更新份量中..} replenisher{更新補貨中..} orderAttr{更新顧客設定中..} order{匯出訂單中..} orderDetailsAttr{匯出顧客設定中..} orderDetailsProduct{匯出產品細項中..} orderDetailsIngredient{匯出成分細項中..} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{model, select, menu{Updating Menu...} stock{Updating Inventory...} quantities{Updating Quantities...} replenisher{Updating Replenisher...} orderAttr{Exporting Customer Settings...} order{Exporting Orders...} orderDetailsAttr{Exporting Order Customer Settings...} orderDetailsProduct{Exporting Order Product Details...} orderDetailsIngredient{Exporting Order Ingredient Details...} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSModelStatus(String model);

  /// No description provided for @transitGSModelProductIngredientTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分資訊'**
=======
  /// In en, this message translates to:
  /// **'Ingredient Information'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelProductIngredientTitle;

  /// No description provided for @transitGSModelProductIngredientNote.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品全部成分的資訊，格式如下：\n- 成分1,預設使用量\n  + 份量a,額外使用量,額外價格,額外成本\n  + 份量b,額外使用量,額外價格,額外成本\n- 成分2,預設使用量'**
=======
  /// In en, this message translates to:
  /// **'Information of all product ingredients, format as follows:\n- Ingredient 1, Default usage amount\n  + Quantity a, Additional usage amount, Additional price, Additional cost\n  + Quantity b, Additional usage amount, Additional price, Additional cost\n- Ingredient 2, Default usage amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelProductIngredientNote;

  /// No description provided for @transitGSModelReplenishmentTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'補貨量'**
=======
  /// In en, this message translates to:
  /// **'Replenishment Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelReplenishmentTitle;

  /// No description provided for @transitGSModelReplenishmentNote.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'每次補貨時特定成分的量，格式如下：\n- 成分1,補貨量\n- 成分2,補貨量'**
=======
  /// In en, this message translates to:
  /// **'The amount of specific ingredients during each replenishment, format as follows:\n- Ingredient 1, Replenishment amount\n- Ingredient 2, Replenishment amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelReplenishmentNote;

  /// No description provided for @transitGSModelAttributeOptionTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定選項'**
=======
  /// In en, this message translates to:
  /// **'Customer Setting Options'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelAttributeOptionTitle;

  /// No description provided for @transitGSModelAttributeOptionHeaderTs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間戳記'**
=======
  /// In en, this message translates to:
  /// **'Timestamp'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelAttributeOptionHeaderTs;

  /// No description provided for @transitGSModelAttributeOptionHeaderMode.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'類型'**
=======
  /// In en, this message translates to:
  /// **'Type'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelAttributeOptionHeaderMode;

  /// No description provided for @transitGSModelAttributeOptionHeaderOptions.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選項'**
=======
  /// In en, this message translates to:
  /// **'Options'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelAttributeOptionHeaderOptions;

  /// No description provided for @transitGSModelAttributeOptionNote.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'「選項值」會根據顧客設定種類不同而有不同意義，格式如下：\n- 選項1,是否為預設,選項值\n- 選項2,是否為預設,選項值'**
=======
  /// In en, this message translates to:
  /// **'\"Options\" will have different meanings depending on the type of customer settings, format as follows:\n- Option 1, Is default, Option value\n- Option 2, Is default, Option value'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSModelAttributeOptionNote;

  /// No description provided for @transitGSOrderSettingTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單匯出設定'**
=======
  /// In en, this message translates to:
  /// **'Order Export Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingTitle;

  /// No description provided for @transitGSOrderSettingOverwriteLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'是否覆寫表單'**
=======
  /// In en, this message translates to:
  /// **'Overwrite Sheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingOverwriteLabel;

  /// No description provided for @transitGSOrderSettingOverwriteHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'覆寫表單之後，將會從第一行開始匯出'**
=======
  /// In en, this message translates to:
  /// **'Overwriting the sheet will start exporting from the first row.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingOverwriteHint;

  /// No description provided for @transitGSOrderSettingTitlePrefixLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'加上日期前綴'**
=======
  /// In en, this message translates to:
  /// **'Add Date Prefix'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingTitlePrefixLabel;

  /// No description provided for @transitGSOrderSettingTitlePrefixHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'表單名稱前面加上日期前綴，例如：「0101 - 0131 訂單資料」'**
=======
  /// In en, this message translates to:
  /// **'Add a date prefix to the sheet name, for example, \"0101 - 0131 Order Data\".'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingTitlePrefixHint;

  /// No description provided for @transitGSOrderSettingRecommendCombination.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'不覆寫而改用附加的時候，建議表單名稱「不要」加上日期前綴'**
=======
  /// In en, this message translates to:
  /// **'When not overwriting and using append instead, it\'s recommended not to add a date prefix to the form name.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingRecommendCombination;

  /// No description provided for @transitGSOrderSettingNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'表單名稱'**
=======
  /// In en, this message translates to:
  /// **'Sheet Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingNameLabel;

  /// No description provided for @transitGSOrderSettingNameHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'拆分表單可以讓你更彈性的去分析資料，\n例如可以到訂單成份細項查詢：今天某個成分總共用了多少。'**
=======
  /// In en, this message translates to:
  /// **'Splitting the sheet allows for more flexible data analysis,\nfor example, you can query the total usage of a certain ingredient in order details.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderSettingNameHelper;

  /// No description provided for @transitGSOrderMetaOverwrite.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{value, select, true{會覆寫} false{不會覆寫} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{value, select, true{Will overwrite} false{Won\'t overwrite} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSOrderMetaOverwrite(String value);

  /// No description provided for @transitGSOrderMetaTitlePrefix.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{value, select, true{有日期前綴} false{沒有日期前綴} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{value, select, true{Has date prefix} false{No date prefix} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSOrderMetaTitlePrefix(String value);

  /// No description provided for @transitGSOrderMetaMemoryWarning.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這裡的容量代表網路傳輸所消耗的量，實際佔用的雲端記憶體可能是此值的百分之一而已。\n詳細容量限制說明可以參考[本文件](https://developers.google.com/sheets/api/limits#quota)。'**
=======
  /// In en, this message translates to:
  /// **'The capacity here represents the amount consumed by network transmission, the actual cloud memory occupied may be only one percent of this value.\nFor detailed capacity limit explanations, please refer to [this document](https://developers.google.com/sheets/api/limits#quota).'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderMetaMemoryWarning;

  /// No description provided for @transitGSOrderHeaderTs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間戳記'**
=======
  /// In en, this message translates to:
  /// **'Timestamp'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderTs;

  /// No description provided for @transitGSOrderHeaderTime.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間'**
=======
  /// In en, this message translates to:
  /// **'Time'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderTime;

  /// No description provided for @transitGSOrderHeaderPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價'**
=======
  /// In en, this message translates to:
  /// **'Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderPrice;

  /// No description provided for @transitGSOrderHeaderProductPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品總價'**
=======
  /// In en, this message translates to:
  /// **'Product Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderProductPrice;

  /// No description provided for @transitGSOrderHeaderPaid.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額'**
=======
  /// In en, this message translates to:
  /// **'Paid'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderPaid;

  /// No description provided for @transitGSOrderHeaderCost.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成本'**
=======
  /// In en, this message translates to:
  /// **'Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderCost;

  /// No description provided for @transitGSOrderHeaderProfit.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收入'**
=======
  /// In en, this message translates to:
  /// **'Profit'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderProfit;

  /// how many items in the order
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品份數'**
=======
  /// In en, this message translates to:
  /// **'Item Count'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderItemCount;

  /// how many types of products in the order
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品類數'**
=======
  /// In en, this message translates to:
  /// **'Type Count'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderHeaderTypeCount;

  /// No description provided for @transitGSOrderAttributeTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Order Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderAttributeTitle;

  /// No description provided for @transitGSOrderAttributeHeaderTs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間戳記'**
=======
  /// In en, this message translates to:
  /// **'Timestamp'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderAttributeHeaderTs;

  /// No description provided for @transitGSOrderAttributeHeaderName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定類別'**
=======
  /// In en, this message translates to:
  /// **'Setting Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderAttributeHeaderName;

  /// No description provided for @transitGSOrderAttributeHeaderOption.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選項'**
=======
  /// In en, this message translates to:
  /// **'Option'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderAttributeHeaderOption;

  /// No description provided for @transitGSOrderProductTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單產品細項'**
=======
  /// In en, this message translates to:
  /// **'Order Product Details'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductTitle;

  /// No description provided for @transitGSOrderProductHeaderTs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間戳記'**
=======
  /// In en, this message translates to:
  /// **'Timestamp'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderTs;

  /// No description provided for @transitGSOrderProductHeaderName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品'**
=======
  /// In en, this message translates to:
  /// **'Product'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderName;

  /// No description provided for @transitGSOrderProductHeaderCatalog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'種類'**
=======
  /// In en, this message translates to:
  /// **'Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderCatalog;

  /// No description provided for @transitGSOrderProductHeaderCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderCount;

  /// No description provided for @transitGSOrderProductHeaderPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單一售價'**
=======
  /// In en, this message translates to:
  /// **'Single Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderPrice;

  /// No description provided for @transitGSOrderProductHeaderCost.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單一成本'**
=======
  /// In en, this message translates to:
  /// **'Single Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderCost;

  /// No description provided for @transitGSOrderProductHeaderOrigin.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單一原價'**
=======
  /// In en, this message translates to:
  /// **'Original Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderProductHeaderOrigin;

  /// No description provided for @transitGSOrderIngredientTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單成分細項'**
=======
  /// In en, this message translates to:
  /// **'Order Ingredient Details'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderIngredientTitle;

  /// No description provided for @transitGSOrderIngredientHeaderTs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'時間戳記'**
=======
  /// In en, this message translates to:
  /// **'Timestamp'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderIngredientHeaderTs;

  /// No description provided for @transitGSOrderIngredientHeaderName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分'**
=======
  /// In en, this message translates to:
  /// **'Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderIngredientHeaderName;

  /// No description provided for @transitGSOrderIngredientHeaderQuantity.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'份量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderIngredientHeaderQuantity;

  /// No description provided for @transitGSOrderIngredientHeaderAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Amount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderIngredientHeaderAmount;

  /// No description provided for @transitGSOrderExpandableHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'詳見下欄'**
=======
  /// In en, this message translates to:
  /// **'See next table'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSOrderExpandableHint;

  /// No description provided for @transitGSErrorCreateSpreadsheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'無法建立試算表'**
=======
  /// In en, this message translates to:
  /// **'Unable to Create Spreadsheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorCreateSpreadsheet;

  /// No description provided for @transitGSErrorCreateSpreadsheetHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'別擔心，通常都可以簡單解決！\n可能的原因有：\n• 網路狀況不穩；\n• 尚未授權 POS 系統進行表單的編輯。'**
=======
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to edit spreadsheets.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorCreateSpreadsheetHelper;

  /// No description provided for @transitGSErrorSpreadsheetEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請先選擇試算表'**
=======
  /// In en, this message translates to:
  /// **'Please Select a Spreadsheet First'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorSpreadsheetEmpty;

  /// No description provided for @transitGSErrorSpreadsheetIdEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'不能為空'**
=======
  /// In en, this message translates to:
  /// **'Cannot be Empty'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorSpreadsheetIdEmpty;

  /// No description provided for @transitGSErrorSpreadsheetIdInvalid.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'不合法的文字，必須包含：\n• /spreadsheets/d/<ID>/\n• 或者直接給 ID（英文+數字+底線+減號的組合）'**
=======
  /// In en, this message translates to:
  /// **'Invalid text. It must include:\n• /spreadsheets/d/<ID>/\n• Or provide the ID directly (combination of letters, numbers, underscores, and hyphens).'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorSpreadsheetIdInvalid;

  /// No description provided for @transitGSErrorCreateSheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'無法在試算表中建立表單'**
=======
  /// In en, this message translates to:
  /// **'Unable to Create Sheet in Spreadsheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorCreateSheet;

  /// No description provided for @transitGSErrorCreateSheetHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'別擔心，通常都可以簡單解決！\n可能的原因有：\n• 網路狀況不穩；\n• 尚未授權 POS 系統進行表單的建立；\n• 試算表 ID 打錯了，請嘗試複製整個網址後貼上；\n• 該試算表被刪除了。'**
=======
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to create sheets;\n• Misspelled spreadsheet ID, try copying the entire URL and pasting it;\n• The spreadsheet has been deleted.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorCreateSheetHelper;

  /// No description provided for @transitGSErrorSheetRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'表單名稱重複'**
=======
  /// In en, this message translates to:
  /// **'Sheet name duplicate'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorSheetRepeat;

  /// No description provided for @transitGSErrorSheetEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請選擇至少一個表單來匯出'**
=======
  /// In en, this message translates to:
  /// **'Please select at least one sheet to export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorSheetEmpty;

  /// No description provided for @transitGSErrorNonExistName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找不到試算表，是否已被刪除？'**
=======
  /// In en, this message translates to:
  /// **'Spreadsheet not found, has it been deleted?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorNonExistName;

  /// No description provided for @transitGSErrorImportEmptySpreadsheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'必須選擇試算表來匯入'**
=======
  /// In en, this message translates to:
  /// **'Must select a spreadsheet to import'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorImportEmptySpreadsheet;

  /// No description provided for @transitGSErrorImportEmptySheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'必須選擇指定的表單來匯入'**
=======
  /// In en, this message translates to:
  /// **'Must select a specific sheet to import'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorImportEmptySheet;

  /// No description provided for @transitGSErrorImportEmptyData.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'在表單中沒找到任何值'**
=======
  /// In en, this message translates to:
  /// **'No values found in sheet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorImportEmptyData;

  /// No description provided for @transitGSErrorImportNotFoundSpreadsheet.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找不到試算表'**
=======
  /// In en, this message translates to:
  /// **'Spreadsheet not found'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorImportNotFoundSpreadsheet;

  /// No description provided for @transitGSErrorImportNotFoundSheets.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找不到表單「{name}」的資料'**
=======
  /// In en, this message translates to:
  /// **'No data found for sheet \"{name}\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitGSErrorImportNotFoundSheets(String name);

  /// No description provided for @transitGSErrorImportNotFoundHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'別擔心，通常都可以簡單解決！\n可能的原因有：\n• 網路狀況不穩；\n• 尚未授權 POS 系統進行表單的讀取；\n• 試算表 ID 打錯了，請嘗試複製整個網址後貼上；\n• 該試算表被刪除了。'**
=======
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to read sheets;\n• Misspelled spreadsheet ID, try copying the entire URL and pasting it;\n• The spreadsheet has been deleted.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitGSErrorImportNotFoundHelper;

  /// No description provided for @transitPTDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'快速檢查、快速分享。'**
=======
  /// In en, this message translates to:
  /// **'Quick check, quick share.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTDescription;

  /// No description provided for @transitPTCopyBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'複製文字'**
=======
  /// In en, this message translates to:
  /// **'Copy Text'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTCopyBtn;

  /// No description provided for @transitPTCopySuccess.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'複製成功'**
=======
  /// In en, this message translates to:
  /// **'Copied successfully'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTCopySuccess;

  /// No description provided for @transitPTCopyWarning.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'複製過大的文字可能會造成系統的崩潰'**
=======
  /// In en, this message translates to:
  /// **'Copying too much text may cause system crash'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTCopyWarning;

  /// No description provided for @transitPTImportHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請貼上複製而來的文字'**
=======
  /// In en, this message translates to:
  /// **'Paste copied text here'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTImportHint;

  /// No description provided for @transitPTImportHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'貼上文字後，會分析文字並決定匯入的是什麼種類的資訊。'**
=======
  /// In en, this message translates to:
  /// **'After pasting the text, it will analyze and determine the type of information to import.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTImportHelper;

  /// No description provided for @transitPTImportErrorNotFound.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這段文字無法匹配相應的服務，請參考匯出時的文字內容。'**
=======
  /// In en, this message translates to:
  /// **'This text cannot match any corresponding service. Please refer to the exported text content.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTImportErrorNotFound;

  /// No description provided for @transitPTFormatOrderPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{hasProducts, plural, =0{共 {price} 元。} other{共 {price} 元，其中的 {productsPrice} 元是產品價錢。}}'**
  String transitPTFormatOrderPrice(
    int hasProducts,
    String price,
    String productsPrice,
  );

  /// No description provided for @transitPTFormatOrderMoney.
  ///
  /// In zh, this message translates to:
  /// **'付額 {paid} 元、成分 {cost} 元。'**
=======
  /// In en, this message translates to:
  /// **'{hasProducts, plural, =0{Total price \${price}.} other{Total price \${price}, {productsPrice} of them are product price.}}'**
  String transitPTFormatOrderPrice(int hasProducts, String price, String productsPrice);

  /// No description provided for @transitPTFormatOrderMoney.
  ///
  /// In en, this message translates to:
  /// **'Paid \${paid}, cost \${cost}.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatOrderMoney(String paid, String cost);

  /// No description provided for @transitPTFormatOrderProductCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count, plural, =0{沒有任何餐點。} =1{餐點有 {count} 份，內容為：\n{products}。} other{餐點有 {count} 份（{setCount} 種組合）包括：\n{products}。}}'**
  String transitPTFormatOrderProductCount(
    int count,
    int setCount,
    String products,
  );

  /// No description provided for @transitPTFormatOrderProduct.
  ///
  /// In zh, this message translates to:
  /// **'{hasIngredient, plural, =0{{product}（{catalog}）{count} 份共 {price} 元，沒有設定成分} other{{product}（{catalog}）{count} 份共 {price} 元，成份包括 {ingredients}}}'**
  String transitPTFormatOrderProduct(
    int hasIngredient,
    String product,
    String catalog,
    int count,
    String price,
    String ingredients,
  );

  /// Details of ingredients and quantities for each product in the order list
  ///
  /// In zh, this message translates to:
  /// **'{amount, plural, =0{{ingredient}（{quantity}）} other{{ingredient}（{quantity}），使用 {amount} 個}}'**
  String transitPTFormatOrderIngredient(
    num amount,
    String ingredient,
    String quantity,
  );

  /// No description provided for @transitPTFormatOrderNoQuantity.
  ///
  /// In zh, this message translates to:
  /// **'預設份量'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =0{There is no product.} =1{There is 1 product details are:\n{products}.} other{There are {count} products ({setCount} types of set) including:\n{products}.}}'**
  String transitPTFormatOrderProductCount(int count, int setCount, String products);

  /// No description provided for @transitPTFormatOrderProduct.
  ///
  /// In en, this message translates to:
  /// **'{hasIngredient, plural, =0{{count} of {product} ({catalog}), total price is \${price}, no ingredient settings} other{{count} of {product} ({catalog}), total price is \${price}, ingredients are {ingredients}}}'**
  String transitPTFormatOrderProduct(int hasIngredient, String product, String catalog, int count, String price, String ingredients);

  /// Details of ingredients and quantities for each product in the order list
  ///
  /// In en, this message translates to:
  /// **'{amount, plural, =0{{ingredient} ({quantity})} other{{ingredient} ({quantity}), used {amount}}}'**
  String transitPTFormatOrderIngredient(num amount, String ingredient, String quantity);

  /// No description provided for @transitPTFormatOrderNoQuantity.
  ///
  /// In en, this message translates to:
  /// **'default quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatOrderNoQuantity;

  /// No description provided for @transitPTFormatOrderOrderAttribute.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客的 {options}'**
=======
  /// In en, this message translates to:
  /// **'Customer\'s {options}.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatOrderOrderAttribute(String options);

  /// No description provided for @transitPTFormatOrderOrderAttributeItem.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name} 為 {option}'**
=======
  /// In en, this message translates to:
  /// **'{name} is {option}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatOrderOrderAttributeItem(String name, String option);

  /// No description provided for @transitPTFormatModelMenuMetaCatalog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 個產品種類'**
=======
  /// In en, this message translates to:
  /// **'{count} categories'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelMenuMetaCatalog(int count);

  /// No description provided for @transitPTFormatModelMenuMetaProduct.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 個產品'**
=======
  /// In en, this message translates to:
  /// **'{count} products'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelMenuMetaProduct(int count);

  /// No description provided for @transitPTFormatModelMenuHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本菜單共有 {catalogs} 個產品種類、{products} 個產品。'**
=======
  /// In en, this message translates to:
  /// **'This menu has {catalogs} categories, {products} products.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelMenuHeader(int catalogs, int products);

  /// This is used to check if this text is a menu
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本菜單'**
=======
  /// In en, this message translates to:
  /// **'This menu has'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelMenuHeaderPrefix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}個種類叫做 {catalog}，{details}。'**
  String transitPTFormatModelMenuCatalog(
    String index,
    String catalog,
    String details,
  );

  /// No description provided for @transitPTFormatModelMenuCatalogDetails.
  ///
  /// In zh, this message translates to:
  /// **'{count, plural, =0{沒有設定產品} other{共有 {count} 個產品}}'**
=======
  /// In en, this message translates to:
  /// **'Category {index} is called {catalog} and {details}.'**
  String transitPTFormatModelMenuCatalog(String index, String catalog, String details);

  /// No description provided for @transitPTFormatModelMenuCatalogDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it has no product} =1{it has one product} other{it has {count} products}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelMenuCatalogDetails(int count);

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}個產品叫做 {name}，其售價為 {price} 元，成本為 {cost} 元，{details}'**
  String transitPTFormatModelMenuProduct(
    String index,
    String name,
    String price,
    String cost,
    String details,
  );

  /// No description provided for @transitPTFormatModelMenuProductDetails.
  ///
  /// In zh, this message translates to:
  /// **'{count, plural, =0{它沒有設定任何成份。} other{它的成份有 {count} 種：{names}。\n每份產品預設需要使用 {details}。}}'**
  String transitPTFormatModelMenuProductDetails(
    int count,
    String names,
    String details,
  );

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In zh, this message translates to:
  /// **'{amount} 個 {name}，{details}'**
  String transitPTFormatModelMenuIngredient(
    String amount,
    String name,
    String details,
  );

  /// No description provided for @transitPTFormatModelMenuIngredientDetails.
  ///
  /// In zh, this message translates to:
  /// **'{count, plural, =0{無法做份量調整} other{它還有 {count} 個不同份量 {quantities}}}'**
  String transitPTFormatModelMenuIngredientDetails(
    int count,
    String quantities,
  );

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In zh, this message translates to:
  /// **'每份產品改成使用 {amount} 個並調整產品售價 {price} 元和成本 {cost} 元'**
  String transitPTFormatModelMenuQuantity(
    String amount,
    String price,
    String cost,
  );

  /// No description provided for @transitPTFormatModelStockMetaIngredient.
  ///
  /// In zh, this message translates to:
  /// **'{count} 種成分'**
=======
  /// In en, this message translates to:
  /// **'Product {index} is called {name}, with price at \${price}, cost \${cost} and {details}'**
  String transitPTFormatModelMenuProduct(String index, String name, String price, String cost, String details);

  /// No description provided for @transitPTFormatModelMenuProductDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it has no ingredient.} =1{it has one ingredient: {names}.\nEach product requires {details}.} other{it has {count} ingredients: {names}.\nEach product requires {details}.}}'**
  String transitPTFormatModelMenuProductDetails(int count, String names, String details);

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'{amount} of {name} and {details}'**
  String transitPTFormatModelMenuIngredient(String amount, String name, String details);

  /// No description provided for @transitPTFormatModelMenuIngredientDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it is unable to adjust quantity} =1{it also has one different quantity {quantities}} other{it also has {count} different quantities {quantities}}}'**
  String transitPTFormatModelMenuIngredientDetails(int count, String quantities);

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'quantity {amount} with additional price \${price} and cost \${cost}'**
  String transitPTFormatModelMenuQuantity(String amount, String price, String cost);

  /// No description provided for @transitPTFormatModelStockMetaIngredient.
  ///
  /// In en, this message translates to:
  /// **'{count} ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelStockMetaIngredient(int count);

  /// No description provided for @transitPTFormatModelStockHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本庫存共有 {count} 種成分。'**
=======
  /// In en, this message translates to:
  /// **'The inventory has {count} ingredients in total.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelStockHeader(int count);

  /// This is used to check if this text is stock
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本庫存'**
=======
  /// In en, this message translates to:
  /// **'The inventory has'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelStockHeaderPrefix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}個成分叫做 {name}，庫存現有 {amount} 個{details}。'**
  String transitPTFormatModelStockIngredient(
    String index,
    String name,
    String amount,
    String details,
  );

  /// String(max) are used so that regex can be inserted here during import to obtain information
  ///
  /// In zh, this message translates to:
  /// **'{exist, plural, =0{} other{，最大量有 {max} 個}}'**
=======
  /// In en, this message translates to:
  /// **'Ingredient at {index} is called {name}, with {amount} amount{details}.'**
  String transitPTFormatModelStockIngredient(String index, String name, String amount, String details);

  /// String(max) are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'{exist, plural, =0{} other{, with a maximum of {max} pieces}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelStockIngredientMaxAmount(int exist, String max);

  /// No description provided for @transitPTFormatModelStockIngredientRestockPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{exist, plural, =0{} other{且每 {quantity} 個成本要價 {price} 元}}'**
  String transitPTFormatModelStockIngredientRestockPrice(
    int exist,
    String quantity,
    String price,
  );

  /// No description provided for @transitPTFormatModelQuantitiesMetaQuantity.
  ///
  /// In zh, this message translates to:
  /// **'{count} 種份量'**
=======
  /// In en, this message translates to:
  /// **'{exist, plural, =0{} other{ and {quantity} units of it cost \${price} to replenish}}'**
  String transitPTFormatModelStockIngredientRestockPrice(int exist, String quantity, String price);

  /// No description provided for @transitPTFormatModelQuantitiesMetaQuantity.
  ///
  /// In en, this message translates to:
  /// **'{count} quantities'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelQuantitiesMetaQuantity(int count);

  /// No description provided for @transitPTFormatModelQuantitiesHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'共設定 {count} 種份量。'**
=======
  /// In en, this message translates to:
  /// **'{count} quantities have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelQuantitiesHeader(int count);

  /// This is used to check if this text is quantities
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'種份量。'**
=======
  /// In en, this message translates to:
  /// **'quantities have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelQuantitiesHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}種份量叫做 {name}，預設會讓成分的份量乘以 {prop} 倍。'**
  String transitPTFormatModelQuantitiesQuantity(
    String index,
    String name,
    String prop,
  );

  /// No description provided for @transitPTFormatModelReplenisherMetaReplenishment.
  ///
  /// In zh, this message translates to:
  /// **'{count} 種補貨方式'**
=======
  /// In en, this message translates to:
  /// **'Quantity at {index} is called {name}, which defaults to multiplying ingredient quantity by {prop}.'**
  String transitPTFormatModelQuantitiesQuantity(String index, String name, String prop);

  /// No description provided for @transitPTFormatModelReplenisherMetaReplenishment.
  ///
  /// In en, this message translates to:
  /// **'{count} replenishment methods'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelReplenisherMetaReplenishment(int count);

  /// No description provided for @transitPTFormatModelReplenisherHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'共設定 {count} 種補貨方式。'**
=======
  /// In en, this message translates to:
  /// **'{count} replenishment methods have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelReplenisherHeader(int count);

  /// This is used to check if this text is replenishment quantity
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'種補貨方式。'**
=======
  /// In en, this message translates to:
  /// **'replenishment methods have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelReplenisherHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}個成分叫做 {name}，{details}。'**
  String transitPTFormatModelReplenisherReplenishment(
    String index,
    String name,
    String details,
  );

  /// No description provided for @transitPTFormatModelReplenisherReplenishmentDetails.
  ///
  /// In zh, this message translates to:
  /// **'{count, plural, =0{它並不會調整庫存} other{它會調整{count}種成份的庫存}}'**
=======
  /// In en, this message translates to:
  /// **'Replenishment method at {index} is called {name}, {details}.'**
  String transitPTFormatModelReplenisherReplenishment(String index, String name, String details);

  /// No description provided for @transitPTFormatModelReplenisherReplenishmentDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it will not adjust inventory} other{it will adjust the inventory of {count} ingredients}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelReplenisherReplenishmentDetails(int count);

  /// No description provided for @transitPTFormatModelOaMetaOa.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 種顧客屬性'**
=======
  /// In en, this message translates to:
  /// **'{count} customer attributes'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelOaMetaOa(int count);

  /// No description provided for @transitPTFormatModelOaHeader.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'共設定 {count} 種顧客屬性。'**
=======
  /// In en, this message translates to:
  /// **'{count} customer attributes have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelOaHeader(int count);

  /// This is used to check if this text is customer settings
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'種顧客屬性。'**
=======
  /// In en, this message translates to:
  /// **'customer attributes have been set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelOaHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'第{index}種屬性叫做 {name}，屬於 {mode} 類型，{details}。'**
  String transitPTFormatModelOaOa(
    String index,
    String name,
    String mode,
    String details,
  );

  /// No description provided for @transitPTFormatModelOaOaDetails.
  ///
  /// In zh, this message translates to:
  /// **'{count, plural, =0{它並沒有設定選項} other{它有 {count} 個選項}}'**
=======
  /// In en, this message translates to:
  /// **'Attribute at {index} is called {name}, belongs to {mode} type, {details}.'**
  String transitPTFormatModelOaOa(String index, String name, String mode, String details);

  /// No description provided for @transitPTFormatModelOaOaDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it has no options} =1{it has one option} other{it has {count} options}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelOaOaDetails(int count);

  /// No description provided for @transitPTFormatModelOaDefaultOption.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設'**
=======
  /// In en, this message translates to:
  /// **'default'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get transitPTFormatModelOaDefaultOption;

  /// No description provided for @transitPTFormatModelOaModeValue.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選項的值為 {value}'**
=======
  /// In en, this message translates to:
  /// **'option value is {value}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String transitPTFormatModelOaModeValue(num value);

  /// No description provided for @appTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'POS 系統'**
=======
  /// In en, this message translates to:
  /// **'POS System'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get appTitle;

  /// Action executed successfully and displayed on the Snackbar.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'執行成功'**
=======
  /// In en, this message translates to:
  /// **'Successful!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get actSuccess;

  /// Error message displayed on the Snackbar when an error occurs.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'錯誤'**
=======
  /// In en, this message translates to:
  /// **'Error'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get actError;

  /// Button on the Snackbar to show more details.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'說明'**
=======
  /// In en, this message translates to:
  /// **'More'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get actMoreInfo;

  /// Reminder to the user that only one option can be selected at a time.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'一次只能選擇一種'**
=======
  /// In en, this message translates to:
  /// **'Select One'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get singleChoice;

  /// Reminder to the user that multiple options can be selected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'可以選擇多種'**
=======
  /// In en, this message translates to:
  /// **'Select Multiple'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get multiChoices;

  /// Total count displayed on the ListView.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count, plural, other{總共 {count} 項}}'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =0{No Items} =1{{count} item} other{{count} items}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String totalCount(int count);

  /// Total count displayed on the SearchScaffold.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋到 {count} 個結果'**
=======
  /// In en, this message translates to:
  /// **'Found {count} results'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String searchCount(int count);

  /// No description provided for @title.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, analysis{分析} stock{庫存} cashier{收銀} settings{設定} menu{菜單} printers{出單機} transit{資料轉移} orderAttributes{顧客設定} stockQuantities{份量} elf{建議} more{更多} debug{Debug} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, analysis{Stats} stock{Inventory} cashier{Cashier} settings{Settings} menu{Menu} printers{Printer} transit{Data Transfer} orderAttributes{Customer Settings} stockQuantities{Quantities} elf{Suggestions} more{More} debug{Debug} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String title(String name);

  /// Title displayed on the DeleteDialog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'刪除確認通知'**
=======
  /// In en, this message translates to:
  /// **'Delete Confirmation'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get dialogDeletionTitle;

  /// Content displayed on the DeleteDialog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'確定要刪除「{name}」嗎？\n\n{more}此動作將無法復原！'**
=======
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{name}\"?\n\n{more}This action cannot be undone!\n'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String dialogDeletionContent(String name, String more);

  /// No description provided for @imageHolderCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點選以新增圖片'**
=======
  /// In en, this message translates to:
  /// **'Tap to add image'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageHolderCreate;

  /// No description provided for @imageHolderUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點擊以更新圖片'**
=======
  /// In en, this message translates to:
  /// **'Click to update image'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageHolderUpdate;

  /// No description provided for @imageBtnCrop.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'裁切'**
=======
  /// In en, this message translates to:
  /// **'Crop'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageBtnCrop;

  /// No description provided for @imageGalleryTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'圖片管理'**
=======
  /// In en, this message translates to:
  /// **'Gallery'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGalleryTitle;

  /// No description provided for @imageGalleryEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點擊開始匯入你的第一張照片！'**
=======
  /// In en, this message translates to:
  /// **'Start importing your first image!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGalleryEmpty;

  /// No description provided for @imageGalleryActionCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增圖片'**
=======
  /// In en, this message translates to:
  /// **'Add Image'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGalleryActionCreate;

  /// No description provided for @imageGalleryActionDelete.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'刪除'**
=======
  /// In en, this message translates to:
  /// **'Delete'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGalleryActionDelete;

  /// No description provided for @imageGallerySnackbarDeleteFailed.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'有一個或多個圖片沒有刪成功。'**
=======
  /// In en, this message translates to:
  /// **'One or more images failed to delete.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGallerySnackbarDeleteFailed;

  /// No description provided for @imageGallerySelectionTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇相片'**
=======
  /// In en, this message translates to:
  /// **'Select Images'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get imageGallerySelectionTitle;

  /// No description provided for @imageGallerySelectionDeleteConfirm.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'將會刪除 {count} 個圖片\n刪除之後會讓相關產品顯示不到圖片'**
=======
  /// In en, this message translates to:
  /// **'Will delete {count} image(s) permanently.\nAfter deletion, the connected product will not able to display the image.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String imageGallerySelectionDeleteConfirm(int count);

  /// Text displayed on EmptyBody, informing the user that there are no items yet. This is the default text.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'哎呀！這裡還是空的'**
=======
  /// In en, this message translates to:
  /// **'Oops! It\'s empty here.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get emptyBodyTitle;

  /// No description provided for @emptyBodyAction.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'立即設定'**
=======
  /// In en, this message translates to:
  /// **'SETUP'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get emptyBodyAction;

  /// Button text to navigate to another screen in trailing.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'查看'**
=======
  /// In en, this message translates to:
  /// **'View'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get btnNavTo;

  /// No description provided for @btnSignInWithGoogle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用 Google 登入'**
=======
  /// In en, this message translates to:
  /// **'Sign in with Google'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get btnSignInWithGoogle;

  /// No description provided for @semanticsPercentileBar.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'目前佔總數的 {percent}'**
=======
  /// In en, this message translates to:
  /// **'Currently {percent} of total'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String semanticsPercentileBar(num percent);

  /// Warning message when the input is not an integer.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}必須是整數'**
=======
  /// In en, this message translates to:
  /// **'{field} must be an integer.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidIntegerType(String field);

  /// Warning message when the input is not a number.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}必須是數字'**
=======
  /// In en, this message translates to:
  /// **'{field} must be a number.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidNumberType(String field);

  /// Warning message when the input is not positive.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}不能為負數'**
=======
  /// In en, this message translates to:
  /// **'{field} cannot be negative.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidNumberPositive(String field);

  /// Warning message when the input exceeds the maximum value.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}不能超過 {maximum}'**
=======
  /// In en, this message translates to:
  /// **'{field} cannot exceed {maximum}.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidNumberMaximum(String field, num maximum);

  /// Warning message when the input is less than the minimum value.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}不能低於 {minimum}'**
=======
  /// In en, this message translates to:
  /// **'{field} cannot be less than {minimum}.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidNumberMinimum(String field, num minimum);

  /// Warning message when no text is entered.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}不能為空'**
=======
  /// In en, this message translates to:
  /// **'{field} cannot be empty.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidStringEmpty(String field);

  /// Warning message when the input exceeds the maximum character limit.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{field}不能超過 {maximum} 個字'**
=======
  /// In en, this message translates to:
  /// **'{field} cannot exceed {maximum} characters.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String invalidStringMaximum(String field, int maximum);

  /// One of the units for calendar period conversion.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單月'**
=======
  /// In en, this message translates to:
  /// **'Single Month'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get singleMonth;

  /// One of the units for calendar period conversion.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單週'**
=======
  /// In en, this message translates to:
  /// **'Single Week'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get singleWeek;

  /// One of the units for calendar period conversion.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'雙週'**
=======
  /// In en, this message translates to:
  /// **'Two Weeks'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get twoWeeks;

  /// No description provided for @orderAttributeTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTitle;

  /// No description provided for @orderAttributeDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'內用、外帶等幫助分析的資訊'**
=======
  /// In en, this message translates to:
  /// **'Information for analysis such as dine-in, takeout, etc.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeDescription;

  /// No description provided for @orderAttributeTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Add Customer Setting'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTitleCreate;

  /// No description provided for @orderAttributeTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Edit Customer Setting'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTitleUpdate;

  /// No description provided for @orderAttributeTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Reorder Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTitleReorder;

  /// No description provided for @orderAttributeEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定可以幫助我們統計哪些人來消費，例如：\n20-30歲、外帶、上班族。'**
=======
  /// In en, this message translates to:
  /// **'Customer settings help us track who comes to consume, such as:\n20-30 years old, takeout, office workers, etc.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeEmptyBody;

  /// Displayed on the upper rectangle in homepage
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeHeaderInfo;

  /// No description provided for @orderAttributeTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建立屬於你的顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Create Your Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTutorialTitle;

  /// No description provided for @orderAttributeTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這裡是用來設定顧客的資訊，例如：內用、外帶、上班族等。\n這些資訊可以幫助我們統計哪些人來消費，進而做出更好的經營策略。'**
=======
  /// In en, this message translates to:
  /// **'This is where you set customer information, such as dine-in, takeout, office worker, etc.\nThis information helps us track who comes to consume and make better business strategies.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTutorialContent;

  /// No description provided for @orderAttributeTutorialCreateExample.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'幫助建立一份範例以供測試。'**
=======
  /// In en, this message translates to:
  /// **'Help create an example to test.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeTutorialCreateExample;

  /// No description provided for @orderAttributeExampleAge.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'年齡'**
=======
  /// In en, this message translates to:
  /// **'Age'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleAge;

  /// No description provided for @orderAttributeExampleAgeChild.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'小孩'**
=======
  /// In en, this message translates to:
  /// **'Child'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleAgeChild;

  /// No description provided for @orderAttributeExampleAgeAdult.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成人'**
=======
  /// In en, this message translates to:
  /// **'Adult'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleAgeAdult;

  /// No description provided for @orderAttributeExampleAgeSenior.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'長者'**
=======
  /// In en, this message translates to:
  /// **'Senior'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleAgeSenior;

  /// No description provided for @orderAttributeExamplePlace.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'位置'**
=======
  /// In en, this message translates to:
  /// **'Place'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExamplePlace;

  /// No description provided for @orderAttributeExamplePlaceTakeout.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'外帶'**
=======
  /// In en, this message translates to:
  /// **'Takeout'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExamplePlaceTakeout;

  /// No description provided for @orderAttributeExamplePlaceDineIn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'內用'**
=======
  /// In en, this message translates to:
  /// **'Dine-in'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExamplePlaceDineIn;

  /// No description provided for @orderAttributeExampleEcoFriendly.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'環保'**
=======
  /// In en, this message translates to:
  /// **'Eco-Friendly'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleEcoFriendly;

  /// No description provided for @orderAttributeExampleEcoFriendlyReusableBottle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'環保杯'**
=======
  /// In en, this message translates to:
  /// **'Reusable Bottle'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleEcoFriendlyReusableBottle;

  /// No description provided for @orderAttributeExampleEcoFriendlyReusableBag.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'環保袋'**
=======
  /// In en, this message translates to:
  /// **'Reusable Bag'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeExampleEcoFriendlyReusableBag;

  /// No description provided for @orderAttributeMetaMode.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'種類：{name}'**
=======
  /// In en, this message translates to:
  /// **'Mode: {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeMetaMode(String name);

  /// No description provided for @orderAttributeMetaDefault.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設：{name}'**
=======
  /// In en, this message translates to:
  /// **'Default: {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeMetaDefault(String name);

  /// No description provided for @orderAttributeMetaNoDefault.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'未設定預設'**
=======
  /// In en, this message translates to:
  /// **'None'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeMetaNoDefault;

  /// No description provided for @orderAttributeModeDivider.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定種類'**
=======
  /// In en, this message translates to:
  /// **'Customer Setting Mode'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeModeDivider;

  /// Customer setting mode name
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, statOnly{一般} changePrice{變價} changeDiscount{折扣} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, statOnly{Normal} changePrice{Price Change} changeDiscount{Discount} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeModeName(String name);

  /// Explanation of customer setting categories
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, statOnly{一般的設定，選取時並不會影響點單價格。} changePrice{選取設定時，可能會影響價格。\n例如：外送 + 30塊錢、環保杯 - 5塊錢。} changeDiscount{選取設定時，會根據折扣影響總價。\n例如：內用 + 10% 服務費、親友價 - 10%。} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, statOnly{Normal setting, selecting won\'t affect the order price.} changePrice{Selecting this setting may affect the order price.\nFor example: Takeout +\$30, Eco Cup -\$5.} changeDiscount{Selecting this setting will affect the total price based on the discount.\nFor example: Dine-in +10% service charge, Friends & Family Discount -10%.} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeModeHelper(String name);

  /// No description provided for @orderAttributeNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定名稱'**
=======
  /// In en, this message translates to:
  /// **'Customer Setting Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeNameLabel;

  /// No description provided for @orderAttributeNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：顧客年齡'**
=======
  /// In en, this message translates to:
  /// **'e.g., Age'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeNameHint;

  /// No description provided for @orderAttributeNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'名稱不能重複'**
=======
  /// In en, this message translates to:
  /// **'Name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeNameErrorRepeat;

  /// No description provided for @orderAttributeOptionTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增選項'**
=======
  /// In en, this message translates to:
  /// **'Add Option'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionTitleCreate;

  /// No description provided for @orderAttributeOptionTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯選項'**
=======
  /// In en, this message translates to:
  /// **'Edit Option'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionTitleUpdate;

  /// No description provided for @orderAttributeOptionTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序選項'**
=======
  /// In en, this message translates to:
  /// **'Reorder Options'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionTitleReorder;

  /// No description provided for @orderAttributeOptionMetaDefault.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設'**
=======
  /// In en, this message translates to:
  /// **'Default'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionMetaDefault;

  /// No description provided for @orderAttributeOptionMetaOptionOf.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name}的選項'**
=======
  /// In en, this message translates to:
  /// **'option of {name}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeOptionMetaOptionOf(String name);

  /// No description provided for @orderAttributeOptionNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選項名稱'**
=======
  /// In en, this message translates to:
  /// **'Option Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionNameLabel;

  /// No description provided for @orderAttributeOptionNameHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'以年齡為例，可能的選項有：\n- ⇣ 20\n- 20 ⇢ 30'**
=======
  /// In en, this message translates to:
  /// **'For \'age\', possible options are:\n- ⇣ 20\n- 20 ⇢ 30'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionNameHelper;

  /// No description provided for @orderAttributeOptionNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'名稱不能重複'**
=======
  /// In en, this message translates to:
  /// **'Name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionNameErrorRepeat;

  /// No description provided for @orderAttributeOptionModeTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選項模式'**
=======
  /// In en, this message translates to:
  /// **'Option Mode'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionModeTitle;

  /// Explanation of mode
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, statOnly{因為本設定為「一般」故無須設定「折價」或「變價」} changePrice{訂單時選擇此項會套用此變價} changeDiscount{訂單時選擇此項會套用此折價} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, statOnly{No need to set \"Discount\" or \"Price Change\" because this setting is \"Normal\"} changePrice{Selecting this option during ordering will apply this price change} changeDiscount{Selecting this option during ordering will apply this discount} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeOptionModeHelper(String name);

  /// No description provided for @orderAttributeOptionModeHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, statOnly{} changePrice{例如：-30 代表減少三十塊} changeDiscount{例如：80 代表「八折」} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, statOnly{} changePrice{For example: -30 means decrease by thirty dollars} changeDiscount{For example: 80 means \"20% off\"} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeOptionModeHint(String name);

  /// No description provided for @orderAttributeOptionToDefaultLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設為預設'**
=======
  /// In en, this message translates to:
  /// **'Set as Default'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionToDefaultLabel;

  /// No description provided for @orderAttributeOptionToDefaultHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設定此選項為預設值，每個訂單預設都會是使用這個選項。'**
=======
  /// In en, this message translates to:
  /// **'Set this option as the default value, which will be used for each order by default.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionToDefaultHelper;

  /// No description provided for @orderAttributeOptionToDefaultConfirmChangeTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'覆蓋選項預設？'**
=======
  /// In en, this message translates to:
  /// **'Override Option Default?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeOptionToDefaultConfirmChangeTitle;

  /// Prompt to ensure the user knows what the original default value was
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這麼做會讓「{name}」變成非預設值'**
=======
  /// In en, this message translates to:
  /// **'Doing this will make \"{name}\" no longer the default value'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderAttributeOptionToDefaultConfirmChangeContent(String name);

  /// No description provided for @orderAttributeValueEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'不影響價錢'**
=======
  /// In en, this message translates to:
  /// **'No price impact'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeValueEmpty;

  /// No description provided for @orderAttributeValueFree.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'免費'**
=======
  /// In en, this message translates to:
  /// **'Free'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderAttributeValueFree;

  /// No description provided for @menuTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'菜單'**
=======
  /// In en, this message translates to:
  /// **'Menu'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuTitle;

  /// No description provided for @menuSubtitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品種類、產品'**
=======
  /// In en, this message translates to:
  /// **'Categories, Products'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuSubtitle;

  /// No description provided for @menuTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'建立屬於你的菜單'**
=======
  /// In en, this message translates to:
  /// **'Create Your Menu'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuTutorialTitle;

  /// No description provided for @menuTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'首先我們來開始建立一份菜單吧！'**
=======
  /// In en, this message translates to:
  /// **'Let\'s start by creating a menu!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuTutorialContent;

  /// No description provided for @menuTutorialCreateExample.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'幫助建立一份範例菜單以供測試。'**
=======
  /// In en, this message translates to:
  /// **'Help create an example menu to test.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuTutorialCreateExample;

  /// No description provided for @menuSearchHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋產品、成分、份量'**
=======
  /// In en, this message translates to:
  /// **'Search for products, ingredients, quantities'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuSearchHint;

  /// No description provided for @menuSearchNotFound.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋不到相關資訊，打錯字了嗎？'**
=======
  /// In en, this message translates to:
  /// **'Couldn\'t find relevant information. Did you misspell something?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuSearchNotFound;

  /// No description provided for @menuExampleCatalogBurger.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'漢堡'**
=======
  /// In en, this message translates to:
  /// **'Burgers'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleCatalogBurger;

  /// No description provided for @menuExampleCatalogDrink.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'飲品'**
=======
  /// In en, this message translates to:
  /// **'Drinks'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleCatalogDrink;

  /// No description provided for @menuExampleCatalogSide.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點心'**
=======
  /// In en, this message translates to:
  /// **'Side'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleCatalogSide;

  /// No description provided for @menuExampleCatalogOther.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'其他'**
=======
  /// In en, this message translates to:
  /// **'Others'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleCatalogOther;

  /// No description provided for @menuExampleProductCheeseBurger.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'起司漢堡'**
=======
  /// In en, this message translates to:
  /// **'Cheese Burger'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductCheeseBurger;

  /// No description provided for @menuExampleProductVeggieBurger.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'蔬菜漢堡'**
=======
  /// In en, this message translates to:
  /// **'Veggie Burger'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductVeggieBurger;

  /// No description provided for @menuExampleProductHamBurger.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'火腿漢堡'**
=======
  /// In en, this message translates to:
  /// **'Ham Burger'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductHamBurger;

  /// No description provided for @menuExampleProductCola.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'可樂'**
=======
  /// In en, this message translates to:
  /// **'Cola'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductCola;

  /// No description provided for @menuExampleProductCoffee.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'咖啡'**
=======
  /// In en, this message translates to:
  /// **'Coffee'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductCoffee;

  /// No description provided for @menuExampleProductFries.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'薯條'**
=======
  /// In en, this message translates to:
  /// **'Fries'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductFries;

  /// No description provided for @menuExampleProductStraw.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'吸管'**
=======
  /// In en, this message translates to:
  /// **'Straw'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductStraw;

  /// No description provided for @menuExampleProductPlasticBag.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'塑膠袋'**
=======
  /// In en, this message translates to:
  /// **'Plastic Bag'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleProductPlasticBag;

  /// No description provided for @menuExampleIngredientCheese.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'起司'**
=======
  /// In en, this message translates to:
  /// **'Cheese'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientCheese;

  /// No description provided for @menuExampleIngredientLettuce.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'萵苣'**
=======
  /// In en, this message translates to:
  /// **'Lettuce'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientLettuce;

  /// No description provided for @menuExampleIngredientTomato.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'番茄'**
=======
  /// In en, this message translates to:
  /// **'Tomato'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientTomato;

  /// No description provided for @menuExampleIngredientBun.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'麵包'**
=======
  /// In en, this message translates to:
  /// **'Bun'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientBun;

  /// No description provided for @menuExampleIngredientChili.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'辣醬'**
=======
  /// In en, this message translates to:
  /// **'Chili Sauce'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientChili;

  /// No description provided for @menuExampleIngredientHam.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'火腿'**
=======
  /// In en, this message translates to:
  /// **'Ham'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientHam;

  /// No description provided for @menuExampleIngredientCola.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'可樂'**
=======
  /// In en, this message translates to:
  /// **'Can of Cola'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientCola;

  /// No description provided for @menuExampleIngredientCoffee.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'濾掛咖啡包'**
=======
  /// In en, this message translates to:
  /// **'Drip Coffee'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientCoffee;

  /// No description provided for @menuExampleIngredientFries.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'薯條'**
=======
  /// In en, this message translates to:
  /// **'Bag of Fries'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientFries;

  /// No description provided for @menuExampleIngredientStraw.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'吸管'**
=======
  /// In en, this message translates to:
  /// **'Straw'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientStraw;

  /// No description provided for @menuExampleIngredientPlasticBag.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'塑膠袋'**
=======
  /// In en, this message translates to:
  /// **'Plastic Bag'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleIngredientPlasticBag;

  /// No description provided for @menuExampleQuantitySmall.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'少量'**
=======
  /// In en, this message translates to:
  /// **'Small'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleQuantitySmall;

  /// No description provided for @menuExampleQuantityLarge.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'增量'**
=======
  /// In en, this message translates to:
  /// **'Large'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleQuantityLarge;

  /// No description provided for @menuExampleQuantityNone.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'無'**
=======
  /// In en, this message translates to:
  /// **'None'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuExampleQuantityNone;

  /// No description provided for @menuCatalogEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'我們會把相似「產品」放在「產品種類」中，\n到時候點餐會比較方便，例如：\n• 「起司漢堡」、「蔬菜漢堡」整合進「漢堡」\n• 「塑膠袋」、「環保杯」整合進「其他」'**
=======
  /// In en, this message translates to:
  /// **'Similar products will be grouped under categories,\nmaking ordering convenient, such as:\n• \"Cheese Burger\", \"Veggie Burger\" > \"Burgers\"\n• \"Plastic Bag\", \"Eco Cup\" > \"Others\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogEmptyBody;

  /// FloatingActionButton description on the menu page
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增產品種類'**
=======
  /// In en, this message translates to:
  /// **'Add Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogTitleCreate;

  /// No description provided for @menuCatalogTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯產品種類'**
=======
  /// In en, this message translates to:
  /// **'Edit Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogTitleUpdate;

  /// No description provided for @menuCatalogTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序產品種類'**
=======
  /// In en, this message translates to:
  /// **'Reorder Categories'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogTitleReorder;

  /// Warning message when deleting product categories on the menu page
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count, plural, =0{其內無任何產品} other{將會一同刪除掉 {count} 個產品}}'**
=======
  /// In en, this message translates to:
  /// **'{count, plural, =0{No products inside} =1{Will also delete {count} related product} other{Will also delete {count} related products}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuCatalogDialogDeletionContent(int count);

  /// No description provided for @menuCatalogNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品種類名稱'**
=======
  /// In en, this message translates to:
  /// **'Category Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogNameLabel;

  /// No description provided for @menuCatalogNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：漢堡'**
=======
  /// In en, this message translates to:
  /// **'e.g., Burgers'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogNameHint;

  /// No description provided for @menuCatalogNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'名稱重複了，請改個名字吧！'**
=======
  /// In en, this message translates to:
  /// **'Name already exists. Please choose a different name!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogNameErrorRepeat;

  /// No description provided for @menuCatalogEmptyProducts.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定產品'**
=======
  /// In en, this message translates to:
  /// **'No products set yet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuCatalogEmptyProducts;

  /// Displayed on the upper rectangle in homepage
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品'**
=======
  /// In en, this message translates to:
  /// **'Products'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductHeaderInfo;

  /// No description provided for @menuProductEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'「產品」是菜單裡的基本單位，例如：\n「起司漢堡」、「可樂」'**
=======
  /// In en, this message translates to:
  /// **'\"Products\" are the basic units in the menu, such as:\n\"Cheese Burger\", \"Cola\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductEmptyBody;

  /// When not selecting a category, the product list will not be displayed. This message will be displayed in the product list
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請先選擇產品種類'**
=======
  /// In en, this message translates to:
  /// **'Please select a category first'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductNotSelected;

  /// No description provided for @menuProductTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增產品'**
=======
  /// In en, this message translates to:
  /// **'Add Product'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductTitleCreate;

  /// No description provided for @menuProductTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯產品'**
=======
  /// In en, this message translates to:
  /// **'Edit Product'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductTitleUpdate;

  /// No description provided for @menuProductTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序產品'**
=======
  /// In en, this message translates to:
  /// **'Reorder Products'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductTitleReorder;

  /// No description provided for @menuProductTitleUpdateImage.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'更新照片'**
=======
  /// In en, this message translates to:
  /// **'Update Photo'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductTitleUpdateImage;

  /// Prefix for meta, so users know this is product meta info, not category
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品'**
=======
  /// In en, this message translates to:
  /// **'Product'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductMetaTitle;

  /// Price of the product
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'價格：{price}'**
=======
  /// In en, this message translates to:
  /// **'Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuProductMetaPrice(num price);

  /// Cost of the product
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成本：{cost}'**
=======
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuProductMetaCost(num cost);

  /// Text displayed in the subtitle in the product list
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定成分'**
=======
  /// In en, this message translates to:
  /// **'No ingredients set'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductMetaEmpty;

  /// No description provided for @menuProductNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品名稱'**
=======
  /// In en, this message translates to:
  /// **'Product Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductNameLabel;

  /// No description provided for @menuProductNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：起司漢堡'**
=======
  /// In en, this message translates to:
  /// **'e.g., Cheeseburger'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductNameHint;

  /// No description provided for @menuProductNameErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品名稱重複'**
=======
  /// In en, this message translates to:
  /// **'Product name already exists'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductNameErrorRepeat;

  /// No description provided for @menuProductPriceLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品價格'**
=======
  /// In en, this message translates to:
  /// **'Product Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductPriceLabel;

  /// No description provided for @menuProductPriceHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單頁面會呈現的價錢'**
=======
  /// In en, this message translates to:
  /// **'Price displayed on the order page'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductPriceHelper;

  /// No description provided for @menuProductCostLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品成本'**
=======
  /// In en, this message translates to:
  /// **'Product Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductCostLabel;

  /// No description provided for @menuProductCostHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'用來算出利潤，理應小於價錢'**
=======
  /// In en, this message translates to:
  /// **'Used to calculate profit, should be less than the price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductCostHelper;

  /// No description provided for @menuProductEmptyIngredients.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定成分'**
=======
  /// In en, this message translates to:
  /// **'No ingredients set yet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuProductEmptyIngredients;

  /// No description provided for @menuIngredientEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'你可以在產品中設定成分等資訊，例如：\n「起司漢堡」有「起司」、「麵包」等成分'**
=======
  /// In en, this message translates to:
  /// **'You can set ingredients for the product, such as:\n\"Cheeseburger\" with \"Cheese\", \"Bun\" as ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientEmptyBody;

  /// No description provided for @menuIngredientTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分'**
=======
  /// In en, this message translates to:
  /// **'Add Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientTitleCreate;

  /// No description provided for @menuIngredientTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯成分'**
=======
  /// In en, this message translates to:
  /// **'Edit Ingredient'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientTitleUpdate;

  /// No description provided for @menuIngredientTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序成分'**
=======
  /// In en, this message translates to:
  /// **'Reorder Ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientTitleReorder;

  /// No description provided for @menuIngredientMetaAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用量：{amount}'**
=======
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuIngredientMetaAmount(num amount);

  /// No description provided for @menuIngredientSearchLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋成分'**
=======
  /// In en, this message translates to:
  /// **'Search Ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientSearchLabel;

  /// No description provided for @menuIngredientSearchHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分後，可至「庫存」設定相關資訊。'**
=======
  /// In en, this message translates to:
  /// **'After adding ingredient, you can set related information in \"Inventory\".'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientSearchHelper;

  /// No description provided for @menuIngredientSearchHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：起司'**
=======
  /// In en, this message translates to:
  /// **'e.g., Cheese'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientSearchHint;

  /// Button to add ingredient if search result not found
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分「{name}」'**
=======
  /// In en, this message translates to:
  /// **'Add Ingredient \"{name}\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuIngredientSearchAdd(String name);

  /// No description provided for @menuIngredientSearchErrorEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'必須設定成分，請點選以設定。'**
=======
  /// In en, this message translates to:
  /// **'Ingredient must be set, please click to set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientSearchErrorEmpty;

  /// No description provided for @menuIngredientSearchErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品已經有相同的成分了，不能重複選取。'**
=======
  /// In en, this message translates to:
  /// **'Product already has the same ingredient, cannot select repeatedly.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientSearchErrorRepeat;

  /// No description provided for @menuIngredientAmountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用量'**
=======
  /// In en, this message translates to:
  /// **'Amount Used'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientAmountLabel;

  /// No description provided for @menuIngredientAmountHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設的使用量，若餐點可以調整該成分的使用量，請於成分的「份量」中設定。'**
=======
  /// In en, this message translates to:
  /// **'Default amount used.\nIf customers are able to adjust the amount,\nset different quantities in \"Quantity.\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuIngredientAmountHelper;

  /// No description provided for @menuQuantityTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增份量'**
=======
  /// In en, this message translates to:
  /// **'Add Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityTitleCreate;

  /// No description provided for @menuQuantityTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯'**
=======
  /// In en, this message translates to:
  /// **'Edit'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityTitleUpdate;

  /// No description provided for @menuQuantityMetaAmount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用量：{amount}'**
=======
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuQuantityMetaAmount(num amount);

  /// No description provided for @menuQuantityMetaAdditionalPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'額外售價：{price}'**
=======
  /// In en, this message translates to:
  /// **'Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuQuantityMetaAdditionalPrice(String price);

  /// No description provided for @menuQuantityMetaAdditionalCost.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'額外成本：{cost}'**
=======
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuQuantityMetaAdditionalCost(String cost);

  /// No description provided for @menuQuantitySearchLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'搜尋份量'**
=======
  /// In en, this message translates to:
  /// **'Search Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantitySearchLabel;

  /// No description provided for @menuQuantitySearchHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增成分份量後，可至「份量」設定相關資訊。'**
=======
  /// In en, this message translates to:
  /// **'After adding ingredient quantity, you can set related information in \"Quantity\".'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantitySearchHelper;

  /// No description provided for @menuQuantitySearchHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：多量、少量'**
=======
  /// In en, this message translates to:
  /// **'e.g., Large, Small'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantitySearchHint;

  /// Button to add quantity if search result not found
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增份量「{name}」'**
=======
  /// In en, this message translates to:
  /// **'Add Quantity \"{name}\"'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String menuQuantitySearchAdd(String name);

  /// No description provided for @menuQuantitySearchErrorEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'必須設定份量，請點選以設定。'**
=======
  /// In en, this message translates to:
  /// **'Quantity must be set, please click to set.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantitySearchErrorEmpty;

  /// No description provided for @menuQuantitySearchErrorRepeat.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品已經有相同的份量了，不能重複選取。'**
=======
  /// In en, this message translates to:
  /// **'Product already has the same quantity, cannot select repeatedly.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantitySearchErrorRepeat;

  /// No description provided for @menuQuantityAmountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'使用量'**
=======
  /// In en, this message translates to:
  /// **'Amount Used'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityAmountLabel;

  /// No description provided for @menuQuantityAdditionalPriceLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'額外售價'**
=======
  /// In en, this message translates to:
  /// **'Additional Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityAdditionalPriceLabel;

  /// No description provided for @menuQuantityAdditionalPriceHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設為 0 則代表加量（減量）不加價。'**
=======
  /// In en, this message translates to:
  /// **'Set to 0 to indicate no additional charge for extra (or less) quantity.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityAdditionalPriceHelper;

  /// No description provided for @menuQuantityAdditionalCostLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'額外成本'**
=======
  /// In en, this message translates to:
  /// **'Additional Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityAdditionalCostLabel;

  /// No description provided for @menuQuantityAdditionalCostHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預額外成本可以為負數，如「少量」會減少成分的使用，相對成本降低。'**
=======
  /// In en, this message translates to:
  /// **'Additional cost can be negative, e.g., \"Less\" reduces ingredient usage, reducing cost accordingly.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get menuQuantityAdditionalCostHelper;

  /// No description provided for @cashierTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀'**
=======
  /// In en, this message translates to:
  /// **'Cashier'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierTab;

  /// No description provided for @cashierUnitLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'幣值：{unit}'**
  String cashierUnitLabel(String unit);

  /// 設定幣值數量時的標籤
  ///
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'\${unit}'**
  String cashierUnitLabel(String unit);

  /// Label when setting currency quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierCounterLabel;

  /// No description provided for @cashierToDefaultTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'設為預設'**
=======
  /// In en, this message translates to:
  /// **'Set as Default'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierToDefaultTitle;

  /// No description provided for @cashierToDefaultTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀機預設狀態'**
=======
  /// In en, this message translates to:
  /// **'Cash Register Default Status'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierToDefaultTutorialTitle;

  /// No description provided for @cashierToDefaultTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'在下面設定完收銀機各幣值的數量後，\n按這裡設定預設狀態！\n設定好的數量就會是各個幣值狀態條的「最大值」。'**
=======
  /// In en, this message translates to:
  /// **'After setting the quantities of various currencies below,\nclick here to set the default status!\nThe set quantities will be the \"maximum\" for each currency status bar.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierToDefaultTutorialContent;

  /// No description provided for @cashierToDefaultDialogTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'調整收銀臺預設？'**
=======
  /// In en, this message translates to:
  /// **'Adjust Cash Register Default?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierToDefaultDialogTitle;

  /// No description provided for @cashierToDefaultDialogContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這將會把目前的收銀機狀態設定為預設狀態。\n此動作將會覆蓋掉先前的設定。'**
=======
  /// In en, this message translates to:
  /// **'This will set the current cash register status as the default status.\nThis action will override previous settings.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierToDefaultDialogContent;

  /// No description provided for @cashierChangerTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'換錢'**
=======
  /// In en, this message translates to:
  /// **'Changer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerTitle;

  /// No description provided for @cashierChangerButton.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'套用'**
=======
  /// In en, this message translates to:
  /// **'Apply'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerButton;

  /// No description provided for @cashierChangerTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀機換錢'**
=======
  /// In en, this message translates to:
  /// **'Cash Register Money Changer'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerTutorialTitle;

  /// No description provided for @cashierChangerTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'一百塊換成 10 個十塊之類。\n幫助快速調整收銀機狀態。'**
=======
  /// In en, this message translates to:
  /// **'Exchange one hundred for 10 tens, for example.\nHelps to quickly adjust the cash register status.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerTutorialContent;

  /// No description provided for @cashierChangerErrorNoSelection.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請選擇要套用的組合'**
=======
  /// In en, this message translates to:
  /// **'Please select a combination to apply'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerErrorNoSelection;

  /// No description provided for @cashierChangerErrorNotEnough.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{unit} 元不夠換'**
=======
  /// In en, this message translates to:
  /// **'Not enough \${unit}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierChangerErrorNotEnough(String unit);

  /// No description provided for @cashierChangerErrorInvalidHead.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 個 {unit} 元沒辦法換'**
=======
  /// In en, this message translates to:
  /// **'Cannot exchange {count} of \${unit} to'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierChangerErrorInvalidHead(int count, String unit);

  /// Concatenated multiple lines after `invalidHead` to form a complete sentence.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 個 {unit} 元'**
=======
  /// In en, this message translates to:
  /// **'{count} of \${unit}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierChangerErrorInvalidBody(int count, String unit);

  /// No description provided for @cashierChangerFavoriteTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'常用'**
=======
  /// In en, this message translates to:
  /// **'Favorites'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerFavoriteTab;

  /// No description provided for @cashierChangerFavoriteHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選完後請點選「套用」來使用該組合'**
=======
  /// In en, this message translates to:
  /// **'After selecting, please click \"Apply\" to use the combination.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerFavoriteHint;

  /// No description provided for @cashierChangerFavoriteEmptyBody.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這裡可以幫助你快速轉換不同幣值'**
=======
  /// In en, this message translates to:
  /// **'Here can help you quickly convert different currencies.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerFavoriteEmptyBody;

  /// No description provided for @cashierChangerFavoriteItemFrom.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'用 {count} 個 {unit} 元換'**
=======
  /// In en, this message translates to:
  /// **'Exchange {count} of \${unit} to'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierChangerFavoriteItemFrom(int count, String unit);

  /// No description provided for @cashierChangerFavoriteItemTo.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{count} 個 {unit} 元'**
=======
  /// In en, this message translates to:
  /// **'{count} of \${unit}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierChangerFavoriteItemTo(int count, String unit);

  /// No description provided for @cashierChangerCustomTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'自訂'**
=======
  /// In en, this message translates to:
  /// **'Custom'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomTab;

  /// No description provided for @cashierChangerCustomAddBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增常用'**
=======
  /// In en, this message translates to:
  /// **'Add Favorite'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomAddBtn;

  /// No description provided for @cashierChangerCustomCountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomCountLabel;

  /// No description provided for @cashierChangerCustomUnitLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'幣值'**
=======
  /// In en, this message translates to:
  /// **'Currency'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomUnitLabel;

  /// No description provided for @cashierChangerCustomUnitAddBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增幣種'**
=======
  /// In en, this message translates to:
  /// **'Add Currency'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomUnitAddBtn;

  /// No description provided for @cashierChangerCustomDividerFrom.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'拿'**
=======
  /// In en, this message translates to:
  /// **'Take'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomDividerFrom;

  /// No description provided for @cashierChangerCustomDividerTo.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'換'**
=======
  /// In en, this message translates to:
  /// **'Exchange to'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierChangerCustomDividerTo;

  /// No description provided for @cashierSurplusTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結餘'**
=======
  /// In en, this message translates to:
  /// **'Surplus'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusTitle;

  /// No description provided for @cashierSurplusButton.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結餘'**
=======
  /// In en, this message translates to:
  /// **'Surplus'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusButton;

  /// No description provided for @cashierSurplusTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'每日結餘'**
=======
  /// In en, this message translates to:
  /// **'Daily Surplus'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusTutorialTitle;

  /// No description provided for @cashierSurplusTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結餘可以幫助我們在每天打烊時，\n計算現有金額和預設金額的差異。'**
=======
  /// In en, this message translates to:
  /// **'Surplus helps us at the end of each day,\ncalculate the difference between the current amount and the default amount.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusTutorialContent;

  /// No description provided for @cashierSurplusErrorEmptyDefault.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定預設狀態'**
=======
  /// In en, this message translates to:
  /// **'Default status not set yet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusErrorEmptyDefault;

  /// No description provided for @cashierSurplusTableHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'若你確認收銀機的金錢都沒問題之後就可以完成結餘囉！'**
=======
  /// In en, this message translates to:
  /// **'Once you confirm that there are no issues with the cash register money, you can complete the surplus!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusTableHint;

  /// No description provided for @cashierSurplusColumnName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, unit{單位} currentCount{現有} diffCount{差異} defaultCount{預設} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, unit{Unit} currentCount{Current} diffCount{Difference} defaultCount{Default} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierSurplusColumnName(String name);

  /// Allow users to customize currency when surplus.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'幣值{unit}的數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity of \${unit}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String cashierSurplusCounterLabel(String unit);

  /// This is for display in error messages, e.g., "Quantity cannot be 0".
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusCounterShortLabel;

  /// No description provided for @cashierSurplusCurrentTotalLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'現有總額'**
=======
  /// In en, this message translates to:
  /// **'Current Total'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusCurrentTotalLabel;

  /// No description provided for @cashierSurplusCurrentTotalHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'現在收銀機應該要有的總額。\n若你發現現金和這值對不上，想一想今天有沒有用收銀機的錢買東西？'**
=======
  /// In en, this message translates to:
  /// **'The total amount the cash register should have now.\nIf you find that the cash and this value don\'t match, think about whether you used the cash register to buy something today?'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusCurrentTotalHelper;

  /// No description provided for @cashierSurplusDiffTotalLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'差額'**
=======
  /// In en, this message translates to:
  /// **'Difference'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusDiffTotalLabel;

  /// No description provided for @cashierSurplusDiffTotalHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'和收銀機最一開始的總額的差額。\n這可以快速幫你了解今天收銀機多了多少錢唷。'**
=======
  /// In en, this message translates to:
  /// **'The difference from the total amount of the cash register at the very beginning.\nThis can quickly help you understand how much money the cash register has gained today.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get cashierSurplusDiffTotalHelper;

  /// No description provided for @orderTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點餐'**
=======
  /// In en, this message translates to:
  /// **'Ordering'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderTitle;

  /// No description provided for @orderBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'點餐'**
=======
  /// In en, this message translates to:
  /// **'Order'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderBtn;

  /// No description provided for @orderTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'開始點餐！'**
=======
  /// In en, this message translates to:
  /// **'Ordering!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderTutorialTitle;

  /// No description provided for @orderTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'一旦設定好菜單，就可以開始點餐囉\n讓我們趕緊進去看看有什麼吧！\n'**
=======
  /// In en, this message translates to:
  /// **'Once you have set up your menu, you can start ordering!\nLet\'s tap and go see what\'s available!\n'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderTutorialContent;

  /// No description provided for @orderTutorialPrinterBtnTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機異動'**
=======
  /// In en, this message translates to:
  /// **'Printer Status Change'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderTutorialPrinterBtnTitle;

  /// No description provided for @orderTutorialPrinterBtnContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機狀態出現異動，請查看。'**
=======
  /// In en, this message translates to:
  /// **'Printer status has changed, please check.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderTutorialPrinterBtnContent;

  /// No description provided for @orderSnackbarPrinterConnected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機連線成功：{names}'**
=======
  /// In en, this message translates to:
  /// **'Printer connected: {names}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderSnackbarPrinterConnected(String names);

  /// No description provided for @orderSnackbarPrinterDisconnected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'出單機「{name}」斷線'**
=======
  /// In en, this message translates to:
  /// **'Printer \"{name}\" disconnected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderSnackbarPrinterDisconnected(String name);

  /// No description provided for @orderSnackbarCashierNotEnough.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀機錢不夠找囉！'**
=======
  /// In en, this message translates to:
  /// **'Insufficient cash in the cashier!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderSnackbarCashierNotEnough;

  /// No description provided for @orderSnackbarCashierUsingSmallMoney.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'收銀機使用小錢去找零'**
=======
  /// In en, this message translates to:
  /// **'Using smaller denominations to give change'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderSnackbarCashierUsingSmallMoney;

  /// No description provided for @orderSnackbarCashierUsingSmallMoneyHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找錢給顧客時，收銀機無法使用最適合的錢，就會顯示這個訊息。\n\n例如，售價「65」，消費者支付「100」，此時應找「35」\n如果收銀機只有兩個十元，且有三個以上的五元，就會顯示本訊息。\n\n怎麼避免本提示：\n• 到換錢頁面把各幣值補足。\n• 到[設定頁]({link})關閉收銀機的相關提示。'**
=======
  /// In en, this message translates to:
  /// **'When giving change to customers, if the cashier doesn\'t have the appropriate denominations, this message will appear.\n\nFor example, if the total is \$65 and the customer pays \$100, the change should be \$35.\nIf the cashier only has two \$10 bills and more than three \$5 bills, this message will appear.\n\nTo avoid this prompt:\n• Go to the changer page and top up various denominations.\n• Go to the [settings page]({link}) to disable related prompts from the cashier.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderSnackbarCashierUsingSmallMoneyHelper(String link);

  /// Proceed to the next step after confirming the items in your cart
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結帳'**
=======
  /// In en, this message translates to:
  /// **'Checkout'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderActionCheckout;

  /// No description provided for @orderActionExchange.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'換錢'**
=======
  /// In en, this message translates to:
  /// **'Exchange'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderActionExchange;

  /// No description provided for @orderActionStash.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'暫存本次點餐'**
=======
  /// In en, this message translates to:
  /// **'Stash'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderActionStash;

  /// No description provided for @orderActionReview.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單記錄'**
=======
  /// In en, this message translates to:
  /// **'Order History'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderActionReview;

  /// Total revenue from orders in the order list
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總營收：{revenue}'**
=======
  /// In en, this message translates to:
  /// **'Revenue: {revenue}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderLoaderMetaTotalRevenue(String revenue);

  /// Total cost from orders in the order list
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總成本：{cost}'**
=======
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderLoaderMetaTotalCost(String cost);

  /// Total number of orders in the order list
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總數：{count}'**
=======
  /// In en, this message translates to:
  /// **'Count: {count}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderLoaderMetaTotalCount(int count);

  /// No description provided for @orderLoaderEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'查無點餐紀錄'**
=======
  /// In en, this message translates to:
  /// **'No order records found'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderLoaderEmpty;

  /// No description provided for @orderCatalogListEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定產品種類'**
=======
  /// In en, this message translates to:
  /// **'No product categories set yet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCatalogListEmpty;

  /// Product list display mode
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, grid{圖片} list{列表} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, grid{Grid} list{List} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderProductListViewHelper(String name);

  /// No description provided for @orderProductListNoIngredient.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'無設定成分'**
=======
  /// In en, this message translates to:
  /// **'No ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderProductListNoIngredient;

  /// No description provided for @orderPrinterEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未設定出單機'**
=======
  /// In en, this message translates to:
  /// **'No printers set yet'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderPrinterEmpty;

  /// No description provided for @orderPrinterDividerUnused.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'未使用'**
=======
  /// In en, this message translates to:
  /// **'Unused'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderPrinterDividerUnused;

  /// No description provided for @orderPrinterDividerConnecting.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'連線中'**
=======
  /// In en, this message translates to:
  /// **'Connecting'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderPrinterDividerConnecting;

  /// No description provided for @orderPrinterDividerConnected.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'已連線'**
=======
  /// In en, this message translates to:
  /// **'Connected'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderPrinterDividerConnected;

  /// No description provided for @orderPrinterErrorCreateReceipt.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'無法產生出單資料'**
=======
  /// In en, this message translates to:
  /// **'Unable to generate receipt'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderPrinterErrorCreateReceipt;

  /// No description provided for @orderCartActionBulk.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'批量操作'**
=======
  /// In en, this message translates to:
  /// **'Bulk Actions'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionBulk;

  /// No description provided for @orderCartActionToggle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'反選'**
=======
  /// In en, this message translates to:
  /// **'Toggle'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionToggle;

  /// No description provided for @orderCartActionSelectAll.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'全選'**
=======
  /// In en, this message translates to:
  /// **'Select All'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionSelectAll;

  /// No description provided for @orderCartActionDiscount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'打折'**
=======
  /// In en, this message translates to:
  /// **'Discount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDiscount;

  /// No description provided for @orderCartActionDiscountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'折扣'**
=======
  /// In en, this message translates to:
  /// **'Discount'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDiscountLabel;

  /// No description provided for @orderCartActionDiscountHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：50，代表打五折（半價）'**
=======
  /// In en, this message translates to:
  /// **'e.g., 30 means 70% off'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDiscountHint;

  /// No description provided for @orderCartActionDiscountHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'這裡的數字代表「折」，即，85 代表 85 折，總價乘 0.85。若需要準確的價錢請用「變價」。'**
=======
  /// In en, this message translates to:
  /// **'The number here represents the \"percentage\" off, i.e., 85 means 15% off. For precise prices, use \"Price Change\".'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDiscountHelper;

  /// No description provided for @orderCartActionDiscountSuffix.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'折'**
=======
  /// In en, this message translates to:
  /// **'%'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDiscountSuffix;

  /// No description provided for @orderCartActionChangePrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'變價'**
=======
  /// In en, this message translates to:
  /// **'Change Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangePrice;

  /// No description provided for @orderCartActionChangePriceLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'價錢'**
=======
  /// In en, this message translates to:
  /// **'Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangePriceLabel;

  /// No description provided for @orderCartActionChangePriceHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'每項產品的價錢'**
=======
  /// In en, this message translates to:
  /// **'Price per item'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangePriceHint;

  /// No description provided for @orderCartActionChangePricePrefix.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **''**
=======
  /// In en, this message translates to:
  /// **'\$'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangePricePrefix;

  /// No description provided for @orderCartActionChangePriceSuffix.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'元'**
=======
  /// In en, this message translates to:
  /// **''**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangePriceSuffix;

  /// No description provided for @orderCartActionChangeCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'變更數量'**
=======
  /// In en, this message translates to:
  /// **'Change Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangeCount;

  /// No description provided for @orderCartActionChangeCountLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangeCountLabel;

  /// No description provided for @orderCartActionChangeCountHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品數量'**
=======
  /// In en, this message translates to:
  /// **'Quantity of items'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangeCountHint;

  /// No description provided for @orderCartActionChangeCountSuffix.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'個'**
=======
  /// In en, this message translates to:
  /// **'items'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionChangeCountSuffix;

  /// No description provided for @orderCartActionFree.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'招待'**
=======
  /// In en, this message translates to:
  /// **'Free'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionFree;

  /// No description provided for @orderCartActionDelete.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'刪除'**
=======
  /// In en, this message translates to:
  /// **'Delete'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartActionDelete;

  /// No description provided for @orderCartSnapshotEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'尚未點餐'**
=======
  /// In en, this message translates to:
  /// **'No items in cart'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartSnapshotEmpty;

  /// Total price of items in the cart
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價：{price}'**
=======
  /// In en, this message translates to:
  /// **'Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartMetaTotalPrice(String price);

  /// Total number of items in the cart
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總數：{count}'**
=======
  /// In en, this message translates to:
  /// **'Count: {count}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartMetaTotalCount(int count);

  /// Price of the product
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{price, select, 0{免費} other{{price}元}}'**
=======
  /// In en, this message translates to:
  /// **'{price, select, 0{Free} other{\${price}}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartProductPrice(String price);

  /// No description provided for @orderCartProductIncrease.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'數量加一'**
=======
  /// In en, this message translates to:
  /// **'Increase Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartProductIncrease;

  /// No description provided for @orderCartProductDefaultQuantity.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設份量'**
=======
  /// In en, this message translates to:
  /// **'Default Quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartProductDefaultQuantity;

  /// Ingredients and quantities of each item in the product list when ordering
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name}（{quantity}）'**
=======
  /// In en, this message translates to:
  /// **'{name} ({quantity})'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartProductIngredient(String name, String quantity);

  /// Prompt to users during ordering if the selected product doesn't require ingredient settings
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{status, select, emptyCart{請選擇產品來設定其成分} differentProducts{請選擇相同的產品來設定其成分} noNeedIngredient{這個產品沒有可以設定的成分} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{status, select, emptyCart{Please select a product to set its ingredients} differentProducts{Please select the same product to set its ingredients} noNeedIngredient{This product doesn\'t require ingredient settings} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartIngredientStatus(String status);

  /// During ordering, select the ingredient to set the quantity
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請選擇成分來設定份量'**
=======
  /// In en, this message translates to:
  /// **'Please select an ingredient to set quantity'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCartQuantityNotAble;

  /// No description provided for @orderCartQuantityLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name}（{amount}）'**
=======
  /// In en, this message translates to:
  /// **'{name} ({amount})'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartQuantityLabel(String name, num amount);

  /// During ingredient setup, the quantity can be customized or set to default (no quantity used)
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設值（{amount}）'**
=======
  /// In en, this message translates to:
  /// **'Default ({amount})'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCartQuantityDefaultLabel(num amount);

  /// No description provided for @orderCheckoutEmptyCart.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請先進行點單。'**
=======
  /// In en, this message translates to:
  /// **'Please make an order first.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutEmptyCart;

  /// No description provided for @orderCheckoutActionStash.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'暫存'**
=======
  /// In en, this message translates to:
  /// **'Stash'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutActionStash;

  /// No description provided for @orderCheckoutActionConfirm.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'確認'**
=======
  /// In en, this message translates to:
  /// **'Confirm'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutActionConfirm;

  /// No description provided for @orderCheckoutStashTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'暫存'**
=======
  /// In en, this message translates to:
  /// **'Stash'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashTab;

  /// No description provided for @orderCheckoutStashEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'目前無任何暫存餐點。'**
=======
  /// In en, this message translates to:
  /// **'No items currently stashed.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashEmpty;

  /// No description provided for @orderCheckoutStashNoProducts.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'沒有任何產品'**
=======
  /// In en, this message translates to:
  /// **'No products'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashNoProducts;

  /// No description provided for @orderCheckoutStashActionCheckout.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結帳'**
=======
  /// In en, this message translates to:
  /// **'Checkout'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashActionCheckout;

  /// No description provided for @orderCheckoutStashActionRestore.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'還原'**
=======
  /// In en, this message translates to:
  /// **'Restore'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashActionRestore;

  /// No description provided for @orderCheckoutStashDialogCalculator.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'結帳計算機'**
=======
  /// In en, this message translates to:
  /// **'Checkout Calculator'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashDialogCalculator;

  /// No description provided for @orderCheckoutStashDialogRestoreTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'還原暫存訂單'**
=======
  /// In en, this message translates to:
  /// **'Restore Stashed Order'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashDialogRestoreTitle;

  /// No description provided for @orderCheckoutStashDialogRestoreContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'此動作將會覆蓋掉現在購物車內的訂單。'**
=======
  /// In en, this message translates to:
  /// **'This action will override the current cart contents.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashDialogRestoreContent;

  /// No description provided for @orderCheckoutStashDialogDeleteName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單'**
=======
  /// In en, this message translates to:
  /// **'order'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutStashDialogDeleteName;

  /// No description provided for @orderCheckoutAttributeTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定'**
  String get orderCheckoutAttributeTab;

  /// No description provided for @orderCheckoutAttributeNoteTitle.
  ///
  /// In zh, this message translates to:
  /// **'備註'**
  String get orderCheckoutAttributeNoteTitle;

  /// No description provided for @orderCheckoutAttributeNoteHint.
  ///
  /// In zh, this message translates to:
  /// **'一些關於此訂單的說明'**
  String get orderCheckoutAttributeNoteHint;

  /// No description provided for @orderCheckoutDetailsTab.
  ///
  /// In zh, this message translates to:
  /// **'訂單細項'**
=======
  /// In en, this message translates to:
  /// **'Customer'**
  String get orderCheckoutAttributeTab;

  /// No description provided for @orderCheckoutDetailsTab.
  ///
  /// In en, this message translates to:
  /// **'Details'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutDetailsTab;

  /// No description provided for @orderCheckoutDetailsCalculatorLabelPaid.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額'**
=======
  /// In en, this message translates to:
  /// **'Paid'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutDetailsCalculatorLabelPaid;

  /// No description provided for @orderCheckoutDetailsCalculatorLabelChange.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找錢'**
=======
  /// In en, this message translates to:
  /// **'Change'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutDetailsCalculatorLabelChange;

  /// Change given by the cashier after the customer's payment
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找錢：{change}'**
=======
  /// In en, this message translates to:
  /// **'Change: {change}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderCheckoutDetailsSnapshotLabelChange(String change);

  /// No description provided for @orderCheckoutSnackbarPaidFailed.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額小於訂單總價，無法結帳。'**
=======
  /// In en, this message translates to:
  /// **'Payment is less than the order amount.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderCheckoutSnackbarPaidFailed;

  /// No description provided for @orderObjectViewEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'查無點餐紀錄'**
=======
  /// In en, this message translates to:
  /// **'No order records found'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewEmpty;

  /// No description provided for @orderObjectViewChange.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找錢'**
=======
  /// In en, this message translates to:
  /// **'Change'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewChange;

  /// Total price information after ordering
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單總價：{price}'**
=======
  /// In en, this message translates to:
  /// **'Total Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String orderObjectViewPriceTotal(String price);

  /// No description provided for @orderObjectViewPriceProducts.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品總價'**
=======
  /// In en, this message translates to:
  /// **'Product Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewPriceProducts;

  /// No description provided for @orderObjectViewPriceAttributes.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定總價'**
=======
  /// In en, this message translates to:
  /// **'Customer Settings Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewPriceAttributes;

  /// No description provided for @orderObjectViewCost.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成本'**
=======
  /// In en, this message translates to:
  /// **'Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewCost;

  /// No description provided for @orderObjectViewProfit.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'淨利'**
=======
  /// In en, this message translates to:
  /// **'Profit'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProfit;

  /// No description provided for @orderObjectViewPaid.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額'**
=======
  /// In en, this message translates to:
  /// **'Paid'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewPaid;

  /// No description provided for @orderObjectViewNote.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'備註'**
=======
  /// In en, this message translates to:
  /// **'Note'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewNote;

  /// No description provided for @orderObjectViewDividerAttribute.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'顧客設定'**
=======
  /// In en, this message translates to:
  /// **'Customer Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewDividerAttribute;

  /// No description provided for @orderObjectViewDividerProduct.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品資訊'**
=======
  /// In en, this message translates to:
  /// **'Product Information'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewDividerProduct;

  /// No description provided for @orderObjectViewProductPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總價'**
=======
  /// In en, this message translates to:
  /// **'Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductPrice;

  /// No description provided for @orderObjectViewProductCost.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總成本'**
=======
  /// In en, this message translates to:
  /// **'Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductCost;

  /// No description provided for @orderObjectViewProductCount.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'總數'**
=======
  /// In en, this message translates to:
  /// **'Count'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductCount;

  /// No description provided for @orderObjectViewProductSinglePrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'單價'**
=======
  /// In en, this message translates to:
  /// **'Unit Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductSinglePrice;

  /// No description provided for @orderObjectViewProductOriginalPrice.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'折扣前單價'**
=======
  /// In en, this message translates to:
  /// **'Original Unit Price'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductOriginalPrice;

  /// No description provided for @orderObjectViewProductCatalog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'產品種類'**
=======
  /// In en, this message translates to:
  /// **'Product Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductCatalog;

  /// No description provided for @orderObjectViewProductIngredient.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成分'**
=======
  /// In en, this message translates to:
  /// **'Ingredients'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductIngredient;

  /// No description provided for @orderObjectViewProductDefaultQuantity.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'預設'**
=======
  /// In en, this message translates to:
  /// **'Default'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get orderObjectViewProductDefaultQuantity;

  /// No description provided for @analysisTab.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'統計'**
=======
  /// In en, this message translates to:
  /// **'Stats'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisTab;

  /// No description provided for @analysisHistoryBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'紀錄'**
=======
  /// In en, this message translates to:
  /// **'Records'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryBtn;

  /// No description provided for @analysisHistoryTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單記錄'**
=======
  /// In en, this message translates to:
  /// **'Order Records'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryTitle;

  /// No description provided for @analysisHistoryTitleEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'查無點餐紀錄'**
=======
  /// In en, this message translates to:
  /// **'No Order History Found'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryTitleEmpty;

  /// No description provided for @analysisHistoryCalendarTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'日曆'**
=======
  /// In en, this message translates to:
  /// **'Calendar'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryCalendarTutorialTitle;

  /// No description provided for @analysisHistoryCalendarTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'上下滑動可以調整週期單位，如月或週。\n左右滑動可以調整日期起訖。'**
=======
  /// In en, this message translates to:
  /// **'Swipe up and down to adjust the time period, such as month or week.\nSwipe left and right to adjust the date range.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryCalendarTutorialContent;

  /// No description provided for @analysisHistoryExportBtn.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'匯出'**
=======
  /// In en, this message translates to:
  /// **'Export'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryExportBtn;

  /// No description provided for @analysisHistoryExportTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單資料匯出'**
=======
  /// In en, this message translates to:
  /// **'Export Orders Data'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryExportTutorialTitle;

  /// No description provided for @analysisHistoryExportTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'把訂單匯出到外部，讓你可以做進一步分析或保存。\n你可以到「資料轉移」去匯出多日訂單。'**
=======
  /// In en, this message translates to:
  /// **'Export orders externally for further analysis or backup.\nYou can export multi-day orders in the \"Transit\" page.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryExportTutorialContent;

  /// Order ID for specific order in the order list.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編號：{id}'**
=======
  /// In en, this message translates to:
  /// **'ID: {id}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderListMetaId(String id);

  /// Price of specific orders in the order list.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'售價：{price}'**
=======
  /// In en, this message translates to:
  /// **'Price: {price}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderListMetaPrice(num price);

  /// Payment amount for specific orders in the order list.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'付額：{paid}'**
=======
  /// In en, this message translates to:
  /// **'Paid: {paid}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderListMetaPaid(num paid);

  /// Net profit for specific orders in the order list.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'淨利：{profit}'**
=======
  /// In en, this message translates to:
  /// **'Profit: {profit}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderListMetaProfit(num profit);

  /// Order ID for specific order in the order detailed page.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編號：{id}'**
=======
  /// In en, this message translates to:
  /// **'ID: {id}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderTitle(String id);

  /// No description provided for @analysisHistoryOrderNotFound.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'找不到相關訂單'**
=======
  /// In en, this message translates to:
  /// **'No relevant orders found'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisHistoryOrderNotFound;

  /// No description provided for @analysisHistoryOrderDeleteDialog.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'確定要刪除 {name} 的訂單嗎？\n將不會復原收銀機和庫存資料。\n此動作無法復原。'**
=======
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the order for {name}?\nCash register and inventory data cannot be recovered.\nThis action cannot be undone.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisHistoryOrderDeleteDialog(String name);

  /// No description provided for @analysisGoalsTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本日總結'**
=======
  /// In en, this message translates to:
  /// **'Today\'s Summary'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsTitle;

  /// No description provided for @analysisGoalsCountTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單數'**
=======
  /// In en, this message translates to:
  /// **'Order Count'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsCountTitle;

  /// No description provided for @analysisGoalsCountDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'訂單數反映了產品對顧客的吸引力。\n它代表了市場對你產品的需求程度，能幫助你了解何種產品或時段最受歡迎。\n高訂單數可能意味著你的定價策略或行銷活動取得成功，是商業模型有效性的指標之一。\n但要注意，單純追求高訂單數可能會忽略盈利能力。'**
=======
  /// In en, this message translates to:
  /// **'The order count reflects the attractiveness of products to customers.\nIt represents the demand for your products in the market and helps you understand which products or time periods are most popular.\nA high order count may indicate the success of your pricing strategy or marketing activities and is one of the indicators of business model effectiveness.\nHowever, it\'s essential to note that simply pursuing a high order count may overlook profitability.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsCountDescription;

  /// No description provided for @analysisGoalsRevenueTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'營收'**
=======
  /// In en, this message translates to:
  /// **'Revenue'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsRevenueTitle;

  /// No description provided for @analysisGoalsRevenueDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'營收代表總銷售額，是業務規模的指標。\n高營收可能顯示了你的產品受歡迎且銷售良好，但營收無法反映出業務的可持續性和盈利能力。\n有時候，為了提高營收，公司可能會採取降價等策略，這可能會對公司的盈利能力造成影響。'**
=======
  /// In en, this message translates to:
  /// **'Revenue represents the total sales amount and is an indicator of business scale.\nHigh revenue may indicate that your products are popular and selling well, but revenue alone cannot reflect the sustainability and profitability of the business.\nSometimes, to increase revenue, companies may adopt strategies such as price reductions, which may affect profitability.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsRevenueDescription;

  /// No description provided for @analysisGoalsProfitTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'淨利'**
=======
  /// In en, this message translates to:
  /// **'Profit'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsProfitTitle;

  /// No description provided for @analysisGoalsProfitDescription.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'淨利是營業收入減去營業成本後的餘額，是公司能否持續經營的關鍵。\n盈利直接反映了營運效率和成本管理能力。\n不同於營收，盈利考慮了生意的開支，包括原料成本、人力、租金等，\n這是一個更實際的指標，能幫助你評估經營是否有效且可持續。'**
=======
  /// In en, this message translates to:
  /// **'Profit is the balance after deducting operating costs from operating income and is crucial for the company\'s ongoing operations.\nProfit directly reflects operational efficiency and cost management capabilities.\nUnlike revenue, profit considers the business expenses, including raw material costs, labor, rent, etc.\nIt\'s a more practical indicator that helps you evaluate the effectiveness and sustainability of operations.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsProfitDescription;

  /// No description provided for @analysisGoalsCostTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'成本'**
=======
  /// In en, this message translates to:
  /// **'Cost'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisGoalsCostTitle;

  /// No description provided for @analysisGoalsAchievedRate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'利潤達成\n{rate}'**
=======
  /// In en, this message translates to:
  /// **'Profit Goal\n{rate}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisGoalsAchievedRate(String rate);

  /// No description provided for @analysisChartTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'圖表分析'**
=======
  /// In en, this message translates to:
  /// **'Chart Analysis'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTitle;

  /// No description provided for @analysisChartTitleCreate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'新增圖表'**
=======
  /// In en, this message translates to:
  /// **'Create Chart'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTitleCreate;

  /// No description provided for @analysisChartTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯圖表'**
=======
  /// In en, this message translates to:
  /// **'Edit Chart'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTitleUpdate;

  /// No description provided for @analysisChartTitleReorder.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'排序圖表'**
=======
  /// In en, this message translates to:
  /// **'Reorder Charts'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTitleReorder;

  /// No description provided for @analysisChartTutorialTitle.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'圖表分析'**
=======
  /// In en, this message translates to:
  /// **'Chart Analysis'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTutorialTitle;

  /// No description provided for @analysisChartTutorialContent.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'透過圖表，你可以更直觀地看到數據變化。\n現在就開始設計圖表追蹤你的銷售狀況吧！。'**
=======
  /// In en, this message translates to:
  /// **'With charts, you can visualize data changes more intuitively.\nStart designing charts to track your sales performance now!'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartTutorialContent;

  /// No description provided for @analysisChartCardEmptyData.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'沒有資料'**
=======
  /// In en, this message translates to:
  /// **'No Data'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartCardEmptyData;

  /// No description provided for @analysisChartCardTitleUpdate.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'編輯圖表'**
=======
  /// In en, this message translates to:
  /// **'Edit Chart'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartCardTitleUpdate;

  /// No description provided for @analysisChartMetricName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, revenue{營收} cost{成本} profit{淨利} count{數量} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, revenue{Revenue} cost{Cost} profit{Profit} count{Quantity} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisChartMetricName(String name);

  /// No description provided for @analysisChartTargetName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, order{訂單} catalog{產品種類} product{產品} ingredient{成分} attribute{顧客屬性} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, order{Order} catalog{Category} product{Product} ingredient{Ingredient} attribute{Attribute} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisChartTargetName(String name);

  /// No description provided for @analysisChartRangeYesterday.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'昨天'**
=======
  /// In en, this message translates to:
  /// **'Yesterday'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeYesterday;

  /// No description provided for @analysisChartRangeToday.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'今天'**
=======
  /// In en, this message translates to:
  /// **'Today'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeToday;

  /// No description provided for @analysisChartRangeLastWeek.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'上週'**
=======
  /// In en, this message translates to:
  /// **'Last Week'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeLastWeek;

  /// No description provided for @analysisChartRangeThisWeek.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本週'**
=======
  /// In en, this message translates to:
  /// **'This Week'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeThisWeek;

  /// No description provided for @analysisChartRangeLast7Days.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'最近7日'**
=======
  /// In en, this message translates to:
  /// **'Last 7 Days'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeLast7Days;

  /// No description provided for @analysisChartRangeLastMonth.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'上月'**
=======
  /// In en, this message translates to:
  /// **'Last Month'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeLastMonth;

  /// No description provided for @analysisChartRangeThisMonth.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'本月'**
=======
  /// In en, this message translates to:
  /// **'This Month'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeThisMonth;

  /// No description provided for @analysisChartRangeLast30Days.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'最近30日'**
=======
  /// In en, this message translates to:
  /// **'Last 30 Days'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartRangeLast30Days;

  /// No description provided for @analysisChartRangeTabName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, day{日期} week{週} month{月} custom{自訂} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, day{Date} week{Week} month{Month} custom{Custom} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisChartRangeTabName(String name);

  /// No description provided for @analysisChartModalNameLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'圖表名稱'**
=======
  /// In en, this message translates to:
  /// **'Chart Name'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalNameLabel;

  /// No description provided for @analysisChartModalNameHint.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'例如：每日營收'**
=======
  /// In en, this message translates to:
  /// **'For example: Daily Revenue'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalNameHint;

  /// No description provided for @analysisChartModalIgnoreEmptyLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'忽略空資料'**
=======
  /// In en, this message translates to:
  /// **'Ignore Empty Data'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalIgnoreEmptyLabel;

  /// No description provided for @analysisChartModalIgnoreEmptyHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'某商品或指標在該時段沒有資料，則不顯示。'**
=======
  /// In en, this message translates to:
  /// **'Do not display if a product or metric has no data for that period.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalIgnoreEmptyHelper;

  /// No description provided for @analysisChartModalDivider.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'資料設定'**
=======
  /// In en, this message translates to:
  /// **'Data Settings'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalDivider;

  /// No description provided for @analysisChartModalTypeLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'圖表類型'**
=======
  /// In en, this message translates to:
  /// **'Chart Type'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTypeLabel;

  /// No description provided for @analysisChartModalTypeName.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'{name, select, cartesian{時序圖} circular{圓餅圖} other{UNKNOWN}}'**
=======
  /// In en, this message translates to:
  /// **'{name, select, cartesian{Time Series Chart} circular{Pie Chart} other{UNKNOWN}}'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String analysisChartModalTypeName(String name);

  /// No description provided for @analysisChartModalMetricLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'觀看指標'**
=======
  /// In en, this message translates to:
  /// **'Metrics to View'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalMetricLabel;

  /// No description provided for @analysisChartModalMetricHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'根據不同目的，選擇不同指標類型。'**
=======
  /// In en, this message translates to:
  /// **'Choose different types of metrics based on your objectives.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalMetricHelper;

  /// No description provided for @analysisChartModalTargetLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'項目種類'**
=======
  /// In en, this message translates to:
  /// **'Item Category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTargetLabel;

  /// No description provided for @analysisChartModalTargetHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'選擇圖表中要針對哪些資訊做分析。'**
=======
  /// In en, this message translates to:
  /// **'Select the information to analyze in the chart.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTargetHelper;

  /// No description provided for @analysisChartModalTargetErrorEmpty.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'請選擇一個項目種類'**
=======
  /// In en, this message translates to:
  /// **'Please select an item category'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTargetErrorEmpty;

  /// No description provided for @analysisChartModalTargetItemLabel.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'項目選擇'**
=======
  /// In en, this message translates to:
  /// **'Item Selection'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTargetItemLabel;

  /// No description provided for @analysisChartModalTargetItemHelper.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'你想要觀察哪些項目的變化，例如區間內某商品的數量。'**
=======
  /// In en, this message translates to:
  /// **'Choose the items you want to observe, such as the quantity of a specific product within a certain period.'**
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  String get analysisChartModalTargetItemHelper;

  /// No description provided for @analysisChartModalTargetItemSelectAll.
  ///
<<<<<<< HEAD
  /// In zh, this message translates to:
  /// **'全選'**
  String get analysisChartModalTargetItemSelectAll;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
=======
  /// In en, this message translates to:
  /// **'Select All'**
  String get analysisChartModalTargetItemSelectAll;

  get orderCheckoutAttributeNoteHint => null;

  String get orderCheckoutAttributeNoteTitle => 'Order Note';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
<<<<<<< HEAD
    return lookupAppLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);
=======
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

<<<<<<< HEAD
Future<AppLocalizations> lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return app_localizations_en.loadLibrary().then(
        (dynamic _) => app_localizations_en.AppLocalizationsEn(),
      );
    case 'zh':
      return app_localizations_zh.loadLibrary().then(
        (dynamic _) => app_localizations_zh.AppLocalizationsZh(),
      );
=======
AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
<<<<<<< HEAD
    'that was used.',
=======
    'that was used.'
>>>>>>> e07ed3f5bba02f677bebb989a7ee35cc18d7451a
  );
}
