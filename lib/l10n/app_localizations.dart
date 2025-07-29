import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @settingTab.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingTab;

  /// Display the app version
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String settingVersion(String version);

  /// Display user's name
  ///
  /// In en, this message translates to:
  /// **'Hi, {name}'**
  String settingWelcome(String name);

  /// No description provided for @settingLogoutBtn.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get settingLogoutBtn;

  /// No description provided for @settingElfTitle.
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get settingElfTitle;

  /// No description provided for @settingElfDescription.
  ///
  /// In en, this message translates to:
  /// **'Provide feedback using Google Forms'**
  String get settingElfDescription;

  /// No description provided for @settingElfContent.
  ///
  /// In en, this message translates to:
  /// **'Feel like something\'s missing here?\nFeel free to [give suggestions](https://forms.gle/s8V5SXuqhA1u3zmt7).\nYou can also check out [upcoming features](https://github.com/evan361425/flutter-pos-system/milestones).'**
  String get settingElfContent;

  /// No description provided for @settingFeatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Other Settings'**
  String get settingFeatureTitle;

  /// No description provided for @settingFeatureDescription.
  ///
  /// In en, this message translates to:
  /// **'Appearance, Language, Tips'**
  String get settingFeatureDescription;

  /// No description provided for @settingThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingThemeTitle;

  /// Appearance of the app
  ///
  /// In en, this message translates to:
  /// **'{name, select, dark{Dark Mode} light{Light Mode} system{Follow System} other{UNKNOWN}}'**
  String settingThemeName(String name);

  /// No description provided for @settingLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingLanguageTitle;

  /// No description provided for @settingCheckoutWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Cash Registry Warnings'**
  String get settingCheckoutWarningTitle;

  /// Whether to display cash registry warnings
  ///
  /// In en, this message translates to:
  /// **'{name, select, showAll{Show All} onlyNotEnough{Show Only When Not Enough} hideAll{Hide All} other{UNKNOWN}}'**
  String settingCheckoutWarningName(String name);

  /// No description provided for @settingCheckoutWarningTip.
  ///
  /// In en, this message translates to:
  /// **'{name, select, showAll{Show warning when using smaller denominations to give change.\nFor example, if \$5 is not enough, start using 5 \$1 bills for change.} onlyNotEnough{Show warning when cash registry not enough money.} hideAll{Won\'t display any warnings during ordering.} other{UNKNOWN}}'**
  String settingCheckoutWarningTip(String name);

  /// Keep the screen on during ordering, even when idle
  ///
  /// In en, this message translates to:
  /// **'Keep Screen On During Ordering'**
  String get settingOrderAwakeningTitle;

  /// No description provided for @settingOrderAwakeningDescription.
  ///
  /// In en, this message translates to:
  /// **'If disabled, the screen will turn off based on system settings during ordering.'**
  String get settingOrderAwakeningDescription;

  /// No description provided for @settingReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Collect Error Messages and Events'**
  String get settingReportTitle;

  /// No description provided for @settingReportDescription.
  ///
  /// In en, this message translates to:
  /// **'Send error messages when the app encounters issues, helping the app improve'**
  String get settingReportDescription;

  /// No description provided for @stockTab.
  ///
  /// In en, this message translates to:
  /// **'Inventory'**
  String get stockTab;

  /// No description provided for @stockUpdatedAt.
  ///
  /// In en, this message translates to:
  /// **'Last Purchased: {updatedAt}'**
  String stockUpdatedAt(DateTime updatedAt);

  /// No description provided for @stockIngredientEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Once ingredients are added, you can start tracking their inventory!'**
  String get stockIngredientEmptyBody;

  /// No description provided for @stockIngredientTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Ingredient'**
  String get stockIngredientTitleCreate;

  /// No description provided for @stockIngredientTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Ingredient'**
  String get stockIngredientTitleUpdate;

  /// No description provided for @stockIngredientTitleUpdateAmount.
  ///
  /// In en, this message translates to:
  /// **'Edit Inventory'**
  String get stockIngredientTitleUpdateAmount;

  /// No description provided for @stockIngredientTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Ingredient'**
  String get stockIngredientTutorialTitle;

  /// No description provided for @stockIngredientTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Ingredients help us track product inventory.\n\nYou can add ingredients in \"Menu\"\nand then manage inventory here.'**
  String get stockIngredientTutorialContent;

  /// Indicates how many products will be affected when deleting the ingredient
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No products currently use this ingredient} other{Deleting this ingredient will also remove it from {count} products}}'**
  String stockIngredientDialogDeletionContent(int count);

  /// When editing an ingredient, it indicates how many products are using it and allows for navigation to the product page
  ///
  /// In en, this message translates to:
  /// **'{count} products using it'**
  String stockIngredientProductsCount(int count);

  /// No description provided for @stockIngredientNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Ingredient Name'**
  String get stockIngredientNameLabel;

  /// No description provided for @stockIngredientNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Cheese'**
  String get stockIngredientNameHint;

  /// No description provided for @stockIngredientNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Ingredient name already exists'**
  String get stockIngredientNameErrorRepeat;

  /// No description provided for @stockIngredientAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Current Amount'**
  String get stockIngredientAmountLabel;

  /// No description provided for @stockIngredientAmountMaxLabel.
  ///
  /// In en, this message translates to:
  /// **'Maximum Amount'**
  String get stockIngredientAmountMaxLabel;

  /// No description provided for @stockIngredientAmountMaxHelper.
  ///
  /// In en, this message translates to:
  /// **'Setting this value helps you see how much of the ingredient is being used.\nLeave blank or don\'t fill it in, and the value will automatically be set each time inventory is increased.'**
  String get stockIngredientAmountMaxHelper;

  /// No description provided for @stockIngredientRestockTitle.
  ///
  /// In en, this message translates to:
  /// **'The amount of ingredient you can restock each time.\nFor example, if 30 units of cheese cost 100 dollars,\nfill in \"30\" for \"Restock Unit\" and \"100\" for \"Restock Price.\"\n\nThis helps you quickly restock by price.'**
  String get stockIngredientRestockTitle;

  /// No description provided for @stockIngredientRestockPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Restock Price'**
  String get stockIngredientRestockPriceLabel;

  /// No description provided for @stockIngredientRestockQuantityLabel.
  ///
  /// In en, this message translates to:
  /// **'Restock Unit'**
  String get stockIngredientRestockQuantityLabel;

  /// Headline of the dialog for setting the restock price
  ///
  /// In en, this message translates to:
  /// **'Each {quantity} costs {price} dollars'**
  String stockIngredientRestockDialogTitle(String quantity, String price);

  /// Helper text to remind users to enter the purchase price
  ///
  /// In en, this message translates to:
  /// **'Please enter the purchase price'**
  String get stockIngredientRestockDialogSubtitle;

  /// No description provided for @stockIngredientRestockDialogQuantityTab.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get stockIngredientRestockDialogQuantityTab;

  /// No description provided for @stockIngredientRestockDialogQuantityBtn.
  ///
  /// In en, this message translates to:
  /// **'Use Quantity'**
  String get stockIngredientRestockDialogQuantityBtn;

  /// No description provided for @stockIngredientRestockDialogQuantityLabel.
  ///
  /// In en, this message translates to:
  /// **'Current Amount'**
  String get stockIngredientRestockDialogQuantityLabel;

  /// Auxiliary text used for quickly increasing inventory
  ///
  /// In en, this message translates to:
  /// **'If Maximum Amount is not set, every time increase the amount will be considered as the Maximum Amount'**
  String get stockIngredientRestockDialogQuantityHelper;

  /// No description provided for @stockIngredientRestockDialogPriceTab.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get stockIngredientRestockDialogPriceTab;

  /// No description provided for @stockIngredientRestockDialogPriceBtn.
  ///
  /// In en, this message translates to:
  /// **'Use Price'**
  String get stockIngredientRestockDialogPriceBtn;

  /// No description provided for @stockIngredientRestockDialogPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get stockIngredientRestockDialogPriceLabel;

  /// No description provided for @stockIngredientRestockDialogPriceEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Set the restock price first to calculate the amount directly from the price.\n'**
  String get stockIngredientRestockDialogPriceEmptyBody;

  /// The original amount before the restock
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get stockIngredientRestockDialogPriceOldAmount;

  /// No description provided for @stockReplenishmentButton.
  ///
  /// In en, this message translates to:
  /// **'Replenish'**
  String get stockReplenishmentButton;

  /// No description provided for @stockReplenishmentEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Purchasing helps you quickly adjust ingredient inventory'**
  String get stockReplenishmentEmptyBody;

  /// No description provided for @stockReplenishmentTitleList.
  ///
  /// In en, this message translates to:
  /// **'Replenishment'**
  String get stockReplenishmentTitleList;

  /// No description provided for @stockReplenishmentTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Replenishment'**
  String get stockReplenishmentTitleCreate;

  /// No description provided for @stockReplenishmentTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Replenishment'**
  String get stockReplenishmentTitleUpdate;

  /// Indicates in the replenishment list how many ingredients are affected
  ///
  /// In en, this message translates to:
  /// **'Affects {count} Ingredients'**
  String stockReplenishmentMetaAffect(int count);

  /// The stock page displays the last replenishment time; if never replenished, this text is set
  ///
  /// In en, this message translates to:
  /// **'Never Replenished'**
  String get stockReplenishmentNever;

  /// No description provided for @stockReplenishmentApplyPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get stockReplenishmentApplyPreview;

  /// No description provided for @stockReplenishmentApplyConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get stockReplenishmentApplyConfirmButton;

  /// No description provided for @stockReplenishmentApplyConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Apply Replenishment?'**
  String get stockReplenishmentApplyConfirmTitle;

  /// No description provided for @stockReplenishmentApplyConfirmColumn.
  ///
  /// In en, this message translates to:
  /// **'{value, select, name{Name} amount{Amount} other{UNKNOWN}}'**
  String stockReplenishmentApplyConfirmColumn(String value);

  /// No description provided for @stockReplenishmentApplyConfirmHint.
  ///
  /// In en, this message translates to:
  /// **'After apply, following ingredients will be adjusted'**
  String get stockReplenishmentApplyConfirmHint;

  /// No description provided for @stockReplenishmentTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Replenishment'**
  String get stockReplenishmentTutorialTitle;

  /// No description provided for @stockReplenishmentTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Through Replenishment, you no longer need to set the inventory of each ingredient one by one.\nSet up Replenishment now and adjust multiple ingredients at once!'**
  String get stockReplenishmentTutorialContent;

  /// No description provided for @stockReplenishmentNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Replenishment Name'**
  String get stockReplenishmentNameLabel;

  /// No description provided for @stockReplenishmentNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Costco Shopping'**
  String get stockReplenishmentNameHint;

  /// No description provided for @stockReplenishmentNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Replenishment name already exists'**
  String get stockReplenishmentNameErrorRepeat;

  /// No description provided for @stockReplenishmentIngredientsDivider.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get stockReplenishmentIngredientsDivider;

  /// No description provided for @stockReplenishmentIngredientsHelper.
  ///
  /// In en, this message translates to:
  /// **'Click to set the quantity of different ingredients to be purchased'**
  String get stockReplenishmentIngredientsHelper;

  /// No description provided for @stockReplenishmentIngredientAmountHint.
  ///
  /// In en, this message translates to:
  /// **'Set the amount to increase/decrease'**
  String get stockReplenishmentIngredientAmountHint;

  /// No description provided for @stockQuantityTitle.
  ///
  /// In en, this message translates to:
  /// **'Quantities'**
  String get stockQuantityTitle;

  /// No description provided for @stockQuantityDescription.
  ///
  /// In en, this message translates to:
  /// **'Half Sugar, Low Sugar, etc.'**
  String get stockQuantityDescription;

  /// No description provided for @stockQuantityTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Quantity'**
  String get stockQuantityTitleCreate;

  /// No description provided for @stockQuantityTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Quantity'**
  String get stockQuantityTitleUpdate;

  /// No description provided for @stockQuantityEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Quantity allows for quick adjustments to the amount of ingredients, such as:\nHalf Sugar, Low Sugar.'**
  String get stockQuantityEmptyBody;

  /// Text explaining default ratios in subheadings of quantity items
  ///
  /// In en, this message translates to:
  /// **'Default Ratio: {proportion}'**
  String stockQuantityMetaProportion(num proportion);

  /// Indicates how many product ingredients will be affected when deleting the quantity
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No product ingredients currently use this quantity} other{Deleting this quantity will also remove it from {count} product ingredients}}'**
  String stockQuantityDialogDeletionContent(int count);

  /// No description provided for @stockQuantityNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Quantity Name'**
  String get stockQuantityNameLabel;

  /// No description provided for @stockQuantityNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Small or Large'**
  String get stockQuantityNameHint;

  /// No description provided for @stockQuantityNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Quantity name already exists'**
  String get stockQuantityNameErrorRepeat;

  /// No description provided for @stockQuantityProportionLabel.
  ///
  /// In en, this message translates to:
  /// **'Default Ratio'**
  String get stockQuantityProportionLabel;

  /// No description provided for @stockQuantityProportionHelper.
  ///
  /// In en, this message translates to:
  /// **'Applied when this quantity is used for an ingredient.\n\nFor example:\nif this quantity is \"Large\" and the default ratio is \"1.5\",\nand there\'s a product \"Cheeseburger\" with the ingredient \"Cheese,\"\nwhich uses \"2\" units of cheese per burger,\nwhen adding this quantity,\nthe quantity of \"Cheese\" will automatically be set to \"3\" (2 * 1.5).\n\nIf set to \"1,\" there\'s no effect.\n\nIf set to \"0,\" the ingredient won\'t be used.'**
  String get stockQuantityProportionHelper;

  /// No description provided for @printerTitle.
  ///
  /// In en, this message translates to:
  /// **'Printer Management'**
  String get printerTitle;

  /// No description provided for @printerDescription.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth Connection, Printer Settings'**
  String get printerDescription;

  /// Displayed on the upper in mobile view
  ///
  /// In en, this message translates to:
  /// **'Printers'**
  String get printerHeaderInfo;

  /// No description provided for @printerTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Printer'**
  String get printerTitleCreate;

  /// No description provided for @printerTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Printer'**
  String get printerTitleUpdate;

  /// No description provided for @printerTitleSettings.
  ///
  /// In en, this message translates to:
  /// **'Format Settings'**
  String get printerTitleSettings;

  /// No description provided for @printerBtnConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get printerBtnConnect;

  /// No description provided for @printerBtnDisconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get printerBtnDisconnect;

  /// No description provided for @printerBtnTestPrint.
  ///
  /// In en, this message translates to:
  /// **'Test Print'**
  String get printerBtnTestPrint;

  /// No description provided for @printerBtnRetry.
  ///
  /// In en, this message translates to:
  /// **'Re-Connect'**
  String get printerBtnRetry;

  /// No description provided for @printerBtnPrint.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get printerBtnPrint;

  /// No description provided for @printerStatusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Printer connected'**
  String get printerStatusSuccess;

  /// No description provided for @printerStatusConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get printerStatusConnecting;

  /// No description provided for @printerStatusStandby.
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get printerStatusStandby;

  /// No description provided for @printerStatusPrinted.
  ///
  /// In en, this message translates to:
  /// **'Print complete'**
  String get printerStatusPrinted;

  /// No description provided for @printerStatusName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, good{All Good} writeFailed{Last Print Failed} paperNotFound{Paper Not Found} tooHot{Printer Overheated} lowBattery{Low Battery} printing{Printing} unknown{Unknown} other{UNKNOWN}}'**
  String printerStatusName(String name);

  /// No description provided for @printerSignalName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, good{Good} normal{Normal} weak{Weak} other{UNKNOWN}}'**
  String printerSignalName(String name);

  /// No description provided for @printerScanIng.
  ///
  /// In en, this message translates to:
  /// **'Scanning for Bluetooth Devices...'**
  String get printerScanIng;

  /// No description provided for @printerScanCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} Device Found} other{{count} Devices Found}}'**
  String printerScanCount(int count);

  /// No description provided for @printerScanRetry.
  ///
  /// In en, this message translates to:
  /// **'Re-scan'**
  String get printerScanRetry;

  /// No description provided for @printerScanNotFound.
  ///
  /// In en, this message translates to:
  /// **'Not Found?'**
  String get printerScanNotFound;

  /// No description provided for @printerErrorNotSelect.
  ///
  /// In en, this message translates to:
  /// **'No device selected'**
  String get printerErrorNotSelect;

  /// No description provided for @printerErrorNotSupportTitle.
  ///
  /// In en, this message translates to:
  /// **'Device Not Compatible'**
  String get printerErrorNotSupportTitle;

  /// No description provided for @printerErrorNotSupportContent.
  ///
  /// In en, this message translates to:
  /// **'This device is currently unsupported.\n\n[Contact Us](mailto:evanlu361425@gmail.com) for assistance.'**
  String get printerErrorNotSupportContent;

  /// No description provided for @printerErrorBluetoothOff.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth is off'**
  String get printerErrorBluetoothOff;

  /// No description provided for @printerErrorDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Printer is disconnected'**
  String get printerErrorDisconnected;

  /// No description provided for @printerErrorTimeout.
  ///
  /// In en, this message translates to:
  /// **'Printer connection timeout'**
  String get printerErrorTimeout;

  /// No description provided for @printerErrorCanceled.
  ///
  /// In en, this message translates to:
  /// **'Printer connection request interrupted'**
  String get printerErrorCanceled;

  /// No description provided for @printerErrorTimeoutMore.
  ///
  /// In en, this message translates to:
  /// **'Try the following:\n• Check if the device is powered on (usually will flash)\n• Ensure the device is within range\n• Restart Bluetooth'**
  String get printerErrorTimeoutMore;

  /// No description provided for @printerNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Printer Name'**
  String get printerNameLabel;

  /// No description provided for @printerNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Kitchen\'s Printer'**
  String get printerNameHint;

  /// No description provided for @printerNameHelper.
  ///
  /// In en, this message translates to:
  /// **'Location: {address}'**
  String printerNameHelper(String address);

  /// No description provided for @printerAutoConnLabel.
  ///
  /// In en, this message translates to:
  /// **'Auto-Connect'**
  String get printerAutoConnLabel;

  /// No description provided for @printerAutoConnHelper.
  ///
  /// In en, this message translates to:
  /// **'Automatically connect when entering the order page'**
  String get printerAutoConnHelper;

  /// No description provided for @printerMetaConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get printerMetaConnected;

  /// No description provided for @printerMetaExist.
  ///
  /// In en, this message translates to:
  /// **'Existing, cannot add'**
  String get printerMetaExist;

  /// No description provided for @printerMetaHelper.
  ///
  /// In en, this message translates to:
  /// **'Enable Bluetooth and keep the printer nearby'**
  String get printerMetaHelper;

  /// No description provided for @printerSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Printer Format Settings'**
  String get printerSettingsTitle;

  /// No description provided for @printerSettingsPaddingLabel.
  ///
  /// In en, this message translates to:
  /// **'Narrow Spacing'**
  String get printerSettingsPaddingLabel;

  /// No description provided for @printerSettingsPaddingHelper.
  ///
  /// In en, this message translates to:
  /// **'Reduces paper between receipts; need caution when tearing'**
  String get printerSettingsPaddingHelper;

  /// No description provided for @printerSettingsMore.
  ///
  /// In en, this message translates to:
  /// **'More Settings Coming Soon!'**
  String get printerSettingsMore;

  /// No description provided for @printerReceiptTitle.
  ///
  /// In en, this message translates to:
  /// **'Receipt'**
  String get printerReceiptTitle;

  /// No description provided for @printerReceiptColumnName.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get printerReceiptColumnName;

  /// No description provided for @printerReceiptColumnPrice.
  ///
  /// In en, this message translates to:
  /// **'U/P'**
  String get printerReceiptColumnPrice;

  /// No description provided for @printerReceiptColumnCount.
  ///
  /// In en, this message translates to:
  /// **'QTY'**
  String get printerReceiptColumnCount;

  /// No description provided for @printerReceiptColumnTotal.
  ///
  /// In en, this message translates to:
  /// **'TOT'**
  String get printerReceiptColumnTotal;

  /// No description provided for @printerReceiptColumnTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get printerReceiptColumnTime;

  /// No description provided for @printerReceiptDiscountLabel.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get printerReceiptDiscountLabel;

  /// No description provided for @printerReceiptDiscountOrigin.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get printerReceiptDiscountOrigin;

  /// No description provided for @printerReceiptAddOnsLabel.
  ///
  /// In en, this message translates to:
  /// **'Add-Ons'**
  String get printerReceiptAddOnsLabel;

  /// No description provided for @printerReceiptAddOnsAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Adj'**
  String get printerReceiptAddOnsAdjustment;

  /// No description provided for @printerReceiptTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get printerReceiptTotal;

  /// No description provided for @printerReceiptPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get printerReceiptPaid;

  /// No description provided for @printerReceiptPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get printerReceiptPrice;

  /// No description provided for @printerReceiptChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get printerReceiptChange;

  /// No description provided for @printerInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Printer Information'**
  String get printerInfoTitle;

  /// No description provided for @printerInfoName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get printerInfoName;

  /// No description provided for @printerInfoAddress.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get printerInfoAddress;

  /// No description provided for @printerInfoSignal.
  ///
  /// In en, this message translates to:
  /// **'Signal'**
  String get printerInfoSignal;

  /// No description provided for @printerInfoStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get printerInfoStatus;

  /// No description provided for @transitTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Transfer'**
  String get transitTitle;

  /// No description provided for @transitDescription.
  ///
  /// In en, this message translates to:
  /// **'Importing and Exporting Store Information and Orders'**
  String get transitDescription;

  /// No description provided for @transitMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Please Select Transfer Method'**
  String get transitMethodTitle;

  /// No description provided for @transitMethodName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, googleSheet{Google Sheets} plainText{Plain Text} other{UNKNOWN}}'**
  String transitMethodName(String name);

  /// No description provided for @transitCatalogName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, order{Order Records} model{Store Information} other{UNKNOWN}}'**
  String transitCatalogName(String name);

  /// No description provided for @transitCatalogHelper.
  ///
  /// In en, this message translates to:
  /// **'{name, select, order{Export order info for detailed statistical analysis.} model{Store info is usually used to sync menu, inventory, etc., to third-party locations or to import to another device.} other{UNKNOWN}}'**
  String transitCatalogHelper(String name);

  /// No description provided for @transitModelName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, menu{Menu} stock{Inventory} quantities{Quantities} replenisher{Replenisher} orderAttr{Customer Settings} order{Order} orderDetailsAttr{Order Customer Settings} orderDetailsProduct{Order Product Details} orderDetailsIngredient{Order Ingredient Details} other{UNKNOWN}}'**
  String transitModelName(String name);

  /// No description provided for @transitOrderMetaRange.
  ///
  /// In en, this message translates to:
  /// **'Orders for {range}'**
  String transitOrderMetaRange(String range);

  /// No description provided for @transitOrderMetaRangeDays.
  ///
  /// In en, this message translates to:
  /// **'Data for {days} Days'**
  String transitOrderMetaRangeDays(int days);

  /// No description provided for @transitOrderCapacityTitle.
  ///
  /// In en, this message translates to:
  /// **'Estimated Capacity: {size}'**
  String transitOrderCapacityTitle(String size);

  /// No description provided for @transitOrderCapacityContent.
  ///
  /// In en, this message translates to:
  /// **'High capacity may cause execution errors. It\'s recommended to perform in batches and not export too many records at once.'**
  String get transitOrderCapacityContent;

  /// No description provided for @transitOrderCapacityOk.
  ///
  /// In en, this message translates to:
  /// **'Capacity Okay'**
  String get transitOrderCapacityOk;

  /// No description provided for @transitOrderCapacityWarn.
  ///
  /// In en, this message translates to:
  /// **'Capacity Warning'**
  String get transitOrderCapacityWarn;

  /// No description provided for @transitOrderCapacityDanger.
  ///
  /// In en, this message translates to:
  /// **'Capacity Danger'**
  String get transitOrderCapacityDanger;

  /// No description provided for @transitOrderItemTitle.
  ///
  /// In en, this message translates to:
  /// **'{date}'**
  String transitOrderItemTitle(DateTime date);

  /// No description provided for @transitOrderItemMetaProductCount.
  ///
  /// In en, this message translates to:
  /// **'Product Count: {count}'**
  String transitOrderItemMetaProductCount(int count);

  /// No description provided for @transitOrderItemMetaPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Price: {price}'**
  String transitOrderItemMetaPrice(String price);

  /// No description provided for @transitOrderItemDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get transitOrderItemDialogTitle;

  /// No description provided for @transitExportPreviewBtn.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get transitExportPreviewBtn;

  /// No description provided for @transitExportPreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview Output Result'**
  String get transitExportPreviewTitle;

  /// No description provided for @transitExportBtn.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get transitExportBtn;

  /// No description provided for @transitImportPreviewBtn.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get transitImportPreviewBtn;

  /// No description provided for @transitImportPreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview Import Result'**
  String get transitImportPreviewTitle;

  /// No description provided for @transitImportPreviewHeader.
  ///
  /// In en, this message translates to:
  /// **'Note: Importing will remove the data not listed below. Please confirm before executing!'**
  String get transitImportPreviewHeader;

  /// No description provided for @transitImportPreviewIngredientMetaAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
  String transitImportPreviewIngredientMetaAmount(num amount);

  /// No description provided for @transitImportPreviewIngredientMetaMaxAmount.
  ///
  /// In en, this message translates to:
  /// **'{exist, plural, =0{Not Set} other{Max Value: {value}}}'**
  String transitImportPreviewIngredientMetaMaxAmount(int exist, num value);

  /// No description provided for @transitImportPreviewIngredientHeader.
  ///
  /// In en, this message translates to:
  /// **'After import, old ingredients won\'t be removed to avoid affecting the \"Menu\" status.'**
  String get transitImportPreviewIngredientHeader;

  /// No description provided for @transitImportPreviewQuantityHeader.
  ///
  /// In en, this message translates to:
  /// **'After import, old quantities won\'t be removed to avoid affecting the \"Menu\" status.'**
  String get transitImportPreviewQuantityHeader;

  /// No description provided for @transitImportBtn.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get transitImportBtn;

  /// No description provided for @transitImportErrorColumnCount.
  ///
  /// In en, this message translates to:
  /// **'Insufficient data, {columns} columns required'**
  String transitImportErrorColumnCount(int columns);

  /// No description provided for @transitImportErrorDuplicate.
  ///
  /// In en, this message translates to:
  /// **'This line will be ignored as the same item appeared earlier'**
  String get transitImportErrorDuplicate;

  /// Additional status of the data displayed
  ///
  /// In en, this message translates to:
  /// **'{name, select, normal{(Normal)} staged{(New)} stagedIng{(New Ingredient)} stagedQua{(New Quantity)} updated{(Updated)} other{UNKNOWN}}'**
  String transitImportColumnStatus(String name);

  /// No description provided for @transitGSDescription.
  ///
  /// In en, this message translates to:
  /// **'Google Sheets is a powerful mini-database. After exporting, it can be customized for various analyses!'**
  String get transitGSDescription;

  /// Label of title
  ///
  /// In en, this message translates to:
  /// **'Sheet Title of {name}'**
  String transitGSSheetNameLabel(String name);

  /// No description provided for @transitGSSheetNameUpdate.
  ///
  /// In en, this message translates to:
  /// **'Modify Title'**
  String get transitGSSheetNameUpdate;

  /// No description provided for @transitGSSpreadsheetLabel.
  ///
  /// In en, this message translates to:
  /// **'Spreadsheet'**
  String get transitGSSpreadsheetLabel;

  /// No description provided for @transitGSSpreadsheetActionSelect.
  ///
  /// In en, this message translates to:
  /// **'Select Spreadsheet'**
  String get transitGSSpreadsheetActionSelect;

  /// No description provided for @transitGSSpreadsheetActionClear.
  ///
  /// In en, this message translates to:
  /// **'Clear Selection'**
  String get transitGSSpreadsheetActionClear;

  /// No description provided for @transitGSSpreadsheetExportEmptyLabel.
  ///
  /// In en, this message translates to:
  /// **'Create & Export'**
  String get transitGSSpreadsheetExportEmptyLabel;

  /// No description provided for @transitGSSpreadsheetExportEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Create a new spreadsheet \"{name}\" and export data to it.'**
  String transitGSSpreadsheetExportEmptyHint(String name);

  /// Inform the user that data will be exported to the specified spreadsheet.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get transitGSSpreadsheetExportExistLabel;

  /// No description provided for @transitGSSpreadsheetExportExistHint.
  ///
  /// In en, this message translates to:
  /// **'Export to spreadsheet \"{name}\"'**
  String transitGSSpreadsheetExportExistHint(String name);

  /// No description provided for @transitGSSpreadsheetImportAllBtn.
  ///
  /// In en, this message translates to:
  /// **'Import All'**
  String get transitGSSpreadsheetImportAllBtn;

  /// No description provided for @transitGSSpreadsheetImportAllHint.
  ///
  /// In en, this message translates to:
  /// **'There will be no preview screen, directly overwrite all data.'**
  String get transitGSSpreadsheetImportAllHint;

  /// No description provided for @transitGSSpreadsheetImportAllConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Import All Data?'**
  String get transitGSSpreadsheetImportAllConfirmTitle;

  /// No description provided for @transitGSSpreadsheetImportAllConfirmContent.
  ///
  /// In en, this message translates to:
  /// **'All data from the selected sheets will be downloaded and completely overwrite local data.\nThis action cannot be undone.'**
  String get transitGSSpreadsheetImportAllConfirmContent;

  /// No description provided for @transitGSSpreadsheetImportExistLabel.
  ///
  /// In en, this message translates to:
  /// **'Load Sheets Name'**
  String get transitGSSpreadsheetImportExistLabel;

  /// No description provided for @transitGSSpreadsheetImportExistHint.
  ///
  /// In en, this message translates to:
  /// **'Get all sheet names from the spreadsheet and ready to import.'**
  String get transitGSSpreadsheetImportExistHint;

  /// No description provided for @transitGSSpreadsheetImportEmptyLabel.
  ///
  /// In en, this message translates to:
  /// **'Select Spreadsheet'**
  String get transitGSSpreadsheetImportEmptyLabel;

  /// No description provided for @transitGSSpreadsheetImportEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Once you choose the spreadsheet to import, you can start importing data.'**
  String get transitGSSpreadsheetImportEmptyHint;

  /// No description provided for @transitGSSpreadsheetImportDropdownHint.
  ///
  /// In en, this message translates to:
  /// **'Select desired sheet'**
  String get transitGSSpreadsheetImportDropdownHint;

  /// No description provided for @transitGSSpreadsheetConfirm.
  ///
  /// In en, this message translates to:
  /// **'This action will {hint}'**
  String transitGSSpreadsheetConfirm(String hint);

  /// No description provided for @transitGSSpreadsheetSelectionHint.
  ///
  /// In en, this message translates to:
  /// **'{name, select, _{Enter the spreadsheet URL or spreadsheet ID} other{The current spreadsheet is \"{name}\"}}'**
  String transitGSSpreadsheetSelectionHint(String name);

  /// No description provided for @transitGSSpreadsheetModelDefaultName.
  ///
  /// In en, this message translates to:
  /// **'POS System Data'**
  String get transitGSSpreadsheetModelDefaultName;

  /// No description provided for @transitGSSpreadsheetModelExportDivider.
  ///
  /// In en, this message translates to:
  /// **'Select types to export'**
  String get transitGSSpreadsheetModelExportDivider;

  /// No description provided for @transitGSSpreadsheetModelImportDivider.
  ///
  /// In en, this message translates to:
  /// **'Select sheet to import'**
  String get transitGSSpreadsheetModelImportDivider;

  /// No description provided for @transitGSSpreadsheetOrderDefaultName.
  ///
  /// In en, this message translates to:
  /// **'POS System Orders'**
  String get transitGSSpreadsheetOrderDefaultName;

  /// No description provided for @transitGSSpreadsheetSnackbarAction.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get transitGSSpreadsheetSnackbarAction;

  /// No description provided for @transitGSProgressStatusAddSpreadsheet.
  ///
  /// In en, this message translates to:
  /// **'Adding Spreadsheet...'**
  String get transitGSProgressStatusAddSpreadsheet;

  /// No description provided for @transitGSProgressStatusAddSheets.
  ///
  /// In en, this message translates to:
  /// **'Adding Sheets...'**
  String get transitGSProgressStatusAddSheets;

  /// No description provided for @transitGSProgressStatusVerifyUser.
  ///
  /// In en, this message translates to:
  /// **'Verifying Identity'**
  String get transitGSProgressStatusVerifyUser;

  /// No description provided for @transitGSProgressStatusFetchLocalOrders.
  ///
  /// In en, this message translates to:
  /// **'Retrieving Local Data...'**
  String get transitGSProgressStatusFetchLocalOrders;

  /// No description provided for @transitGSProgressStatusOverwriteOrders.
  ///
  /// In en, this message translates to:
  /// **'Overwriting Order Data...'**
  String get transitGSProgressStatusOverwriteOrders;

  /// No description provided for @transitGSProgressStatusAppendOrders.
  ///
  /// In en, this message translates to:
  /// **'Appended to {name}'**
  String transitGSProgressStatusAppendOrders(String name);

  /// No description provided for @transitGSModelStatus.
  ///
  /// In en, this message translates to:
  /// **'{model, select, menu{Updating Menu...} stock{Updating Inventory...} quantities{Updating Quantities...} replenisher{Updating Replenisher...} orderAttr{Exporting Customer Settings...} order{Exporting Orders...} orderDetailsAttr{Exporting Order Customer Settings...} orderDetailsProduct{Exporting Order Product Details...} orderDetailsIngredient{Exporting Order Ingredient Details...} other{UNKNOWN}}'**
  String transitGSModelStatus(String model);

  /// No description provided for @transitGSModelProductIngredientTitle.
  ///
  /// In en, this message translates to:
  /// **'Ingredient Information'**
  String get transitGSModelProductIngredientTitle;

  /// No description provided for @transitGSModelProductIngredientNote.
  ///
  /// In en, this message translates to:
  /// **'Information of all product ingredients, format as follows:\n- Ingredient 1, Default usage amount\n  + Quantity a, Additional usage amount, Additional price, Additional cost\n  + Quantity b, Additional usage amount, Additional price, Additional cost\n- Ingredient 2, Default usage amount'**
  String get transitGSModelProductIngredientNote;

  /// No description provided for @transitGSModelReplenishmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Replenishment Amount'**
  String get transitGSModelReplenishmentTitle;

  /// No description provided for @transitGSModelReplenishmentNote.
  ///
  /// In en, this message translates to:
  /// **'The amount of specific ingredients during each replenishment, format as follows:\n- Ingredient 1, Replenishment amount\n- Ingredient 2, Replenishment amount'**
  String get transitGSModelReplenishmentNote;

  /// No description provided for @transitGSModelAttributeOptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Customer Setting Options'**
  String get transitGSModelAttributeOptionTitle;

  /// No description provided for @transitGSModelAttributeOptionHeaderTs.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get transitGSModelAttributeOptionHeaderTs;

  /// No description provided for @transitGSModelAttributeOptionHeaderMode.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get transitGSModelAttributeOptionHeaderMode;

  /// No description provided for @transitGSModelAttributeOptionHeaderOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get transitGSModelAttributeOptionHeaderOptions;

  /// No description provided for @transitGSModelAttributeOptionNote.
  ///
  /// In en, this message translates to:
  /// **'\"Options\" will have different meanings depending on the type of customer settings, format as follows:\n- Option 1, Is default, Option value\n- Option 2, Is default, Option value'**
  String get transitGSModelAttributeOptionNote;

  /// No description provided for @transitGSOrderSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Export Settings'**
  String get transitGSOrderSettingTitle;

  /// No description provided for @transitGSOrderSettingOverwriteLabel.
  ///
  /// In en, this message translates to:
  /// **'Overwrite Sheet'**
  String get transitGSOrderSettingOverwriteLabel;

  /// No description provided for @transitGSOrderSettingOverwriteHint.
  ///
  /// In en, this message translates to:
  /// **'Overwriting the sheet will start exporting from the first row.'**
  String get transitGSOrderSettingOverwriteHint;

  /// No description provided for @transitGSOrderSettingTitlePrefixLabel.
  ///
  /// In en, this message translates to:
  /// **'Add Date Prefix'**
  String get transitGSOrderSettingTitlePrefixLabel;

  /// No description provided for @transitGSOrderSettingTitlePrefixHint.
  ///
  /// In en, this message translates to:
  /// **'Add a date prefix to the sheet name, for example, \"0101 - 0131 Order Data\".'**
  String get transitGSOrderSettingTitlePrefixHint;

  /// No description provided for @transitGSOrderSettingRecommendCombination.
  ///
  /// In en, this message translates to:
  /// **'When not overwriting and using append instead, it\'s recommended not to add a date prefix to the form name.'**
  String get transitGSOrderSettingRecommendCombination;

  /// No description provided for @transitGSOrderSettingNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Sheet Name'**
  String get transitGSOrderSettingNameLabel;

  /// No description provided for @transitGSOrderSettingNameHelper.
  ///
  /// In en, this message translates to:
  /// **'Splitting the sheet allows for more flexible data analysis,\nfor example, you can query the total usage of a certain ingredient in order details.'**
  String get transitGSOrderSettingNameHelper;

  /// No description provided for @transitGSOrderMetaOverwrite.
  ///
  /// In en, this message translates to:
  /// **'{value, select, true{Will overwrite} false{Won\'t overwrite} other{UNKNOWN}}'**
  String transitGSOrderMetaOverwrite(String value);

  /// No description provided for @transitGSOrderMetaTitlePrefix.
  ///
  /// In en, this message translates to:
  /// **'{value, select, true{Has date prefix} false{No date prefix} other{UNKNOWN}}'**
  String transitGSOrderMetaTitlePrefix(String value);

  /// No description provided for @transitGSOrderMetaMemoryWarning.
  ///
  /// In en, this message translates to:
  /// **'The capacity here represents the amount consumed by network transmission, the actual cloud memory occupied may be only one percent of this value.\nFor detailed capacity limit explanations, please refer to [this document](https://developers.google.com/sheets/api/limits#quota).'**
  String get transitGSOrderMetaMemoryWarning;

  /// No description provided for @transitGSOrderHeaderTs.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get transitGSOrderHeaderTs;

  /// No description provided for @transitGSOrderHeaderTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get transitGSOrderHeaderTime;

  /// No description provided for @transitGSOrderHeaderPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get transitGSOrderHeaderPrice;

  /// No description provided for @transitGSOrderHeaderProductPrice.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get transitGSOrderHeaderProductPrice;

  /// No description provided for @transitGSOrderHeaderPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get transitGSOrderHeaderPaid;

  /// No description provided for @transitGSOrderHeaderCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get transitGSOrderHeaderCost;

  /// No description provided for @transitGSOrderHeaderProfit.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get transitGSOrderHeaderProfit;

  /// how many items in the order
  ///
  /// In en, this message translates to:
  /// **'Item Count'**
  String get transitGSOrderHeaderItemCount;

  /// how many types of products in the order
  ///
  /// In en, this message translates to:
  /// **'Type Count'**
  String get transitGSOrderHeaderTypeCount;

  /// No description provided for @transitGSOrderAttributeTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Customer Settings'**
  String get transitGSOrderAttributeTitle;

  /// No description provided for @transitGSOrderAttributeHeaderTs.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get transitGSOrderAttributeHeaderTs;

  /// No description provided for @transitGSOrderAttributeHeaderName.
  ///
  /// In en, this message translates to:
  /// **'Setting Category'**
  String get transitGSOrderAttributeHeaderName;

  /// No description provided for @transitGSOrderAttributeHeaderOption.
  ///
  /// In en, this message translates to:
  /// **'Option'**
  String get transitGSOrderAttributeHeaderOption;

  /// No description provided for @transitGSOrderProductTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Product Details'**
  String get transitGSOrderProductTitle;

  /// No description provided for @transitGSOrderProductHeaderTs.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get transitGSOrderProductHeaderTs;

  /// No description provided for @transitGSOrderProductHeaderName.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get transitGSOrderProductHeaderName;

  /// No description provided for @transitGSOrderProductHeaderCatalog.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get transitGSOrderProductHeaderCatalog;

  /// No description provided for @transitGSOrderProductHeaderCount.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get transitGSOrderProductHeaderCount;

  /// No description provided for @transitGSOrderProductHeaderPrice.
  ///
  /// In en, this message translates to:
  /// **'Single Price'**
  String get transitGSOrderProductHeaderPrice;

  /// No description provided for @transitGSOrderProductHeaderCost.
  ///
  /// In en, this message translates to:
  /// **'Single Cost'**
  String get transitGSOrderProductHeaderCost;

  /// No description provided for @transitGSOrderProductHeaderOrigin.
  ///
  /// In en, this message translates to:
  /// **'Original Price'**
  String get transitGSOrderProductHeaderOrigin;

  /// No description provided for @transitGSOrderIngredientTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Ingredient Details'**
  String get transitGSOrderIngredientTitle;

  /// No description provided for @transitGSOrderIngredientHeaderTs.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get transitGSOrderIngredientHeaderTs;

  /// No description provided for @transitGSOrderIngredientHeaderName.
  ///
  /// In en, this message translates to:
  /// **'Ingredient'**
  String get transitGSOrderIngredientHeaderName;

  /// No description provided for @transitGSOrderIngredientHeaderQuantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get transitGSOrderIngredientHeaderQuantity;

  /// No description provided for @transitGSOrderIngredientHeaderAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get transitGSOrderIngredientHeaderAmount;

  /// No description provided for @transitGSOrderExpandableHint.
  ///
  /// In en, this message translates to:
  /// **'See next table'**
  String get transitGSOrderExpandableHint;

  /// No description provided for @transitGSErrorCreateSpreadsheet.
  ///
  /// In en, this message translates to:
  /// **'Unable to Create Spreadsheet'**
  String get transitGSErrorCreateSpreadsheet;

  /// No description provided for @transitGSErrorCreateSpreadsheetHelper.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to edit spreadsheets.'**
  String get transitGSErrorCreateSpreadsheetHelper;

  /// No description provided for @transitGSErrorSpreadsheetEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please Select a Spreadsheet First'**
  String get transitGSErrorSpreadsheetEmpty;

  /// No description provided for @transitGSErrorSpreadsheetIdEmpty.
  ///
  /// In en, this message translates to:
  /// **'Cannot be Empty'**
  String get transitGSErrorSpreadsheetIdEmpty;

  /// No description provided for @transitGSErrorSpreadsheetIdInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid text. It must include:\n• /spreadsheets/d/<ID>/\n• Or provide the ID directly (combination of letters, numbers, underscores, and hyphens).'**
  String get transitGSErrorSpreadsheetIdInvalid;

  /// No description provided for @transitGSErrorCreateSheet.
  ///
  /// In en, this message translates to:
  /// **'Unable to Create Sheet in Spreadsheet'**
  String get transitGSErrorCreateSheet;

  /// No description provided for @transitGSErrorCreateSheetHelper.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to create sheets;\n• Misspelled spreadsheet ID, try copying the entire URL and pasting it;\n• The spreadsheet has been deleted.'**
  String get transitGSErrorCreateSheetHelper;

  /// No description provided for @transitGSErrorSheetRepeat.
  ///
  /// In en, this message translates to:
  /// **'Sheet name duplicate'**
  String get transitGSErrorSheetRepeat;

  /// No description provided for @transitGSErrorSheetEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one sheet to export'**
  String get transitGSErrorSheetEmpty;

  /// No description provided for @transitGSErrorNonExistName.
  ///
  /// In en, this message translates to:
  /// **'Spreadsheet not found, has it been deleted?'**
  String get transitGSErrorNonExistName;

  /// No description provided for @transitGSErrorImportEmptySpreadsheet.
  ///
  /// In en, this message translates to:
  /// **'Must select a spreadsheet to import'**
  String get transitGSErrorImportEmptySpreadsheet;

  /// No description provided for @transitGSErrorImportEmptySheet.
  ///
  /// In en, this message translates to:
  /// **'Must select a specific sheet to import'**
  String get transitGSErrorImportEmptySheet;

  /// No description provided for @transitGSErrorImportEmptyData.
  ///
  /// In en, this message translates to:
  /// **'No values found in sheet'**
  String get transitGSErrorImportEmptyData;

  /// No description provided for @transitGSErrorImportNotFoundSpreadsheet.
  ///
  /// In en, this message translates to:
  /// **'Spreadsheet not found'**
  String get transitGSErrorImportNotFoundSpreadsheet;

  /// No description provided for @transitGSErrorImportNotFoundSheets.
  ///
  /// In en, this message translates to:
  /// **'No data found for sheet \"{name}\"'**
  String transitGSErrorImportNotFoundSheets(String name);

  /// No description provided for @transitGSErrorImportNotFoundHelper.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, it\'s usually easy to solve!\nPossible reasons include:\n• Unstable network conditions;\n• POS system not authorized to read sheets;\n• Misspelled spreadsheet ID, try copying the entire URL and pasting it;\n• The spreadsheet has been deleted.'**
  String get transitGSErrorImportNotFoundHelper;

  /// No description provided for @transitPTDescription.
  ///
  /// In en, this message translates to:
  /// **'Quick check, quick share.'**
  String get transitPTDescription;

  /// No description provided for @transitPTCopyBtn.
  ///
  /// In en, this message translates to:
  /// **'Copy Text'**
  String get transitPTCopyBtn;

  /// No description provided for @transitPTCopySuccess.
  ///
  /// In en, this message translates to:
  /// **'Copied successfully'**
  String get transitPTCopySuccess;

  /// No description provided for @transitPTCopyWarning.
  ///
  /// In en, this message translates to:
  /// **'Copying too much text may cause system crash'**
  String get transitPTCopyWarning;

  /// No description provided for @transitPTImportHint.
  ///
  /// In en, this message translates to:
  /// **'Paste copied text here'**
  String get transitPTImportHint;

  /// No description provided for @transitPTImportHelper.
  ///
  /// In en, this message translates to:
  /// **'After pasting the text, it will analyze and determine the type of information to import.'**
  String get transitPTImportHelper;

  /// No description provided for @transitPTImportErrorNotFound.
  ///
  /// In en, this message translates to:
  /// **'This text cannot match any corresponding service. Please refer to the exported text content.'**
  String get transitPTImportErrorNotFound;

  /// No description provided for @transitPTFormatOrderPrice.
  ///
  /// In en, this message translates to:
  /// **'{hasProducts, plural, =0{Total price \${price}.} other{Total price \${price}, {productsPrice} of them are product price.}}'**
  String transitPTFormatOrderPrice(int hasProducts, String price, String productsPrice);

  /// No description provided for @transitPTFormatOrderMoney.
  ///
  /// In en, this message translates to:
  /// **'Paid \${paid}, cost \${cost}.'**
  String transitPTFormatOrderMoney(String paid, String cost);

  /// No description provided for @transitPTFormatOrderProductCount.
  ///
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
  String get transitPTFormatOrderNoQuantity;

  /// No description provided for @transitPTFormatOrderOrderAttribute.
  ///
  /// In en, this message translates to:
  /// **'Customer\'s {options}.'**
  String transitPTFormatOrderOrderAttribute(String options);

  /// No description provided for @transitPTFormatOrderOrderAttributeItem.
  ///
  /// In en, this message translates to:
  /// **'{name} is {option}'**
  String transitPTFormatOrderOrderAttributeItem(String name, String option);

  /// No description provided for @transitPTFormatModelMenuMetaCatalog.
  ///
  /// In en, this message translates to:
  /// **'{count} categories'**
  String transitPTFormatModelMenuMetaCatalog(int count);

  /// No description provided for @transitPTFormatModelMenuMetaProduct.
  ///
  /// In en, this message translates to:
  /// **'{count} products'**
  String transitPTFormatModelMenuMetaProduct(int count);

  /// No description provided for @transitPTFormatModelMenuHeader.
  ///
  /// In en, this message translates to:
  /// **'This menu has {catalogs} categories, {products} products.'**
  String transitPTFormatModelMenuHeader(int catalogs, int products);

  /// This is used to check if this text is a menu
  ///
  /// In en, this message translates to:
  /// **'This menu has'**
  String get transitPTFormatModelMenuHeaderPrefix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'Category {index} is called {catalog} and {details}.'**
  String transitPTFormatModelMenuCatalog(String index, String catalog, String details);

  /// No description provided for @transitPTFormatModelMenuCatalogDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it has no product} =1{it has one product} other{it has {count} products}}'**
  String transitPTFormatModelMenuCatalogDetails(int count);

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
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
  String transitPTFormatModelStockMetaIngredient(int count);

  /// No description provided for @transitPTFormatModelStockHeader.
  ///
  /// In en, this message translates to:
  /// **'The inventory has {count} ingredients in total.'**
  String transitPTFormatModelStockHeader(int count);

  /// This is used to check if this text is stock
  ///
  /// In en, this message translates to:
  /// **'The inventory has'**
  String get transitPTFormatModelStockHeaderPrefix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'Ingredient at {index} is called {name}, with {amount} amount{details}.'**
  String transitPTFormatModelStockIngredient(String index, String name, String amount, String details);

  /// String(max) are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'{exist, plural, =0{} other{, with a maximum of {max} pieces}}'**
  String transitPTFormatModelStockIngredientMaxAmount(int exist, String max);

  /// No description provided for @transitPTFormatModelStockIngredientRestockPrice.
  ///
  /// In en, this message translates to:
  /// **'{exist, plural, =0{} other{ and {quantity} units of it cost \${price} to replenish}}'**
  String transitPTFormatModelStockIngredientRestockPrice(int exist, String quantity, String price);

  /// No description provided for @transitPTFormatModelQuantitiesMetaQuantity.
  ///
  /// In en, this message translates to:
  /// **'{count} quantities'**
  String transitPTFormatModelQuantitiesMetaQuantity(int count);

  /// No description provided for @transitPTFormatModelQuantitiesHeader.
  ///
  /// In en, this message translates to:
  /// **'{count} quantities have been set.'**
  String transitPTFormatModelQuantitiesHeader(int count);

  /// This is used to check if this text is quantities
  ///
  /// In en, this message translates to:
  /// **'quantities have been set.'**
  String get transitPTFormatModelQuantitiesHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'Quantity at {index} is called {name}, which defaults to multiplying ingredient quantity by {prop}.'**
  String transitPTFormatModelQuantitiesQuantity(String index, String name, String prop);

  /// No description provided for @transitPTFormatModelReplenisherMetaReplenishment.
  ///
  /// In en, this message translates to:
  /// **'{count} replenishment methods'**
  String transitPTFormatModelReplenisherMetaReplenishment(int count);

  /// No description provided for @transitPTFormatModelReplenisherHeader.
  ///
  /// In en, this message translates to:
  /// **'{count} replenishment methods have been set.'**
  String transitPTFormatModelReplenisherHeader(int count);

  /// This is used to check if this text is replenishment quantity
  ///
  /// In en, this message translates to:
  /// **'replenishment methods have been set.'**
  String get transitPTFormatModelReplenisherHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'Replenishment method at {index} is called {name}, {details}.'**
  String transitPTFormatModelReplenisherReplenishment(String index, String name, String details);

  /// No description provided for @transitPTFormatModelReplenisherReplenishmentDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it will not adjust inventory} other{it will adjust the inventory of {count} ingredients}}'**
  String transitPTFormatModelReplenisherReplenishmentDetails(int count);

  /// No description provided for @transitPTFormatModelOaMetaOa.
  ///
  /// In en, this message translates to:
  /// **'{count} customer attributes'**
  String transitPTFormatModelOaMetaOa(int count);

  /// No description provided for @transitPTFormatModelOaHeader.
  ///
  /// In en, this message translates to:
  /// **'{count} customer attributes have been set.'**
  String transitPTFormatModelOaHeader(int count);

  /// This is used to check if this text is customer settings
  ///
  /// In en, this message translates to:
  /// **'customer attributes have been set.'**
  String get transitPTFormatModelOaHeaderSuffix;

  /// Strings are used so that regex can be inserted here during import to obtain information
  ///
  /// In en, this message translates to:
  /// **'Attribute at {index} is called {name}, belongs to {mode} type, {details}.'**
  String transitPTFormatModelOaOa(String index, String name, String mode, String details);

  /// No description provided for @transitPTFormatModelOaOaDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{it has no options} =1{it has one option} other{it has {count} options}}'**
  String transitPTFormatModelOaOaDetails(int count);

  /// No description provided for @transitPTFormatModelOaDefaultOption.
  ///
  /// In en, this message translates to:
  /// **'default'**
  String get transitPTFormatModelOaDefaultOption;

  /// No description provided for @transitPTFormatModelOaModeValue.
  ///
  /// In en, this message translates to:
  /// **'option value is {value}'**
  String transitPTFormatModelOaModeValue(num value);

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'POS System'**
  String get appTitle;

  /// Action executed successfully and displayed on the Snackbar.
  ///
  /// In en, this message translates to:
  /// **'Successful!'**
  String get actSuccess;

  /// Error message displayed on the Snackbar when an error occurs.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get actError;

  /// Button on the Snackbar to show more details.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get actMoreInfo;

  /// Reminder to the user that only one option can be selected at a time.
  ///
  /// In en, this message translates to:
  /// **'Select One'**
  String get singleChoice;

  /// Reminder to the user that multiple options can be selected.
  ///
  /// In en, this message translates to:
  /// **'Select Multiple'**
  String get multiChoices;

  /// Total count displayed on the ListView.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No Items} =1{{count} item} other{{count} items}}'**
  String totalCount(int count);

  /// Total count displayed on the SearchScaffold.
  ///
  /// In en, this message translates to:
  /// **'Found {count} results'**
  String searchCount(int count);

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'{name, select, analysis{Stats} stock{Inventory} cashier{Cashier} settings{Settings} menu{Menu} printers{Printer} transit{Data Transfer} orderAttributes{Customer Settings} stockQuantities{Quantities} elf{Suggestions} more{More} debug{Debug} other{UNKNOWN}}'**
  String title(String name);

  /// Title displayed on the DeleteDialog.
  ///
  /// In en, this message translates to:
  /// **'Delete Confirmation'**
  String get dialogDeletionTitle;

  /// Content displayed on the DeleteDialog.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{name}\"?\n\n{more}This action cannot be undone!\n'**
  String dialogDeletionContent(String name, String more);

  /// No description provided for @imageHolderCreate.
  ///
  /// In en, this message translates to:
  /// **'Tap to add image'**
  String get imageHolderCreate;

  /// No description provided for @imageHolderUpdate.
  ///
  /// In en, this message translates to:
  /// **'Click to update image'**
  String get imageHolderUpdate;

  /// No description provided for @imageBtnCrop.
  ///
  /// In en, this message translates to:
  /// **'Crop'**
  String get imageBtnCrop;

  /// No description provided for @imageGalleryTitle.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get imageGalleryTitle;

  /// No description provided for @imageGalleryEmpty.
  ///
  /// In en, this message translates to:
  /// **'Start importing your first image!'**
  String get imageGalleryEmpty;

  /// No description provided for @imageGalleryActionCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Image'**
  String get imageGalleryActionCreate;

  /// No description provided for @imageGalleryActionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get imageGalleryActionDelete;

  /// No description provided for @imageGallerySnackbarDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'One or more images failed to delete.'**
  String get imageGallerySnackbarDeleteFailed;

  /// No description provided for @imageGallerySelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Images'**
  String get imageGallerySelectionTitle;

  /// No description provided for @imageGallerySelectionDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Will delete {count} image(s) permanently.\nAfter deletion, the connected product will not able to display the image.'**
  String imageGallerySelectionDeleteConfirm(int count);

  /// Text displayed on EmptyBody, informing the user that there are no items yet. This is the default text.
  ///
  /// In en, this message translates to:
  /// **'Oops! It\'s empty here.'**
  String get emptyBodyTitle;

  /// No description provided for @emptyBodyAction.
  ///
  /// In en, this message translates to:
  /// **'SETUP'**
  String get emptyBodyAction;

  /// Button text to navigate to another screen in trailing.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get btnNavTo;

  /// No description provided for @btnSignInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get btnSignInWithGoogle;

  /// No description provided for @semanticsPercentileBar.
  ///
  /// In en, this message translates to:
  /// **'Currently {percent} of total'**
  String semanticsPercentileBar(num percent);

  /// Warning message when the input is not an integer.
  ///
  /// In en, this message translates to:
  /// **'{field} must be an integer.'**
  String invalidIntegerType(String field);

  /// Warning message when the input is not a number.
  ///
  /// In en, this message translates to:
  /// **'{field} must be a number.'**
  String invalidNumberType(String field);

  /// Warning message when the input is not positive.
  ///
  /// In en, this message translates to:
  /// **'{field} cannot be negative.'**
  String invalidNumberPositive(String field);

  /// Warning message when the input exceeds the maximum value.
  ///
  /// In en, this message translates to:
  /// **'{field} cannot exceed {maximum}.'**
  String invalidNumberMaximum(String field, num maximum);

  /// Warning message when the input is less than the minimum value.
  ///
  /// In en, this message translates to:
  /// **'{field} cannot be less than {minimum}.'**
  String invalidNumberMinimum(String field, num minimum);

  /// Warning message when no text is entered.
  ///
  /// In en, this message translates to:
  /// **'{field} cannot be empty.'**
  String invalidStringEmpty(String field);

  /// Warning message when the input exceeds the maximum character limit.
  ///
  /// In en, this message translates to:
  /// **'{field} cannot exceed {maximum} characters.'**
  String invalidStringMaximum(String field, int maximum);

  /// One of the units for calendar period conversion.
  ///
  /// In en, this message translates to:
  /// **'Single Month'**
  String get singleMonth;

  /// One of the units for calendar period conversion.
  ///
  /// In en, this message translates to:
  /// **'Single Week'**
  String get singleWeek;

  /// One of the units for calendar period conversion.
  ///
  /// In en, this message translates to:
  /// **'Two Weeks'**
  String get twoWeeks;

  /// No description provided for @orderAttributeTitle.
  ///
  /// In en, this message translates to:
  /// **'Customer Settings'**
  String get orderAttributeTitle;

  /// No description provided for @orderAttributeDescription.
  ///
  /// In en, this message translates to:
  /// **'Information for analysis such as dine-in, takeout, etc.'**
  String get orderAttributeDescription;

  /// No description provided for @orderAttributeTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Customer Setting'**
  String get orderAttributeTitleCreate;

  /// No description provided for @orderAttributeTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Customer Setting'**
  String get orderAttributeTitleUpdate;

  /// No description provided for @orderAttributeTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Customer Settings'**
  String get orderAttributeTitleReorder;

  /// No description provided for @orderAttributeEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Customer settings help us track who comes to consume, such as:\n20-30 years old, takeout, office workers, etc.'**
  String get orderAttributeEmptyBody;

  /// Displayed on the upper rectangle in homepage
  ///
  /// In en, this message translates to:
  /// **'Customer Settings'**
  String get orderAttributeHeaderInfo;

  /// No description provided for @orderAttributeTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Your Customer Settings'**
  String get orderAttributeTutorialTitle;

  /// No description provided for @orderAttributeTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'This is where you set customer information, such as dine-in, takeout, office worker, etc.\nThis information helps us track who comes to consume and make better business strategies.'**
  String get orderAttributeTutorialContent;

  /// No description provided for @orderAttributeTutorialCreateExample.
  ///
  /// In en, this message translates to:
  /// **'Help create an example to test.'**
  String get orderAttributeTutorialCreateExample;

  /// No description provided for @orderAttributeExampleAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get orderAttributeExampleAge;

  /// No description provided for @orderAttributeExampleAgeChild.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get orderAttributeExampleAgeChild;

  /// No description provided for @orderAttributeExampleAgeAdult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get orderAttributeExampleAgeAdult;

  /// No description provided for @orderAttributeExampleAgeSenior.
  ///
  /// In en, this message translates to:
  /// **'Senior'**
  String get orderAttributeExampleAgeSenior;

  /// No description provided for @orderAttributeExamplePlace.
  ///
  /// In en, this message translates to:
  /// **'Place'**
  String get orderAttributeExamplePlace;

  /// No description provided for @orderAttributeExamplePlaceTakeout.
  ///
  /// In en, this message translates to:
  /// **'Takeout'**
  String get orderAttributeExamplePlaceTakeout;

  /// No description provided for @orderAttributeExamplePlaceDineIn.
  ///
  /// In en, this message translates to:
  /// **'Dine-in'**
  String get orderAttributeExamplePlaceDineIn;

  /// No description provided for @orderAttributeExampleEcoFriendly.
  ///
  /// In en, this message translates to:
  /// **'Eco-Friendly'**
  String get orderAttributeExampleEcoFriendly;

  /// No description provided for @orderAttributeExampleEcoFriendlyReusableBottle.
  ///
  /// In en, this message translates to:
  /// **'Reusable Bottle'**
  String get orderAttributeExampleEcoFriendlyReusableBottle;

  /// No description provided for @orderAttributeExampleEcoFriendlyReusableBag.
  ///
  /// In en, this message translates to:
  /// **'Reusable Bag'**
  String get orderAttributeExampleEcoFriendlyReusableBag;

  /// No description provided for @orderAttributeMetaMode.
  ///
  /// In en, this message translates to:
  /// **'Mode: {name}'**
  String orderAttributeMetaMode(String name);

  /// No description provided for @orderAttributeMetaDefault.
  ///
  /// In en, this message translates to:
  /// **'Default: {name}'**
  String orderAttributeMetaDefault(String name);

  /// No description provided for @orderAttributeMetaNoDefault.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get orderAttributeMetaNoDefault;

  /// No description provided for @orderAttributeModeDivider.
  ///
  /// In en, this message translates to:
  /// **'Customer Setting Mode'**
  String get orderAttributeModeDivider;

  /// Customer setting mode name
  ///
  /// In en, this message translates to:
  /// **'{name, select, statOnly{Normal} changePrice{Price Change} changeDiscount{Discount} other{UNKNOWN}}'**
  String orderAttributeModeName(String name);

  /// Explanation of customer setting categories
  ///
  /// In en, this message translates to:
  /// **'{name, select, statOnly{Normal setting, selecting won\'t affect the order price.} changePrice{Selecting this setting may affect the order price.\nFor example: Takeout +\$30, Eco Cup -\$5.} changeDiscount{Selecting this setting will affect the total price based on the discount.\nFor example: Dine-in +10% service charge, Friends & Family Discount -10%.} other{UNKNOWN}}'**
  String orderAttributeModeHelper(String name);

  /// No description provided for @orderAttributeNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Customer Setting Name'**
  String get orderAttributeNameLabel;

  /// No description provided for @orderAttributeNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Age'**
  String get orderAttributeNameHint;

  /// No description provided for @orderAttributeNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Name already exists'**
  String get orderAttributeNameErrorRepeat;

  /// No description provided for @orderAttributeOptionTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Option'**
  String get orderAttributeOptionTitleCreate;

  /// No description provided for @orderAttributeOptionTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Option'**
  String get orderAttributeOptionTitleUpdate;

  /// No description provided for @orderAttributeOptionTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Options'**
  String get orderAttributeOptionTitleReorder;

  /// No description provided for @orderAttributeOptionMetaDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get orderAttributeOptionMetaDefault;

  /// No description provided for @orderAttributeOptionMetaOptionOf.
  ///
  /// In en, this message translates to:
  /// **'option of {name}'**
  String orderAttributeOptionMetaOptionOf(String name);

  /// No description provided for @orderAttributeOptionNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Option Name'**
  String get orderAttributeOptionNameLabel;

  /// No description provided for @orderAttributeOptionNameHelper.
  ///
  /// In en, this message translates to:
  /// **'For \'age\', possible options are:\n- ⇣ 20\n- 20 ⇢ 30'**
  String get orderAttributeOptionNameHelper;

  /// No description provided for @orderAttributeOptionNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Name already exists'**
  String get orderAttributeOptionNameErrorRepeat;

  /// No description provided for @orderAttributeOptionModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Option Mode'**
  String get orderAttributeOptionModeTitle;

  /// Explanation of mode
  ///
  /// In en, this message translates to:
  /// **'{name, select, statOnly{No need to set \"Discount\" or \"Price Change\" because this setting is \"Normal\"} changePrice{Selecting this option during ordering will apply this price change} changeDiscount{Selecting this option during ordering will apply this discount} other{UNKNOWN}}'**
  String orderAttributeOptionModeHelper(String name);

  /// No description provided for @orderAttributeOptionModeHint.
  ///
  /// In en, this message translates to:
  /// **'{name, select, statOnly{} changePrice{For example: -30 means decrease by thirty dollars} changeDiscount{For example: 80 means \"20% off\"} other{UNKNOWN}}'**
  String orderAttributeOptionModeHint(String name);

  /// No description provided for @orderAttributeOptionToDefaultLabel.
  ///
  /// In en, this message translates to:
  /// **'Set as Default'**
  String get orderAttributeOptionToDefaultLabel;

  /// No description provided for @orderAttributeOptionToDefaultHelper.
  ///
  /// In en, this message translates to:
  /// **'Set this option as the default value, which will be used for each order by default.'**
  String get orderAttributeOptionToDefaultHelper;

  /// No description provided for @orderAttributeOptionToDefaultConfirmChangeTitle.
  ///
  /// In en, this message translates to:
  /// **'Override Option Default?'**
  String get orderAttributeOptionToDefaultConfirmChangeTitle;

  /// Prompt to ensure the user knows what the original default value was
  ///
  /// In en, this message translates to:
  /// **'Doing this will make \"{name}\" no longer the default value'**
  String orderAttributeOptionToDefaultConfirmChangeContent(String name);

  /// No description provided for @orderAttributeValueEmpty.
  ///
  /// In en, this message translates to:
  /// **'No price impact'**
  String get orderAttributeValueEmpty;

  /// No description provided for @orderAttributeValueFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get orderAttributeValueFree;

  /// No description provided for @menuTitle.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menuTitle;

  /// No description provided for @menuSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Categories, Products'**
  String get menuSubtitle;

  /// No description provided for @menuTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Your Menu'**
  String get menuTutorialTitle;

  /// No description provided for @menuTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start by creating a menu!'**
  String get menuTutorialContent;

  /// No description provided for @menuTutorialCreateExample.
  ///
  /// In en, this message translates to:
  /// **'Help create an example menu to test.'**
  String get menuTutorialCreateExample;

  /// No description provided for @menuSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for products, ingredients, quantities'**
  String get menuSearchHint;

  /// No description provided for @menuSearchNotFound.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find relevant information. Did you misspell something?'**
  String get menuSearchNotFound;

  /// No description provided for @menuExampleCatalogBurger.
  ///
  /// In en, this message translates to:
  /// **'Burgers'**
  String get menuExampleCatalogBurger;

  /// No description provided for @menuExampleCatalogDrink.
  ///
  /// In en, this message translates to:
  /// **'Drinks'**
  String get menuExampleCatalogDrink;

  /// No description provided for @menuExampleCatalogSide.
  ///
  /// In en, this message translates to:
  /// **'Side'**
  String get menuExampleCatalogSide;

  /// No description provided for @menuExampleCatalogOther.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get menuExampleCatalogOther;

  /// No description provided for @menuExampleProductCheeseBurger.
  ///
  /// In en, this message translates to:
  /// **'Cheese Burger'**
  String get menuExampleProductCheeseBurger;

  /// No description provided for @menuExampleProductVeggieBurger.
  ///
  /// In en, this message translates to:
  /// **'Veggie Burger'**
  String get menuExampleProductVeggieBurger;

  /// No description provided for @menuExampleProductHamBurger.
  ///
  /// In en, this message translates to:
  /// **'Ham Burger'**
  String get menuExampleProductHamBurger;

  /// No description provided for @menuExampleProductCola.
  ///
  /// In en, this message translates to:
  /// **'Cola'**
  String get menuExampleProductCola;

  /// No description provided for @menuExampleProductCoffee.
  ///
  /// In en, this message translates to:
  /// **'Coffee'**
  String get menuExampleProductCoffee;

  /// No description provided for @menuExampleProductFries.
  ///
  /// In en, this message translates to:
  /// **'Fries'**
  String get menuExampleProductFries;

  /// No description provided for @menuExampleProductStraw.
  ///
  /// In en, this message translates to:
  /// **'Straw'**
  String get menuExampleProductStraw;

  /// No description provided for @menuExampleProductPlasticBag.
  ///
  /// In en, this message translates to:
  /// **'Plastic Bag'**
  String get menuExampleProductPlasticBag;

  /// No description provided for @menuExampleIngredientCheese.
  ///
  /// In en, this message translates to:
  /// **'Cheese'**
  String get menuExampleIngredientCheese;

  /// No description provided for @menuExampleIngredientLettuce.
  ///
  /// In en, this message translates to:
  /// **'Lettuce'**
  String get menuExampleIngredientLettuce;

  /// No description provided for @menuExampleIngredientTomato.
  ///
  /// In en, this message translates to:
  /// **'Tomato'**
  String get menuExampleIngredientTomato;

  /// No description provided for @menuExampleIngredientBun.
  ///
  /// In en, this message translates to:
  /// **'Bun'**
  String get menuExampleIngredientBun;

  /// No description provided for @menuExampleIngredientChili.
  ///
  /// In en, this message translates to:
  /// **'Chili Sauce'**
  String get menuExampleIngredientChili;

  /// No description provided for @menuExampleIngredientHam.
  ///
  /// In en, this message translates to:
  /// **'Ham'**
  String get menuExampleIngredientHam;

  /// No description provided for @menuExampleIngredientCola.
  ///
  /// In en, this message translates to:
  /// **'Can of Cola'**
  String get menuExampleIngredientCola;

  /// No description provided for @menuExampleIngredientCoffee.
  ///
  /// In en, this message translates to:
  /// **'Drip Coffee'**
  String get menuExampleIngredientCoffee;

  /// No description provided for @menuExampleIngredientFries.
  ///
  /// In en, this message translates to:
  /// **'Bag of Fries'**
  String get menuExampleIngredientFries;

  /// No description provided for @menuExampleIngredientStraw.
  ///
  /// In en, this message translates to:
  /// **'Straw'**
  String get menuExampleIngredientStraw;

  /// No description provided for @menuExampleIngredientPlasticBag.
  ///
  /// In en, this message translates to:
  /// **'Plastic Bag'**
  String get menuExampleIngredientPlasticBag;

  /// No description provided for @menuExampleQuantitySmall.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get menuExampleQuantitySmall;

  /// No description provided for @menuExampleQuantityLarge.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get menuExampleQuantityLarge;

  /// No description provided for @menuExampleQuantityNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get menuExampleQuantityNone;

  /// No description provided for @menuCatalogEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Similar products will be grouped under categories,\nmaking ordering convenient, such as:\n• \"Cheese Burger\", \"Veggie Burger\" > \"Burgers\"\n• \"Plastic Bag\", \"Eco Cup\" > \"Others\"'**
  String get menuCatalogEmptyBody;

  /// FloatingActionButton description on the menu page
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get menuCatalogTitleCreate;

  /// No description provided for @menuCatalogTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Category'**
  String get menuCatalogTitleUpdate;

  /// No description provided for @menuCatalogTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Categories'**
  String get menuCatalogTitleReorder;

  /// Warning message when deleting product categories on the menu page
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No products inside} =1{Will also delete {count} related product} other{Will also delete {count} related products}}'**
  String menuCatalogDialogDeletionContent(int count);

  /// No description provided for @menuCatalogNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get menuCatalogNameLabel;

  /// No description provided for @menuCatalogNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Burgers'**
  String get menuCatalogNameHint;

  /// No description provided for @menuCatalogNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Name already exists. Please choose a different name!'**
  String get menuCatalogNameErrorRepeat;

  /// No description provided for @menuCatalogEmptyProducts.
  ///
  /// In en, this message translates to:
  /// **'No products set yet'**
  String get menuCatalogEmptyProducts;

  /// Displayed on the upper rectangle in homepage
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get menuProductHeaderInfo;

  /// No description provided for @menuProductEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'\"Products\" are the basic units in the menu, such as:\n\"Cheese Burger\", \"Cola\"'**
  String get menuProductEmptyBody;

  /// When not selecting a category, the product list will not be displayed. This message will be displayed in the product list
  ///
  /// In en, this message translates to:
  /// **'Please select a category first'**
  String get menuProductNotSelected;

  /// No description provided for @menuProductTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get menuProductTitleCreate;

  /// No description provided for @menuProductTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Product'**
  String get menuProductTitleUpdate;

  /// No description provided for @menuProductTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Products'**
  String get menuProductTitleReorder;

  /// No description provided for @menuProductTitleUpdateImage.
  ///
  /// In en, this message translates to:
  /// **'Update Photo'**
  String get menuProductTitleUpdateImage;

  /// Prefix for meta, so users know this is product meta info, not category
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get menuProductMetaTitle;

  /// Price of the product
  ///
  /// In en, this message translates to:
  /// **'Price: {price}'**
  String menuProductMetaPrice(num price);

  /// Cost of the product
  ///
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
  String menuProductMetaCost(num cost);

  /// Text displayed in the subtitle in the product list
  ///
  /// In en, this message translates to:
  /// **'No ingredients set'**
  String get menuProductMetaEmpty;

  /// No description provided for @menuProductNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get menuProductNameLabel;

  /// No description provided for @menuProductNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Cheeseburger'**
  String get menuProductNameHint;

  /// No description provided for @menuProductNameErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Product name already exists'**
  String get menuProductNameErrorRepeat;

  /// No description provided for @menuProductPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get menuProductPriceLabel;

  /// No description provided for @menuProductPriceHelper.
  ///
  /// In en, this message translates to:
  /// **'Price displayed on the order page'**
  String get menuProductPriceHelper;

  /// No description provided for @menuProductCostLabel.
  ///
  /// In en, this message translates to:
  /// **'Product Cost'**
  String get menuProductCostLabel;

  /// No description provided for @menuProductCostHelper.
  ///
  /// In en, this message translates to:
  /// **'Used to calculate profit, should be less than the price'**
  String get menuProductCostHelper;

  /// No description provided for @menuProductEmptyIngredients.
  ///
  /// In en, this message translates to:
  /// **'No ingredients set yet'**
  String get menuProductEmptyIngredients;

  /// No description provided for @menuIngredientEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'You can set ingredients for the product, such as:\n\"Cheeseburger\" with \"Cheese\", \"Bun\" as ingredients'**
  String get menuIngredientEmptyBody;

  /// No description provided for @menuIngredientTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Ingredient'**
  String get menuIngredientTitleCreate;

  /// No description provided for @menuIngredientTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Ingredient'**
  String get menuIngredientTitleUpdate;

  /// No description provided for @menuIngredientTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Ingredients'**
  String get menuIngredientTitleReorder;

  /// No description provided for @menuIngredientMetaAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
  String menuIngredientMetaAmount(num amount);

  /// No description provided for @menuIngredientSearchLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Ingredients'**
  String get menuIngredientSearchLabel;

  /// No description provided for @menuIngredientSearchHelper.
  ///
  /// In en, this message translates to:
  /// **'After adding ingredient, you can set related information in \"Inventory\".'**
  String get menuIngredientSearchHelper;

  /// No description provided for @menuIngredientSearchHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Cheese'**
  String get menuIngredientSearchHint;

  /// Button to add ingredient if search result not found
  ///
  /// In en, this message translates to:
  /// **'Add Ingredient \"{name}\"'**
  String menuIngredientSearchAdd(String name);

  /// No description provided for @menuIngredientSearchErrorEmpty.
  ///
  /// In en, this message translates to:
  /// **'Ingredient must be set, please click to set.'**
  String get menuIngredientSearchErrorEmpty;

  /// No description provided for @menuIngredientSearchErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Product already has the same ingredient, cannot select repeatedly.'**
  String get menuIngredientSearchErrorRepeat;

  /// No description provided for @menuIngredientAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount Used'**
  String get menuIngredientAmountLabel;

  /// No description provided for @menuIngredientAmountHelper.
  ///
  /// In en, this message translates to:
  /// **'Default amount used.\nIf customers are able to adjust the amount,\nset different quantities in \"Quantity.\"'**
  String get menuIngredientAmountHelper;

  /// No description provided for @menuQuantityTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Add Quantity'**
  String get menuQuantityTitleCreate;

  /// No description provided for @menuQuantityTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get menuQuantityTitleUpdate;

  /// No description provided for @menuQuantityMetaAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
  String menuQuantityMetaAmount(num amount);

  /// No description provided for @menuQuantityMetaAdditionalPrice.
  ///
  /// In en, this message translates to:
  /// **'Price: {price}'**
  String menuQuantityMetaAdditionalPrice(String price);

  /// No description provided for @menuQuantityMetaAdditionalCost.
  ///
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
  String menuQuantityMetaAdditionalCost(String cost);

  /// No description provided for @menuQuantitySearchLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Quantity'**
  String get menuQuantitySearchLabel;

  /// No description provided for @menuQuantitySearchHelper.
  ///
  /// In en, this message translates to:
  /// **'After adding ingredient quantity, you can set related information in \"Quantity\".'**
  String get menuQuantitySearchHelper;

  /// No description provided for @menuQuantitySearchHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Large, Small'**
  String get menuQuantitySearchHint;

  /// Button to add quantity if search result not found
  ///
  /// In en, this message translates to:
  /// **'Add Quantity \"{name}\"'**
  String menuQuantitySearchAdd(String name);

  /// No description provided for @menuQuantitySearchErrorEmpty.
  ///
  /// In en, this message translates to:
  /// **'Quantity must be set, please click to set.'**
  String get menuQuantitySearchErrorEmpty;

  /// No description provided for @menuQuantitySearchErrorRepeat.
  ///
  /// In en, this message translates to:
  /// **'Product already has the same quantity, cannot select repeatedly.'**
  String get menuQuantitySearchErrorRepeat;

  /// No description provided for @menuQuantityAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount Used'**
  String get menuQuantityAmountLabel;

  /// No description provided for @menuQuantityAdditionalPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Additional Price'**
  String get menuQuantityAdditionalPriceLabel;

  /// No description provided for @menuQuantityAdditionalPriceHelper.
  ///
  /// In en, this message translates to:
  /// **'Set to 0 to indicate no additional charge for extra (or less) quantity.'**
  String get menuQuantityAdditionalPriceHelper;

  /// No description provided for @menuQuantityAdditionalCostLabel.
  ///
  /// In en, this message translates to:
  /// **'Additional Cost'**
  String get menuQuantityAdditionalCostLabel;

  /// No description provided for @menuQuantityAdditionalCostHelper.
  ///
  /// In en, this message translates to:
  /// **'Additional cost can be negative, e.g., \"Less\" reduces ingredient usage, reducing cost accordingly.'**
  String get menuQuantityAdditionalCostHelper;

  /// No description provided for @cashierTab.
  ///
  /// In en, this message translates to:
  /// **'Cashier'**
  String get cashierTab;

  /// No description provided for @cashierUnitLabel.
  ///
  /// In en, this message translates to:
  /// **'\${unit}'**
  String cashierUnitLabel(String unit);

  /// Label when setting currency quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get cashierCounterLabel;

  /// No description provided for @cashierToDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'Set as Default'**
  String get cashierToDefaultTitle;

  /// No description provided for @cashierToDefaultTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Cash Register Default Status'**
  String get cashierToDefaultTutorialTitle;

  /// No description provided for @cashierToDefaultTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'After setting the quantities of various currencies below,\nclick here to set the default status!\nThe set quantities will be the \"maximum\" for each currency status bar.'**
  String get cashierToDefaultTutorialContent;

  /// No description provided for @cashierToDefaultDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Adjust Cash Register Default?'**
  String get cashierToDefaultDialogTitle;

  /// No description provided for @cashierToDefaultDialogContent.
  ///
  /// In en, this message translates to:
  /// **'This will set the current cash register status as the default status.\nThis action will override previous settings.'**
  String get cashierToDefaultDialogContent;

  /// No description provided for @cashierChangerTitle.
  ///
  /// In en, this message translates to:
  /// **'Changer'**
  String get cashierChangerTitle;

  /// No description provided for @cashierChangerButton.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get cashierChangerButton;

  /// No description provided for @cashierChangerTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Cash Register Money Changer'**
  String get cashierChangerTutorialTitle;

  /// No description provided for @cashierChangerTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Exchange one hundred for 10 tens, for example.\nHelps to quickly adjust the cash register status.'**
  String get cashierChangerTutorialContent;

  /// No description provided for @cashierChangerErrorNoSelection.
  ///
  /// In en, this message translates to:
  /// **'Please select a combination to apply'**
  String get cashierChangerErrorNoSelection;

  /// No description provided for @cashierChangerErrorNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough \${unit}'**
  String cashierChangerErrorNotEnough(String unit);

  /// No description provided for @cashierChangerErrorInvalidHead.
  ///
  /// In en, this message translates to:
  /// **'Cannot exchange {count} of \${unit} to'**
  String cashierChangerErrorInvalidHead(int count, String unit);

  /// Concatenated multiple lines after `invalidHead` to form a complete sentence.
  ///
  /// In en, this message translates to:
  /// **'{count} of \${unit}'**
  String cashierChangerErrorInvalidBody(int count, String unit);

  /// No description provided for @cashierChangerFavoriteTab.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get cashierChangerFavoriteTab;

  /// No description provided for @cashierChangerFavoriteHint.
  ///
  /// In en, this message translates to:
  /// **'After selecting, please click \"Apply\" to use the combination.'**
  String get cashierChangerFavoriteHint;

  /// No description provided for @cashierChangerFavoriteEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Here can help you quickly convert different currencies.'**
  String get cashierChangerFavoriteEmptyBody;

  /// No description provided for @cashierChangerFavoriteItemFrom.
  ///
  /// In en, this message translates to:
  /// **'Exchange {count} of \${unit} to'**
  String cashierChangerFavoriteItemFrom(int count, String unit);

  /// No description provided for @cashierChangerFavoriteItemTo.
  ///
  /// In en, this message translates to:
  /// **'{count} of \${unit}'**
  String cashierChangerFavoriteItemTo(int count, String unit);

  /// No description provided for @cashierChangerCustomTab.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get cashierChangerCustomTab;

  /// No description provided for @cashierChangerCustomAddBtn.
  ///
  /// In en, this message translates to:
  /// **'Add Favorite'**
  String get cashierChangerCustomAddBtn;

  /// No description provided for @cashierChangerCustomCountLabel.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get cashierChangerCustomCountLabel;

  /// No description provided for @cashierChangerCustomUnitLabel.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get cashierChangerCustomUnitLabel;

  /// No description provided for @cashierChangerCustomUnitAddBtn.
  ///
  /// In en, this message translates to:
  /// **'Add Currency'**
  String get cashierChangerCustomUnitAddBtn;

  /// No description provided for @cashierChangerCustomDividerFrom.
  ///
  /// In en, this message translates to:
  /// **'Take'**
  String get cashierChangerCustomDividerFrom;

  /// No description provided for @cashierChangerCustomDividerTo.
  ///
  /// In en, this message translates to:
  /// **'Exchange to'**
  String get cashierChangerCustomDividerTo;

  /// No description provided for @cashierSurplusTitle.
  ///
  /// In en, this message translates to:
  /// **'Surplus'**
  String get cashierSurplusTitle;

  /// No description provided for @cashierSurplusButton.
  ///
  /// In en, this message translates to:
  /// **'Surplus'**
  String get cashierSurplusButton;

  /// No description provided for @cashierSurplusTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Surplus'**
  String get cashierSurplusTutorialTitle;

  /// No description provided for @cashierSurplusTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Surplus helps us at the end of each day,\ncalculate the difference between the current amount and the default amount.'**
  String get cashierSurplusTutorialContent;

  /// No description provided for @cashierSurplusErrorEmptyDefault.
  ///
  /// In en, this message translates to:
  /// **'Default status not set yet'**
  String get cashierSurplusErrorEmptyDefault;

  /// No description provided for @cashierSurplusTableHint.
  ///
  /// In en, this message translates to:
  /// **'Once you confirm that there are no issues with the cash register money, you can complete the surplus!'**
  String get cashierSurplusTableHint;

  /// No description provided for @cashierSurplusColumnName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, unit{Unit} currentCount{Current} diffCount{Difference} defaultCount{Default} other{UNKNOWN}}'**
  String cashierSurplusColumnName(String name);

  /// Allow users to customize currency when surplus.
  ///
  /// In en, this message translates to:
  /// **'Quantity of \${unit}'**
  String cashierSurplusCounterLabel(String unit);

  /// This is for display in error messages, e.g., "Quantity cannot be 0".
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get cashierSurplusCounterShortLabel;

  /// No description provided for @cashierSurplusCurrentTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Current Total'**
  String get cashierSurplusCurrentTotalLabel;

  /// No description provided for @cashierSurplusCurrentTotalHelper.
  ///
  /// In en, this message translates to:
  /// **'The total amount the cash register should have now.\nIf you find that the cash and this value don\'t match, think about whether you used the cash register to buy something today?'**
  String get cashierSurplusCurrentTotalHelper;

  /// No description provided for @cashierSurplusDiffTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Difference'**
  String get cashierSurplusDiffTotalLabel;

  /// No description provided for @cashierSurplusDiffTotalHelper.
  ///
  /// In en, this message translates to:
  /// **'The difference from the total amount of the cash register at the very beginning.\nThis can quickly help you understand how much money the cash register has gained today.'**
  String get cashierSurplusDiffTotalHelper;

  /// No description provided for @orderTitle.
  ///
  /// In en, this message translates to:
  /// **'Ordering'**
  String get orderTitle;

  /// No description provided for @orderBtn.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get orderBtn;

  /// No description provided for @orderTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Ordering!'**
  String get orderTutorialTitle;

  /// No description provided for @orderTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Once you have set up your menu, you can start ordering!\nLet\'s tap and go see what\'s available!\n'**
  String get orderTutorialContent;

  /// No description provided for @orderTutorialPrinterBtnTitle.
  ///
  /// In en, this message translates to:
  /// **'Printer Status Change'**
  String get orderTutorialPrinterBtnTitle;

  /// No description provided for @orderTutorialPrinterBtnContent.
  ///
  /// In en, this message translates to:
  /// **'Printer status has changed, please check.'**
  String get orderTutorialPrinterBtnContent;

  /// No description provided for @orderSnackbarPrinterConnected.
  ///
  /// In en, this message translates to:
  /// **'Printer connected: {names}'**
  String orderSnackbarPrinterConnected(String names);

  /// No description provided for @orderSnackbarPrinterDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Printer \"{name}\" disconnected'**
  String orderSnackbarPrinterDisconnected(String name);

  /// No description provided for @orderSnackbarCashierNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Insufficient cash in the cashier!'**
  String get orderSnackbarCashierNotEnough;

  /// No description provided for @orderSnackbarCashierUsingSmallMoney.
  ///
  /// In en, this message translates to:
  /// **'Using smaller denominations to give change'**
  String get orderSnackbarCashierUsingSmallMoney;

  /// No description provided for @orderSnackbarCashierUsingSmallMoneyHelper.
  ///
  /// In en, this message translates to:
  /// **'When giving change to customers, if the cashier doesn\'t have the appropriate denominations, this message will appear.\n\nFor example, if the total is \$65 and the customer pays \$100, the change should be \$35.\nIf the cashier only has two \$10 bills and more than three \$5 bills, this message will appear.\n\nTo avoid this prompt:\n• Go to the changer page and top up various denominations.\n• Go to the [settings page]({link}) to disable related prompts from the cashier.'**
  String orderSnackbarCashierUsingSmallMoneyHelper(String link);

  /// Proceed to the next step after confirming the items in your cart
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get orderActionCheckout;

  /// No description provided for @orderActionExchange.
  ///
  /// In en, this message translates to:
  /// **'Exchange'**
  String get orderActionExchange;

  /// No description provided for @orderActionStash.
  ///
  /// In en, this message translates to:
  /// **'Stash'**
  String get orderActionStash;

  /// No description provided for @orderActionReview.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get orderActionReview;

  /// Total revenue from orders in the order list
  ///
  /// In en, this message translates to:
  /// **'Revenue: {revenue}'**
  String orderLoaderMetaTotalRevenue(String revenue);

  /// Total cost from orders in the order list
  ///
  /// In en, this message translates to:
  /// **'Cost: {cost}'**
  String orderLoaderMetaTotalCost(String cost);

  /// Total number of orders in the order list
  ///
  /// In en, this message translates to:
  /// **'Count: {count}'**
  String orderLoaderMetaTotalCount(int count);

  /// No description provided for @orderLoaderEmpty.
  ///
  /// In en, this message translates to:
  /// **'No order records found'**
  String get orderLoaderEmpty;

  /// No description provided for @orderCatalogListEmpty.
  ///
  /// In en, this message translates to:
  /// **'No product categories set yet'**
  String get orderCatalogListEmpty;

  /// Product list display mode
  ///
  /// In en, this message translates to:
  /// **'{name, select, grid{Grid} list{List} other{UNKNOWN}}'**
  String orderProductListViewHelper(String name);

  /// No description provided for @orderProductListNoIngredient.
  ///
  /// In en, this message translates to:
  /// **'No ingredients'**
  String get orderProductListNoIngredient;

  /// No description provided for @orderPrinterEmpty.
  ///
  /// In en, this message translates to:
  /// **'No printers set yet'**
  String get orderPrinterEmpty;

  /// No description provided for @orderPrinterDividerUnused.
  ///
  /// In en, this message translates to:
  /// **'Unused'**
  String get orderPrinterDividerUnused;

  /// No description provided for @orderPrinterDividerConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get orderPrinterDividerConnecting;

  /// No description provided for @orderPrinterDividerConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get orderPrinterDividerConnected;

  /// No description provided for @orderPrinterErrorCreateReceipt.
  ///
  /// In en, this message translates to:
  /// **'Unable to generate receipt'**
  String get orderPrinterErrorCreateReceipt;

  /// No description provided for @orderCartActionBulk.
  ///
  /// In en, this message translates to:
  /// **'Bulk Actions'**
  String get orderCartActionBulk;

  /// No description provided for @orderCartActionToggle.
  ///
  /// In en, this message translates to:
  /// **'Toggle'**
  String get orderCartActionToggle;

  /// No description provided for @orderCartActionSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get orderCartActionSelectAll;

  /// No description provided for @orderCartActionDiscount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get orderCartActionDiscount;

  /// No description provided for @orderCartActionDiscountLabel.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get orderCartActionDiscountLabel;

  /// No description provided for @orderCartActionDiscountHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 30 means 70% off'**
  String get orderCartActionDiscountHint;

  /// No description provided for @orderCartActionDiscountHelper.
  ///
  /// In en, this message translates to:
  /// **'The number here represents the \"percentage\" off, i.e., 85 means 15% off. For precise prices, use \"Price Change\".'**
  String get orderCartActionDiscountHelper;

  /// No description provided for @orderCartActionDiscountSuffix.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get orderCartActionDiscountSuffix;

  /// No description provided for @orderCartActionChangePrice.
  ///
  /// In en, this message translates to:
  /// **'Change Price'**
  String get orderCartActionChangePrice;

  /// No description provided for @orderCartActionChangePriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get orderCartActionChangePriceLabel;

  /// No description provided for @orderCartActionChangePriceHint.
  ///
  /// In en, this message translates to:
  /// **'Price per item'**
  String get orderCartActionChangePriceHint;

  /// No description provided for @orderCartActionChangePricePrefix.
  ///
  /// In en, this message translates to:
  /// **'\$'**
  String get orderCartActionChangePricePrefix;

  /// No description provided for @orderCartActionChangePriceSuffix.
  ///
  /// In en, this message translates to:
  /// **''**
  String get orderCartActionChangePriceSuffix;

  /// No description provided for @orderCartActionChangeCount.
  ///
  /// In en, this message translates to:
  /// **'Change Quantity'**
  String get orderCartActionChangeCount;

  /// No description provided for @orderCartActionChangeCountLabel.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get orderCartActionChangeCountLabel;

  /// No description provided for @orderCartActionChangeCountHint.
  ///
  /// In en, this message translates to:
  /// **'Quantity of items'**
  String get orderCartActionChangeCountHint;

  /// No description provided for @orderCartActionChangeCountSuffix.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get orderCartActionChangeCountSuffix;

  /// No description provided for @orderCartActionFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get orderCartActionFree;

  /// No description provided for @orderCartActionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get orderCartActionDelete;

  /// No description provided for @orderCartSnapshotEmpty.
  ///
  /// In en, this message translates to:
  /// **'No items in cart'**
  String get orderCartSnapshotEmpty;

  /// Total price of items in the cart
  ///
  /// In en, this message translates to:
  /// **'Price: {price}'**
  String orderCartMetaTotalPrice(String price);

  /// Total number of items in the cart
  ///
  /// In en, this message translates to:
  /// **'Count: {count}'**
  String orderCartMetaTotalCount(int count);

  /// Price of the product
  ///
  /// In en, this message translates to:
  /// **'{price, select, 0{Free} other{\${price}}}'**
  String orderCartProductPrice(String price);

  /// No description provided for @orderCartProductIncrease.
  ///
  /// In en, this message translates to:
  /// **'Increase Quantity'**
  String get orderCartProductIncrease;

  /// No description provided for @orderCartProductDefaultQuantity.
  ///
  /// In en, this message translates to:
  /// **'Default Quantity'**
  String get orderCartProductDefaultQuantity;

  /// Ingredients and quantities of each item in the product list when ordering
  ///
  /// In en, this message translates to:
  /// **'{name} ({quantity})'**
  String orderCartProductIngredient(String name, String quantity);

  /// Prompt to users during ordering if the selected product doesn't require ingredient settings
  ///
  /// In en, this message translates to:
  /// **'{status, select, emptyCart{Please select a product to set its ingredients} differentProducts{Please select the same product to set its ingredients} noNeedIngredient{This product doesn\'t require ingredient settings} other{UNKNOWN}}'**
  String orderCartIngredientStatus(String status);

  /// During ordering, select the ingredient to set the quantity
  ///
  /// In en, this message translates to:
  /// **'Please select an ingredient to set quantity'**
  String get orderCartQuantityNotAble;

  /// No description provided for @orderCartQuantityLabel.
  ///
  /// In en, this message translates to:
  /// **'{name} ({amount})'**
  String orderCartQuantityLabel(String name, num amount);

  /// During ingredient setup, the quantity can be customized or set to default (no quantity used)
  ///
  /// In en, this message translates to:
  /// **'Default ({amount})'**
  String orderCartQuantityDefaultLabel(num amount);

  /// No description provided for @orderCheckoutEmptyCart.
  ///
  /// In en, this message translates to:
  /// **'Please make an order first.'**
  String get orderCheckoutEmptyCart;

  /// No description provided for @orderCheckoutActionStash.
  ///
  /// In en, this message translates to:
  /// **'Stash'**
  String get orderCheckoutActionStash;

  /// No description provided for @orderCheckoutActionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get orderCheckoutActionConfirm;

  /// No description provided for @orderCheckoutStashTab.
  ///
  /// In en, this message translates to:
  /// **'Stash'**
  String get orderCheckoutStashTab;

  /// No description provided for @orderCheckoutStashEmpty.
  ///
  /// In en, this message translates to:
  /// **'No items currently stashed.'**
  String get orderCheckoutStashEmpty;

  /// No description provided for @orderCheckoutStashNoProducts.
  ///
  /// In en, this message translates to:
  /// **'No products'**
  String get orderCheckoutStashNoProducts;

  /// No description provided for @orderCheckoutStashActionCheckout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get orderCheckoutStashActionCheckout;

  /// No description provided for @orderCheckoutStashActionRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get orderCheckoutStashActionRestore;

  /// No description provided for @orderCheckoutStashDialogCalculator.
  ///
  /// In en, this message translates to:
  /// **'Checkout Calculator'**
  String get orderCheckoutStashDialogCalculator;

  /// No description provided for @orderCheckoutStashDialogRestoreTitle.
  ///
  /// In en, this message translates to:
  /// **'Restore Stashed Order'**
  String get orderCheckoutStashDialogRestoreTitle;

  /// No description provided for @orderCheckoutStashDialogRestoreContent.
  ///
  /// In en, this message translates to:
  /// **'This action will override the current cart contents.'**
  String get orderCheckoutStashDialogRestoreContent;

  /// No description provided for @orderCheckoutStashDialogDeleteName.
  ///
  /// In en, this message translates to:
  /// **'order'**
  String get orderCheckoutStashDialogDeleteName;

  /// No description provided for @orderCheckoutAttributeTab.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get orderCheckoutAttributeTab;

  /// No description provided for @orderCheckoutDetailsTab.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get orderCheckoutDetailsTab;

  /// No description provided for @orderCheckoutDetailsCalculatorLabelPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get orderCheckoutDetailsCalculatorLabelPaid;

  /// No description provided for @orderCheckoutDetailsCalculatorLabelChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get orderCheckoutDetailsCalculatorLabelChange;

  /// Change given by the cashier after the customer's payment
  ///
  /// In en, this message translates to:
  /// **'Change: {change}'**
  String orderCheckoutDetailsSnapshotLabelChange(String change);

  /// No description provided for @orderCheckoutSnackbarPaidFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment is less than the order amount.'**
  String get orderCheckoutSnackbarPaidFailed;

  /// No description provided for @orderObjectViewEmpty.
  ///
  /// In en, this message translates to:
  /// **'No order records found'**
  String get orderObjectViewEmpty;

  /// No description provided for @orderObjectViewChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get orderObjectViewChange;

  /// Total price information after ordering
  ///
  /// In en, this message translates to:
  /// **'Total Price: {price}'**
  String orderObjectViewPriceTotal(String price);

  /// No description provided for @orderObjectViewPriceProducts.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get orderObjectViewPriceProducts;

  /// No description provided for @orderObjectViewPriceAttributes.
  ///
  /// In en, this message translates to:
  /// **'Customer Settings Price'**
  String get orderObjectViewPriceAttributes;

  /// No description provided for @orderObjectViewCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get orderObjectViewCost;

  /// No description provided for @orderObjectViewProfit.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get orderObjectViewProfit;

  /// No description provided for @orderObjectViewPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get orderObjectViewPaid;

  /// No description provided for @orderObjectViewNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get orderObjectViewNote;

  /// No description provided for @orderObjectViewDividerAttribute.
  ///
  /// In en, this message translates to:
  /// **'Customer Settings'**
  String get orderObjectViewDividerAttribute;

  /// No description provided for @orderObjectViewDividerProduct.
  ///
  /// In en, this message translates to:
  /// **'Product Information'**
  String get orderObjectViewDividerProduct;

  /// No description provided for @orderObjectViewProductPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get orderObjectViewProductPrice;

  /// No description provided for @orderObjectViewProductCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get orderObjectViewProductCost;

  /// No description provided for @orderObjectViewProductCount.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get orderObjectViewProductCount;

  /// No description provided for @orderObjectViewProductSinglePrice.
  ///
  /// In en, this message translates to:
  /// **'Unit Price'**
  String get orderObjectViewProductSinglePrice;

  /// No description provided for @orderObjectViewProductOriginalPrice.
  ///
  /// In en, this message translates to:
  /// **'Original Unit Price'**
  String get orderObjectViewProductOriginalPrice;

  /// No description provided for @orderObjectViewProductCatalog.
  ///
  /// In en, this message translates to:
  /// **'Product Category'**
  String get orderObjectViewProductCatalog;

  /// No description provided for @orderObjectViewProductIngredient.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get orderObjectViewProductIngredient;

  /// No description provided for @orderObjectViewProductDefaultQuantity.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get orderObjectViewProductDefaultQuantity;

  /// No description provided for @analysisTab.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get analysisTab;

  /// No description provided for @analysisHistoryBtn.
  ///
  /// In en, this message translates to:
  /// **'Records'**
  String get analysisHistoryBtn;

  /// No description provided for @analysisHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Records'**
  String get analysisHistoryTitle;

  /// No description provided for @analysisHistoryTitleEmpty.
  ///
  /// In en, this message translates to:
  /// **'No Order History Found'**
  String get analysisHistoryTitleEmpty;

  /// No description provided for @analysisHistoryCalendarTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get analysisHistoryCalendarTutorialTitle;

  /// No description provided for @analysisHistoryCalendarTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Swipe up and down to adjust the time period, such as month or week.\nSwipe left and right to adjust the date range.'**
  String get analysisHistoryCalendarTutorialContent;

  /// No description provided for @analysisHistoryExportBtn.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get analysisHistoryExportBtn;

  /// No description provided for @analysisHistoryExportTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Export Orders Data'**
  String get analysisHistoryExportTutorialTitle;

  /// No description provided for @analysisHistoryExportTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'Export orders externally for further analysis or backup.\nYou can export multi-day orders in the \"Transit\" page.'**
  String get analysisHistoryExportTutorialContent;

  /// Order ID for specific order in the order list.
  ///
  /// In en, this message translates to:
  /// **'ID: {id}'**
  String analysisHistoryOrderListMetaId(String id);

  /// Price of specific orders in the order list.
  ///
  /// In en, this message translates to:
  /// **'Price: {price}'**
  String analysisHistoryOrderListMetaPrice(num price);

  /// Payment amount for specific orders in the order list.
  ///
  /// In en, this message translates to:
  /// **'Paid: {paid}'**
  String analysisHistoryOrderListMetaPaid(num paid);

  /// Net profit for specific orders in the order list.
  ///
  /// In en, this message translates to:
  /// **'Profit: {profit}'**
  String analysisHistoryOrderListMetaProfit(num profit);

  /// Order ID for specific order in the order detailed page.
  ///
  /// In en, this message translates to:
  /// **'ID: {id}'**
  String analysisHistoryOrderTitle(String id);

  /// No description provided for @analysisHistoryOrderNotFound.
  ///
  /// In en, this message translates to:
  /// **'No relevant orders found'**
  String get analysisHistoryOrderNotFound;

  /// No description provided for @analysisHistoryOrderDeleteDialog.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the order for {name}?\nCash register and inventory data cannot be recovered.\nThis action cannot be undone.'**
  String analysisHistoryOrderDeleteDialog(String name);

  /// No description provided for @analysisGoalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Summary'**
  String get analysisGoalsTitle;

  /// No description provided for @analysisGoalsCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Count'**
  String get analysisGoalsCountTitle;

  /// No description provided for @analysisGoalsCountDescription.
  ///
  /// In en, this message translates to:
  /// **'The order count reflects the attractiveness of products to customers.\nIt represents the demand for your products in the market and helps you understand which products or time periods are most popular.\nA high order count may indicate the success of your pricing strategy or marketing activities and is one of the indicators of business model effectiveness.\nHowever, it\'s essential to note that simply pursuing a high order count may overlook profitability.'**
  String get analysisGoalsCountDescription;

  /// No description provided for @analysisGoalsRevenueTitle.
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get analysisGoalsRevenueTitle;

  /// No description provided for @analysisGoalsRevenueDescription.
  ///
  /// In en, this message translates to:
  /// **'Revenue represents the total sales amount and is an indicator of business scale.\nHigh revenue may indicate that your products are popular and selling well, but revenue alone cannot reflect the sustainability and profitability of the business.\nSometimes, to increase revenue, companies may adopt strategies such as price reductions, which may affect profitability.'**
  String get analysisGoalsRevenueDescription;

  /// No description provided for @analysisGoalsProfitTitle.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get analysisGoalsProfitTitle;

  /// No description provided for @analysisGoalsProfitDescription.
  ///
  /// In en, this message translates to:
  /// **'Profit is the balance after deducting operating costs from operating income and is crucial for the company\'s ongoing operations.\nProfit directly reflects operational efficiency and cost management capabilities.\nUnlike revenue, profit considers the business expenses, including raw material costs, labor, rent, etc.\nIt\'s a more practical indicator that helps you evaluate the effectiveness and sustainability of operations.'**
  String get analysisGoalsProfitDescription;

  /// No description provided for @analysisGoalsCostTitle.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get analysisGoalsCostTitle;

  /// No description provided for @analysisGoalsAchievedRate.
  ///
  /// In en, this message translates to:
  /// **'Profit Goal\n{rate}'**
  String analysisGoalsAchievedRate(String rate);

  /// No description provided for @analysisChartTitle.
  ///
  /// In en, this message translates to:
  /// **'Chart Analysis'**
  String get analysisChartTitle;

  /// No description provided for @analysisChartTitleCreate.
  ///
  /// In en, this message translates to:
  /// **'Create Chart'**
  String get analysisChartTitleCreate;

  /// No description provided for @analysisChartTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Chart'**
  String get analysisChartTitleUpdate;

  /// No description provided for @analysisChartTitleReorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder Charts'**
  String get analysisChartTitleReorder;

  /// No description provided for @analysisChartTutorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Chart Analysis'**
  String get analysisChartTutorialTitle;

  /// No description provided for @analysisChartTutorialContent.
  ///
  /// In en, this message translates to:
  /// **'With charts, you can visualize data changes more intuitively.\nStart designing charts to track your sales performance now!'**
  String get analysisChartTutorialContent;

  /// No description provided for @analysisChartCardEmptyData.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get analysisChartCardEmptyData;

  /// No description provided for @analysisChartCardTitleUpdate.
  ///
  /// In en, this message translates to:
  /// **'Edit Chart'**
  String get analysisChartCardTitleUpdate;

  /// No description provided for @analysisChartMetricName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, revenue{Revenue} cost{Cost} profit{Profit} count{Quantity} other{UNKNOWN}}'**
  String analysisChartMetricName(String name);

  /// No description provided for @analysisChartTargetName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, order{Order} catalog{Category} product{Product} ingredient{Ingredient} attribute{Attribute} other{UNKNOWN}}'**
  String analysisChartTargetName(String name);

  /// No description provided for @analysisChartRangeYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get analysisChartRangeYesterday;

  /// No description provided for @analysisChartRangeToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get analysisChartRangeToday;

  /// No description provided for @analysisChartRangeLastWeek.
  ///
  /// In en, this message translates to:
  /// **'Last Week'**
  String get analysisChartRangeLastWeek;

  /// No description provided for @analysisChartRangeThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get analysisChartRangeThisWeek;

  /// No description provided for @analysisChartRangeLast7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 Days'**
  String get analysisChartRangeLast7Days;

  /// No description provided for @analysisChartRangeLastMonth.
  ///
  /// In en, this message translates to:
  /// **'Last Month'**
  String get analysisChartRangeLastMonth;

  /// No description provided for @analysisChartRangeThisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get analysisChartRangeThisMonth;

  /// No description provided for @analysisChartRangeLast30Days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 Days'**
  String get analysisChartRangeLast30Days;

  /// No description provided for @analysisChartRangeTabName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, day{Date} week{Week} month{Month} custom{Custom} other{UNKNOWN}}'**
  String analysisChartRangeTabName(String name);

  /// No description provided for @analysisChartModalNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Chart Name'**
  String get analysisChartModalNameLabel;

  /// No description provided for @analysisChartModalNameHint.
  ///
  /// In en, this message translates to:
  /// **'For example: Daily Revenue'**
  String get analysisChartModalNameHint;

  /// No description provided for @analysisChartModalIgnoreEmptyLabel.
  ///
  /// In en, this message translates to:
  /// **'Ignore Empty Data'**
  String get analysisChartModalIgnoreEmptyLabel;

  /// No description provided for @analysisChartModalIgnoreEmptyHelper.
  ///
  /// In en, this message translates to:
  /// **'Do not display if a product or metric has no data for that period.'**
  String get analysisChartModalIgnoreEmptyHelper;

  /// No description provided for @analysisChartModalDivider.
  ///
  /// In en, this message translates to:
  /// **'Data Settings'**
  String get analysisChartModalDivider;

  /// No description provided for @analysisChartModalTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Chart Type'**
  String get analysisChartModalTypeLabel;

  /// No description provided for @analysisChartModalTypeName.
  ///
  /// In en, this message translates to:
  /// **'{name, select, cartesian{Time Series Chart} circular{Pie Chart} other{UNKNOWN}}'**
  String analysisChartModalTypeName(String name);

  /// No description provided for @analysisChartModalMetricLabel.
  ///
  /// In en, this message translates to:
  /// **'Metrics to View'**
  String get analysisChartModalMetricLabel;

  /// No description provided for @analysisChartModalMetricHelper.
  ///
  /// In en, this message translates to:
  /// **'Choose different types of metrics based on your objectives.'**
  String get analysisChartModalMetricHelper;

  /// No description provided for @analysisChartModalTargetLabel.
  ///
  /// In en, this message translates to:
  /// **'Item Category'**
  String get analysisChartModalTargetLabel;

  /// No description provided for @analysisChartModalTargetHelper.
  ///
  /// In en, this message translates to:
  /// **'Select the information to analyze in the chart.'**
  String get analysisChartModalTargetHelper;

  /// No description provided for @analysisChartModalTargetErrorEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please select an item category'**
  String get analysisChartModalTargetErrorEmpty;

  /// No description provided for @analysisChartModalTargetItemLabel.
  ///
  /// In en, this message translates to:
  /// **'Item Selection'**
  String get analysisChartModalTargetItemLabel;

  /// No description provided for @analysisChartModalTargetItemHelper.
  ///
  /// In en, this message translates to:
  /// **'Choose the items you want to observe, such as the quantity of a specific product within a certain period.'**
  String get analysisChartModalTargetItemHelper;

  /// No description provided for @analysisChartModalTargetItemSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get analysisChartModalTargetItemSelectAll;

  get orderCheckoutAttributeNoteHint => null;

  String get orderCheckoutAttributeNoteTitle => 'Order Note';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
