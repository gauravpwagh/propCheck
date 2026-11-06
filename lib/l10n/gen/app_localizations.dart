import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// App name shown in the title bar and launcher
  ///
  /// In en, this message translates to:
  /// **'PropCheck'**
  String get appTitle;

  /// No description provided for @commonNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get commonNext;

  /// No description provided for @commonBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get commonSkip;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commonDelete;

  /// No description provided for @commonEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get commonEdit;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @commonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @commonRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get commonRemove;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get commonYes;

  /// No description provided for @commonNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get commonNo;

  /// No description provided for @commonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// No description provided for @commonOptional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get commonOptional;

  /// No description provided for @commonLearnMore.
  ///
  /// In en, this message translates to:
  /// **'What is this?'**
  String get commonLearnMore;

  /// No description provided for @commonError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong: {error}'**
  String commonError(String error);

  /// No description provided for @commonLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get commonLoading;

  /// No description provided for @commonSqft.
  ///
  /// In en, this message translates to:
  /// **'sq ft'**
  String get commonSqft;

  /// No description provided for @commonSqm.
  ///
  /// In en, this message translates to:
  /// **'sq m'**
  String get commonSqm;

  /// No description provided for @commonMonths.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get commonMonths;

  /// No description provided for @commonYears.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get commonYears;

  /// No description provided for @commonPerMonth.
  ///
  /// In en, this message translates to:
  /// **'per month'**
  String get commonPerMonth;

  /// No description provided for @commonAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount (₹)'**
  String get commonAmountLabel;

  /// No description provided for @commonAmountHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 85,00,000 or 85 L'**
  String get commonAmountHint;

  /// No description provided for @commonAmountInWords.
  ///
  /// In en, this message translates to:
  /// **'= {amount}'**
  String commonAmountInWords(String amount);

  /// No description provided for @commonInvalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a number'**
  String get commonInvalidNumber;

  /// No description provided for @commonMustBePositive.
  ///
  /// In en, this message translates to:
  /// **'Must be more than zero'**
  String get commonMustBePositive;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'My properties'**
  String get homeTitle;

  /// No description provided for @homeNewEstimate.
  ///
  /// In en, this message translates to:
  /// **'New estimate'**
  String get homeNewEstimate;

  /// No description provided for @homeEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No properties yet'**
  String get homeEmptyTitle;

  /// No description provided for @homeEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Start a new estimate to see the true cost of a flat, including stamp duty, GST, loan costs and more.'**
  String get homeEmptyBody;

  /// No description provided for @homeSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name or locality'**
  String get homeSearchHint;

  /// No description provided for @homeSortUpdated.
  ///
  /// In en, this message translates to:
  /// **'Recently updated'**
  String get homeSortUpdated;

  /// No description provided for @homeSortTotal.
  ///
  /// In en, this message translates to:
  /// **'Total cost'**
  String get homeSortTotal;

  /// No description provided for @homeSortPsf.
  ///
  /// In en, this message translates to:
  /// **'₹ per sq ft'**
  String get homeSortPsf;

  /// No description provided for @homeShowArchived.
  ///
  /// In en, this message translates to:
  /// **'Show archived'**
  String get homeShowArchived;

  /// No description provided for @homeCompare.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get homeCompare;

  /// No description provided for @homeCompareSelect.
  ///
  /// In en, this message translates to:
  /// **'Select 2–3 properties to compare'**
  String get homeCompareSelect;

  /// No description provided for @homeArchive.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get homeArchive;

  /// No description provided for @homeUnarchive.
  ///
  /// In en, this message translates to:
  /// **'Unarchive'**
  String get homeUnarchive;

  /// No description provided for @homeArchived.
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get homeArchived;

  /// No description provided for @homeTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total {total}'**
  String homeTotalLabel(String total);

  /// No description provided for @homeRisks.
  ///
  /// In en, this message translates to:
  /// **'Scam patterns & risks'**
  String get homeRisks;

  /// No description provided for @homeSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get homeSettings;

  /// No description provided for @homeRecalcNeeded.
  ///
  /// In en, this message translates to:
  /// **'Rates changed'**
  String get homeRecalcNeeded;

  /// No description provided for @wizardTitle.
  ///
  /// In en, this message translates to:
  /// **'New estimate'**
  String get wizardTitle;

  /// No description provided for @wizardEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit estimate'**
  String get wizardEditTitle;

  /// No description provided for @wizardStepOf.
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String wizardStepOf(int current, int total);

  /// No description provided for @wizardSeeResult.
  ///
  /// In en, this message translates to:
  /// **'See result'**
  String get wizardSeeResult;

  /// No description provided for @wizardRunningTotal.
  ///
  /// In en, this message translates to:
  /// **'Running total'**
  String get wizardRunningTotal;

  /// No description provided for @wizardRunningMaxPrice.
  ///
  /// In en, this message translates to:
  /// **'Max quoted price'**
  String get wizardRunningMaxPrice;

  /// No description provided for @stepModeTitle.
  ///
  /// In en, this message translates to:
  /// **'What do you want to work out?'**
  String get stepModeTitle;

  /// No description provided for @stepModeWhy.
  ///
  /// In en, this message translates to:
  /// **'We can start from a price you were quoted, or from the total you can spend.'**
  String get stepModeWhy;

  /// No description provided for @modePriceToTotal.
  ///
  /// In en, this message translates to:
  /// **'I have a quoted price'**
  String get modePriceToTotal;

  /// No description provided for @modePriceToTotalHelp.
  ///
  /// In en, this message translates to:
  /// **'Find the total amount you will actually pay.'**
  String get modePriceToTotalHelp;

  /// No description provided for @modeBudgetToPrice.
  ///
  /// In en, this message translates to:
  /// **'I have a total budget'**
  String get modeBudgetToPrice;

  /// No description provided for @modeBudgetToPriceHelp.
  ///
  /// In en, this message translates to:
  /// **'Find the highest quoted price you can afford.'**
  String get modeBudgetToPriceHelp;

  /// No description provided for @stepLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Where is the property?'**
  String get stepLocationTitle;

  /// No description provided for @stepLocationWhy.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty and other rates depend on the city.'**
  String get stepLocationWhy;

  /// No description provided for @locationProfile.
  ///
  /// In en, this message translates to:
  /// **'Rates for'**
  String get locationProfile;

  /// No description provided for @locationLocality.
  ///
  /// In en, this message translates to:
  /// **'Locality or building'**
  String get locationLocality;

  /// No description provided for @locationLocalityHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Andheri East'**
  String get locationLocalityHint;

  /// No description provided for @locationName.
  ///
  /// In en, this message translates to:
  /// **'Name for this property'**
  String get locationName;

  /// No description provided for @locationNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Sunrise Heights 1BHK'**
  String get locationNameHint;

  /// No description provided for @stepTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'What type of flat?'**
  String get stepTypeTitle;

  /// No description provided for @stepTypeWhy.
  ///
  /// In en, this message translates to:
  /// **'Type sets the default carpet area and interiors budget.'**
  String get stepTypeWhy;

  /// No description provided for @stepStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'What stage is it at?'**
  String get stepStatusTitle;

  /// No description provided for @stepStatusWhy.
  ///
  /// In en, this message translates to:
  /// **'GST, builder charges and loan timing depend on this.'**
  String get stepStatusWhy;

  /// No description provided for @statusUnderConstruction.
  ///
  /// In en, this message translates to:
  /// **'Under construction'**
  String get statusUnderConstruction;

  /// No description provided for @statusUnderConstructionHelp.
  ///
  /// In en, this message translates to:
  /// **'Booked from the builder; possession later. GST applies.'**
  String get statusUnderConstructionHelp;

  /// No description provided for @statusReadyPossession.
  ///
  /// In en, this message translates to:
  /// **'Ready possession'**
  String get statusReadyPossession;

  /// No description provided for @statusReadyPossessionHelp.
  ///
  /// In en, this message translates to:
  /// **'New flat from the builder with OC issued. No GST.'**
  String get statusReadyPossessionHelp;

  /// No description provided for @statusResale.
  ///
  /// In en, this message translates to:
  /// **'Resale'**
  String get statusResale;

  /// No description provided for @statusResaleHelp.
  ///
  /// In en, this message translates to:
  /// **'Bought from the current owner.'**
  String get statusResaleHelp;

  /// No description provided for @stepAmountTitlePrice.
  ///
  /// In en, this message translates to:
  /// **'What is the quoted price?'**
  String get stepAmountTitlePrice;

  /// No description provided for @stepAmountTitleBudget.
  ///
  /// In en, this message translates to:
  /// **'What is your total budget?'**
  String get stepAmountTitleBudget;

  /// No description provided for @stepAmountWhyPrice.
  ///
  /// In en, this message translates to:
  /// **'The base price the seller or builder quoted, before taxes and extras.'**
  String get stepAmountWhyPrice;

  /// No description provided for @stepAmountWhyBudget.
  ///
  /// In en, this message translates to:
  /// **'Everything you can spend, including stamp duty, fees and interiors, plus the loan.'**
  String get stepAmountWhyBudget;

  /// No description provided for @stepAreaTitle.
  ///
  /// In en, this message translates to:
  /// **'How big is it?'**
  String get stepAreaTitle;

  /// No description provided for @stepAreaWhy.
  ///
  /// In en, this message translates to:
  /// **'Used for per-sq-ft rates, maintenance, renovation and the GST slab.'**
  String get stepAreaWhy;

  /// No description provided for @areaCarpet.
  ///
  /// In en, this message translates to:
  /// **'Carpet area'**
  String get areaCarpet;

  /// No description provided for @areaBuiltup.
  ///
  /// In en, this message translates to:
  /// **'Built-up area'**
  String get areaBuiltup;

  /// No description provided for @areaBuiltupHelp.
  ///
  /// In en, this message translates to:
  /// **'Leave as is to assume carpet × {ratio}.'**
  String areaBuiltupHelp(String ratio);

  /// No description provided for @areaUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get areaUnit;

  /// No description provided for @areaReadyReckoner.
  ///
  /// In en, this message translates to:
  /// **'Ready reckoner value (₹)'**
  String get areaReadyReckoner;

  /// No description provided for @areaReadyReckonerHelp.
  ///
  /// In en, this message translates to:
  /// **'Government valuation. Stamp duty is charged on the higher of this and the agreement value.'**
  String get areaReadyReckonerHelp;

  /// No description provided for @areaReference.
  ///
  /// In en, this message translates to:
  /// **'Typical rate in this area (₹ per sq ft carpet)'**
  String get areaReference;

  /// No description provided for @areaReferenceHelp.
  ///
  /// In en, this message translates to:
  /// **'If the quoted rate is far below this, we warn you.'**
  String get areaReferenceHelp;

  /// No description provided for @stepBuyerTitle.
  ///
  /// In en, this message translates to:
  /// **'Who is buying?'**
  String get stepBuyerTitle;

  /// No description provided for @stepBuyerWhy.
  ///
  /// In en, this message translates to:
  /// **'Women buyers pay lower stamp duty in Maharashtra.'**
  String get stepBuyerWhy;

  /// No description provided for @ownershipMale.
  ///
  /// In en, this message translates to:
  /// **'Man'**
  String get ownershipMale;

  /// No description provided for @ownershipFemale.
  ///
  /// In en, this message translates to:
  /// **'Woman'**
  String get ownershipFemale;

  /// No description provided for @ownershipJoint.
  ///
  /// In en, this message translates to:
  /// **'Jointly (man and woman)'**
  String get ownershipJoint;

  /// No description provided for @stepExtrasTitle.
  ///
  /// In en, this message translates to:
  /// **'Builder extras'**
  String get stepExtrasTitle;

  /// No description provided for @stepExtrasWhy.
  ///
  /// In en, this message translates to:
  /// **'Parking, floor rise and similar charges. Ones written into the agreement also attract stamp duty and GST.'**
  String get stepExtrasWhy;

  /// No description provided for @extrasAdd.
  ///
  /// In en, this message translates to:
  /// **'Add extra'**
  String get extrasAdd;

  /// No description provided for @extrasKind.
  ///
  /// In en, this message translates to:
  /// **'What for'**
  String get extrasKind;

  /// No description provided for @extrasKindHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. parking'**
  String get extrasKindHint;

  /// No description provided for @extrasInAgreement.
  ///
  /// In en, this message translates to:
  /// **'Included in the agreement'**
  String get extrasInAgreement;

  /// No description provided for @extrasEmpty.
  ///
  /// In en, this message translates to:
  /// **'No extras added.'**
  String get extrasEmpty;

  /// No description provided for @extrasCorpus.
  ///
  /// In en, this message translates to:
  /// **'Society corpus fund (₹)'**
  String get extrasCorpus;

  /// No description provided for @extraKindParking.
  ///
  /// In en, this message translates to:
  /// **'Parking'**
  String get extraKindParking;

  /// No description provided for @extraKindFloorRise.
  ///
  /// In en, this message translates to:
  /// **'Floor rise'**
  String get extraKindFloorRise;

  /// No description provided for @extraKindPlc.
  ///
  /// In en, this message translates to:
  /// **'Preferred location'**
  String get extraKindPlc;

  /// No description provided for @extraKindClubhouse.
  ///
  /// In en, this message translates to:
  /// **'Clubhouse'**
  String get extraKindClubhouse;

  /// No description provided for @extraKindDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Development charges'**
  String get extraKindDevelopment;

  /// No description provided for @stepMaintenanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Maintenance and society'**
  String get stepMaintenanceTitle;

  /// No description provided for @stepMaintenanceWhy.
  ///
  /// In en, this message translates to:
  /// **'Builders usually collect maintenance in advance at possession.'**
  String get stepMaintenanceWhy;

  /// No description provided for @maintenanceMonths.
  ///
  /// In en, this message translates to:
  /// **'Months collected in advance'**
  String get maintenanceMonths;

  /// No description provided for @maintenanceRate.
  ///
  /// In en, this message translates to:
  /// **'Maintenance rate (₹ per sq ft per month)'**
  String get maintenanceRate;

  /// No description provided for @maintenanceTransferFee.
  ///
  /// In en, this message translates to:
  /// **'Society transfer fee (₹)'**
  String get maintenanceTransferFee;

  /// No description provided for @stepResaleTitle.
  ///
  /// In en, this message translates to:
  /// **'About the building'**
  String get stepResaleTitle;

  /// No description provided for @stepResaleWhy.
  ///
  /// In en, this message translates to:
  /// **'Older buildings get shorter loans and need more renovation.'**
  String get stepResaleWhy;

  /// No description provided for @resaleBuildingYear.
  ///
  /// In en, this message translates to:
  /// **'Year the building was completed'**
  String get resaleBuildingYear;

  /// No description provided for @resaleHasOc.
  ///
  /// In en, this message translates to:
  /// **'Building has an occupancy certificate (OC)'**
  String get resaleHasOc;

  /// No description provided for @resaleSellerLoan.
  ///
  /// In en, this message translates to:
  /// **'Seller\'s outstanding home loan (₹)'**
  String get resaleSellerLoan;

  /// No description provided for @resaleSellerLoanHelp.
  ///
  /// In en, this message translates to:
  /// **'Doesn\'t change your cost, but part of your payment goes to the seller\'s bank.'**
  String get resaleSellerLoanHelp;

  /// No description provided for @resaleBrokerage.
  ///
  /// In en, this message translates to:
  /// **'Brokerage (% of price)'**
  String get resaleBrokerage;

  /// No description provided for @invalidYear.
  ///
  /// In en, this message translates to:
  /// **'Enter a year between 1900 and {max}'**
  String invalidYear(int max);

  /// No description provided for @stepUcTitle.
  ///
  /// In en, this message translates to:
  /// **'About the project'**
  String get stepUcTitle;

  /// No description provided for @stepUcWhy.
  ///
  /// In en, this message translates to:
  /// **'Delays cost you pre-EMI interest and rent while you wait.'**
  String get stepUcWhy;

  /// No description provided for @ucRera.
  ///
  /// In en, this message translates to:
  /// **'MahaRERA registration number'**
  String get ucRera;

  /// No description provided for @ucReraHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. P51800012345'**
  String get ucReraHint;

  /// No description provided for @ucMonths.
  ///
  /// In en, this message translates to:
  /// **'Months until possession'**
  String get ucMonths;

  /// No description provided for @ucRent.
  ///
  /// In en, this message translates to:
  /// **'Rent you pay meanwhile (₹ per month)'**
  String get ucRent;

  /// No description provided for @stepFinanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Home loan'**
  String get stepFinanceTitle;

  /// No description provided for @stepFinanceWhy.
  ///
  /// In en, this message translates to:
  /// **'We estimate how much a bank will probably lend and what it adds to your costs.'**
  String get stepFinanceWhy;

  /// No description provided for @financeUsingLoan.
  ///
  /// In en, this message translates to:
  /// **'I will take a home loan'**
  String get financeUsingLoan;

  /// No description provided for @financeAge.
  ///
  /// In en, this message translates to:
  /// **'Your age'**
  String get financeAge;

  /// No description provided for @financeEmployment.
  ///
  /// In en, this message translates to:
  /// **'Employment'**
  String get financeEmployment;

  /// No description provided for @employmentSalaried.
  ///
  /// In en, this message translates to:
  /// **'Salaried'**
  String get employmentSalaried;

  /// No description provided for @employmentSelfEmployed.
  ///
  /// In en, this message translates to:
  /// **'Self-employed'**
  String get employmentSelfEmployed;

  /// No description provided for @financeIncome.
  ///
  /// In en, this message translates to:
  /// **'Net monthly income (₹)'**
  String get financeIncome;

  /// No description provided for @financeExistingEmi.
  ///
  /// In en, this message translates to:
  /// **'Existing EMIs (₹ per month)'**
  String get financeExistingEmi;

  /// No description provided for @financeOwnFunds.
  ///
  /// In en, this message translates to:
  /// **'Own funds available (₹)'**
  String get financeOwnFunds;

  /// No description provided for @financeOwnFundsHelp.
  ///
  /// In en, this message translates to:
  /// **'Optional. We\'ll warn you if the cash you need is more than this.'**
  String get financeOwnFundsHelp;

  /// No description provided for @financeRate.
  ///
  /// In en, this message translates to:
  /// **'Interest rate (% per year)'**
  String get financeRate;

  /// No description provided for @financeTenure.
  ///
  /// In en, this message translates to:
  /// **'Tenure you want (years)'**
  String get financeTenure;

  /// No description provided for @stepOneTimeTitle.
  ///
  /// In en, this message translates to:
  /// **'One-time costs'**
  String get stepOneTimeTitle;

  /// No description provided for @stepOneTimeWhy.
  ///
  /// In en, this message translates to:
  /// **'Easy to forget, but they come out of your pocket.'**
  String get stepOneTimeWhy;

  /// No description provided for @oneTimeLegal.
  ///
  /// In en, this message translates to:
  /// **'Lawyer fees (₹)'**
  String get oneTimeLegal;

  /// No description provided for @oneTimeInteriors.
  ///
  /// In en, this message translates to:
  /// **'Interiors and furnishing (₹)'**
  String get oneTimeInteriors;

  /// No description provided for @resultTitle.
  ///
  /// In en, this message translates to:
  /// **'Result'**
  String get resultTitle;

  /// No description provided for @resultTotal.
  ///
  /// In en, this message translates to:
  /// **'Total you will pay'**
  String get resultTotal;

  /// No description provided for @resultExtraOverQuoted.
  ///
  /// In en, this message translates to:
  /// **'{amount} ({pct}%) more than the quoted price'**
  String resultExtraOverQuoted(String amount, String pct);

  /// No description provided for @resultOwnFunds.
  ///
  /// In en, this message translates to:
  /// **'Cash you need'**
  String get resultOwnFunds;

  /// No description provided for @resultOwnFundsHelp.
  ///
  /// In en, this message translates to:
  /// **'Total minus the probable loan.'**
  String get resultOwnFundsHelp;

  /// No description provided for @resultMaxPrice.
  ///
  /// In en, this message translates to:
  /// **'Highest quoted price you can afford'**
  String get resultMaxPrice;

  /// No description provided for @resultMaxPriceHelp.
  ///
  /// In en, this message translates to:
  /// **'Rounded down to ₹10,000. Total at this price: {total}.'**
  String resultMaxPriceHelp(String total);

  /// No description provided for @resultGstSlabNote.
  ///
  /// In en, this message translates to:
  /// **'This is close to the ₹45 lakh affordable-housing GST limit. A small price change can move GST between 1% and 5%.'**
  String get resultGstSlabNote;

  /// No description provided for @resultBreakdown.
  ///
  /// In en, this message translates to:
  /// **'Breakdown'**
  String get resultBreakdown;

  /// No description provided for @groupPriceAndTaxes.
  ///
  /// In en, this message translates to:
  /// **'Price & taxes'**
  String get groupPriceAndTaxes;

  /// No description provided for @groupBuilderAndSociety.
  ///
  /// In en, this message translates to:
  /// **'Builder & society'**
  String get groupBuilderAndSociety;

  /// No description provided for @groupLoanCosts.
  ///
  /// In en, this message translates to:
  /// **'Loan costs'**
  String get groupLoanCosts;

  /// No description provided for @groupMovingIn.
  ///
  /// In en, this message translates to:
  /// **'Moving in'**
  String get groupMovingIn;

  /// No description provided for @resultLoanCard.
  ///
  /// In en, this message translates to:
  /// **'Probable loan'**
  String get resultLoanCard;

  /// No description provided for @resultLoanNone.
  ///
  /// In en, this message translates to:
  /// **'No loan'**
  String get resultLoanNone;

  /// No description provided for @resultLoanEmi.
  ///
  /// In en, this message translates to:
  /// **'EMI {emi} per month'**
  String resultLoanEmi(String emi);

  /// No description provided for @resultLoanTenure.
  ///
  /// In en, this message translates to:
  /// **'Tenure {years} years'**
  String resultLoanTenure(int years);

  /// No description provided for @resultLoanByIncome.
  ///
  /// In en, this message translates to:
  /// **'By income'**
  String get resultLoanByIncome;

  /// No description provided for @resultLoanByLtv.
  ///
  /// In en, this message translates to:
  /// **'By loan-to-value'**
  String get resultLoanByLtv;

  /// No description provided for @resultLoanNeedsIncome.
  ///
  /// In en, this message translates to:
  /// **'Enter your net monthly income in the Home loan step to estimate how much a bank may lend.'**
  String get resultLoanNeedsIncome;

  /// No description provided for @bindingLtv.
  ///
  /// In en, this message translates to:
  /// **'Limited by loan-to-value: banks lend only part of the agreement value.'**
  String get bindingLtv;

  /// No description provided for @bindingIncomeMaxTenure.
  ///
  /// In en, this message translates to:
  /// **'Limited by your income over the maximum tenure banks allow.'**
  String get bindingIncomeMaxTenure;

  /// No description provided for @bindingIncomeRequestedTenure.
  ///
  /// In en, this message translates to:
  /// **'Limited by your income over the tenure you chose.'**
  String get bindingIncomeRequestedTenure;

  /// No description provided for @bindingIncomeRetirement.
  ///
  /// In en, this message translates to:
  /// **'Limited by your income: the tenure ends at retirement age.'**
  String get bindingIncomeRetirement;

  /// No description provided for @bindingIncomeBuildingLife.
  ///
  /// In en, this message translates to:
  /// **'Limited by your income: the tenure is cut short by the building\'s remaining life.'**
  String get bindingIncomeBuildingLife;

  /// No description provided for @bindingNoLoan.
  ///
  /// In en, this message translates to:
  /// **'You are not taking a loan.'**
  String get bindingNoLoan;

  /// No description provided for @resultPerSqft.
  ///
  /// In en, this message translates to:
  /// **'Per sq ft'**
  String get resultPerSqft;

  /// No description provided for @resultQuotedCarpet.
  ///
  /// In en, this message translates to:
  /// **'Quoted, carpet'**
  String get resultQuotedCarpet;

  /// No description provided for @resultQuotedBuiltup.
  ///
  /// In en, this message translates to:
  /// **'Quoted, built-up'**
  String get resultQuotedBuiltup;

  /// No description provided for @resultAllInCarpet.
  ///
  /// In en, this message translates to:
  /// **'All-in, carpet'**
  String get resultAllInCarpet;

  /// No description provided for @resultAllInBuiltup.
  ///
  /// In en, this message translates to:
  /// **'All-in, built-up'**
  String get resultAllInBuiltup;

  /// No description provided for @resultLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading (built-up over carpet)'**
  String get resultLoading;

  /// No description provided for @resultPerSqftValue.
  ///
  /// In en, this message translates to:
  /// **'{amount}/sq ft'**
  String resultPerSqftValue(String amount);

  /// No description provided for @resultFlags.
  ///
  /// In en, this message translates to:
  /// **'Things to check'**
  String get resultFlags;

  /// No description provided for @resultNoFlags.
  ///
  /// In en, this message translates to:
  /// **'No red flags from what you entered.'**
  String get resultNoFlags;

  /// No description provided for @resultPayments.
  ///
  /// In en, this message translates to:
  /// **'Payment notes'**
  String get resultPayments;

  /// No description provided for @resultTds.
  ///
  /// In en, this message translates to:
  /// **'Deduct TDS of {amount} (1%) from the payment to the seller and deposit it with the tax department. This is not an extra cost.'**
  String resultTds(String amount);

  /// No description provided for @resultSellerPayoff.
  ///
  /// In en, this message translates to:
  /// **'{amount} of your payment goes to the seller\'s bank to close their loan. Your total does not change.'**
  String resultSellerPayoff(String amount);

  /// No description provided for @resultUncertainties.
  ///
  /// In en, this message translates to:
  /// **'Keep in mind'**
  String get resultUncertainties;

  /// No description provided for @uncertaintyRates.
  ///
  /// In en, this message translates to:
  /// **'Rates are as of {date}. Check current stamp duty and GST before you pay.'**
  String uncertaintyRates(String date);

  /// No description provided for @uncertaintyValuation.
  ///
  /// In en, this message translates to:
  /// **'The bank may value the flat lower than the price, which reduces the loan.'**
  String get uncertaintyValuation;

  /// No description provided for @uncertaintyCharges.
  ///
  /// In en, this message translates to:
  /// **'Builder and society charges vary; get them in writing.'**
  String get uncertaintyCharges;

  /// No description provided for @uncertaintyUcDelay.
  ///
  /// In en, this message translates to:
  /// **'Under-construction projects are often delayed, which adds pre-EMI interest and rent.'**
  String get uncertaintyUcDelay;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'PropCheck gives estimates only. It is not legal or financial advice. Check with a lawyer, your bank and a chartered accountant before you commit.'**
  String get disclaimer;

  /// No description provided for @resultSave.
  ///
  /// In en, this message translates to:
  /// **'Save property'**
  String get resultSave;

  /// No description provided for @resultSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get resultSaved;

  /// No description provided for @resultEditInputs.
  ///
  /// In en, this message translates to:
  /// **'Edit inputs'**
  String get resultEditInputs;

  /// No description provided for @lineAgreementValue.
  ///
  /// In en, this message translates to:
  /// **'Agreement value'**
  String get lineAgreementValue;

  /// No description provided for @lineStampDuty.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty'**
  String get lineStampDuty;

  /// No description provided for @lineRegistration.
  ///
  /// In en, this message translates to:
  /// **'Registration fee'**
  String get lineRegistration;

  /// No description provided for @lineGst.
  ///
  /// In en, this message translates to:
  /// **'GST'**
  String get lineGst;

  /// No description provided for @lineBuilderExtrasOutsideAgreement.
  ///
  /// In en, this message translates to:
  /// **'Builder extras (outside agreement)'**
  String get lineBuilderExtrasOutsideAgreement;

  /// No description provided for @lineCorpus.
  ///
  /// In en, this message translates to:
  /// **'Society corpus'**
  String get lineCorpus;

  /// No description provided for @lineAdvanceMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Advance maintenance'**
  String get lineAdvanceMaintenance;

  /// No description provided for @lineSocietyTransfer.
  ///
  /// In en, this message translates to:
  /// **'Society transfer fee'**
  String get lineSocietyTransfer;

  /// No description provided for @lineBrokerage.
  ///
  /// In en, this message translates to:
  /// **'Brokerage (incl. GST)'**
  String get lineBrokerage;

  /// No description provided for @lineRenovation.
  ///
  /// In en, this message translates to:
  /// **'Renovation'**
  String get lineRenovation;

  /// No description provided for @lineLoanProcessing.
  ///
  /// In en, this message translates to:
  /// **'Loan processing fee (incl. GST)'**
  String get lineLoanProcessing;

  /// No description provided for @lineMortgageStampDuty.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty on loan agreement'**
  String get lineMortgageStampDuty;

  /// No description provided for @lineLegal.
  ///
  /// In en, this message translates to:
  /// **'Lawyer fees'**
  String get lineLegal;

  /// No description provided for @linePreEmiInterest.
  ///
  /// In en, this message translates to:
  /// **'Pre-EMI interest until possession'**
  String get linePreEmiInterest;

  /// No description provided for @lineRentOverlap.
  ///
  /// In en, this message translates to:
  /// **'Rent until possession'**
  String get lineRentOverlap;

  /// No description provided for @lineInteriors.
  ///
  /// In en, this message translates to:
  /// **'Interiors'**
  String get lineInteriors;

  /// No description provided for @infoAgreementValue.
  ///
  /// In en, this message translates to:
  /// **'The price written in your sale agreement: the quoted price plus any extras (such as parking) included in the agreement.'**
  String get infoAgreementValue;

  /// No description provided for @infoStampDuty.
  ///
  /// In en, this message translates to:
  /// **'A state tax on the sale agreement, charged on the higher of the agreement value and the government ready reckoner value. In Mumbai it includes metro cess; women buyers get a 1% concession.'**
  String get infoStampDuty;

  /// No description provided for @infoRegistration.
  ///
  /// In en, this message translates to:
  /// **'Fee to register the agreement with the sub-registrar: 1% of the agreement value, capped at ₹30,000.'**
  String get infoRegistration;

  /// No description provided for @infoGst.
  ///
  /// In en, this message translates to:
  /// **'Goods and services tax on under-construction flats only: 1% for affordable housing (carpet up to 60 m² and value up to ₹45 lakh), otherwise 5%. Ready flats with OC and resale flats pay no GST.'**
  String get infoGst;

  /// No description provided for @infoBuilderExtrasOutsideAgreement.
  ///
  /// In en, this message translates to:
  /// **'Charges the builder collects separately from the agreement, such as clubhouse membership. No stamp duty, but you still pay them.'**
  String get infoBuilderExtrasOutsideAgreement;

  /// No description provided for @infoCorpus.
  ///
  /// In en, this message translates to:
  /// **'A one-time contribution to the society\'s reserve fund, collected by the builder.'**
  String get infoCorpus;

  /// No description provided for @infoAdvanceMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Builders collect society maintenance in advance, usually 12–24 months, at possession.'**
  String get infoAdvanceMaintenance;

  /// No description provided for @infoSocietyTransfer.
  ///
  /// In en, this message translates to:
  /// **'Fee the housing society charges to transfer membership and the share certificate to you.'**
  String get infoSocietyTransfer;

  /// No description provided for @infoBrokerage.
  ///
  /// In en, this message translates to:
  /// **'The agent\'s commission, usually 1–2% of the price, plus 18% GST.'**
  String get infoBrokerage;

  /// No description provided for @infoRenovation.
  ///
  /// In en, this message translates to:
  /// **'A rough allowance for repairs, rising with the building\'s age.'**
  String get infoRenovation;

  /// No description provided for @infoLoanProcessing.
  ///
  /// In en, this message translates to:
  /// **'One-time fee the bank charges to process the loan, plus 18% GST.'**
  String get infoLoanProcessing;

  /// No description provided for @infoMortgageStampDuty.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty on the loan (mortgage) agreement, capped at ₹10,000 in Maharashtra.'**
  String get infoMortgageStampDuty;

  /// No description provided for @infoLegal.
  ///
  /// In en, this message translates to:
  /// **'Lawyer fees for title search and agreement review. Don\'t skip this.'**
  String get infoLegal;

  /// No description provided for @infoPreEmiInterest.
  ///
  /// In en, this message translates to:
  /// **'While the flat is being built, the bank releases the loan in stages and you pay interest on what has been released. We assume half the loan is out on average.'**
  String get infoPreEmiInterest;

  /// No description provided for @infoRentOverlap.
  ///
  /// In en, this message translates to:
  /// **'Rent you keep paying until you can move in.'**
  String get infoRentOverlap;

  /// No description provided for @infoInteriors.
  ///
  /// In en, this message translates to:
  /// **'Furniture, kitchen, painting and fittings. Change this to your own budget.'**
  String get infoInteriors;

  /// No description provided for @flagNoReraTitle.
  ///
  /// In en, this message translates to:
  /// **'No MahaRERA number'**
  String get flagNoReraTitle;

  /// No description provided for @flagNoReraAction.
  ///
  /// In en, this message translates to:
  /// **'Every under-construction project must be registered with MahaRERA. Ask for the number and check it on the MahaRERA website before you pay anything.'**
  String get flagNoReraAction;

  /// No description provided for @flagNoOcTitle.
  ///
  /// In en, this message translates to:
  /// **'No occupancy certificate'**
  String get flagNoOcTitle;

  /// No description provided for @flagNoOcAction.
  ///
  /// In en, this message translates to:
  /// **'Without an OC the building may be illegal; banks may refuse a loan and the society can\'t be formed properly. Ask for the OC from the municipal corporation.'**
  String get flagNoOcAction;

  /// No description provided for @flagGstSlabEdgeTitle.
  ///
  /// In en, this message translates to:
  /// **'Just above the affordable GST limit'**
  String get flagGstSlabEdgeTitle;

  /// No description provided for @flagGstSlabEdgeAction.
  ///
  /// In en, this message translates to:
  /// **'The agreement value is just over ₹45 lakh, so GST is 5% instead of 1%. Ask whether some extras can be left out of the agreement or the price adjusted.'**
  String get flagGstSlabEdgeAction;

  /// No description provided for @flagStampOnReadyReckonerTitle.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty on ready reckoner value'**
  String get flagStampOnReadyReckonerTitle;

  /// No description provided for @flagStampOnReadyReckonerAction.
  ///
  /// In en, this message translates to:
  /// **'The government value is higher than your agreement value, so stamp duty is charged on the higher amount. The difference may also have income-tax effects; ask a CA.'**
  String get flagStampOnReadyReckonerAction;

  /// No description provided for @flagVeryOldBuildingTitle.
  ///
  /// In en, this message translates to:
  /// **'Very old building'**
  String get flagVeryOldBuildingTitle;

  /// No description provided for @flagVeryOldBuildingAction.
  ///
  /// In en, this message translates to:
  /// **'Buildings this old may need redevelopment soon; banks give short loans or none. Get a structural audit and ask about redevelopment plans.'**
  String get flagVeryOldBuildingAction;

  /// No description provided for @flagOldBuildingTitle.
  ///
  /// In en, this message translates to:
  /// **'Old building'**
  String get flagOldBuildingTitle;

  /// No description provided for @flagOldBuildingAction.
  ///
  /// In en, this message translates to:
  /// **'Expect higher repairs and shorter loan tenure. Ask for the latest structural audit.'**
  String get flagOldBuildingAction;

  /// No description provided for @flagFundsShortfallTitle.
  ///
  /// In en, this message translates to:
  /// **'Not enough own funds'**
  String get flagFundsShortfallTitle;

  /// No description provided for @flagFundsShortfallAction.
  ///
  /// In en, this message translates to:
  /// **'The cash you need is more than the own funds you entered. Look at a lower price, a bigger loan or a co-applicant.'**
  String get flagFundsShortfallAction;

  /// No description provided for @flagTenureCutByBuildingTitle.
  ///
  /// In en, this message translates to:
  /// **'Loan tenure cut by building age'**
  String get flagTenureCutByBuildingTitle;

  /// No description provided for @flagTenureCutByBuildingAction.
  ///
  /// In en, this message translates to:
  /// **'Banks won\'t lend beyond the building\'s remaining life, so the loan is shorter and smaller. Check with your bank before you commit.'**
  String get flagTenureCutByBuildingAction;

  /// No description provided for @flagSellerLoanTitle.
  ///
  /// In en, this message translates to:
  /// **'Seller has a home loan'**
  String get flagSellerLoanTitle;

  /// No description provided for @flagSellerLoanAction.
  ///
  /// In en, this message translates to:
  /// **'Pay the seller\'s bank directly, collect the original documents and a loan closure letter before registration completes.'**
  String get flagSellerLoanAction;

  /// No description provided for @flagHighLoadingTitle.
  ///
  /// In en, this message translates to:
  /// **'High loading'**
  String get flagHighLoadingTitle;

  /// No description provided for @flagHighLoadingAction.
  ///
  /// In en, this message translates to:
  /// **'Built-up area is much larger than carpet. Compare flats on carpet-area price, which is what RERA requires builders to quote.'**
  String get flagHighLoadingAction;

  /// No description provided for @flagBelowMarketPriceTitle.
  ///
  /// In en, this message translates to:
  /// **'Price far below the area rate'**
  String get flagBelowMarketPriceTitle;

  /// No description provided for @flagBelowMarketPriceAction.
  ///
  /// In en, this message translates to:
  /// **'A very low price can signal a scam, a legal problem or a building issue. Verify the seller and title carefully.'**
  String get flagBelowMarketPriceAction;

  /// No description provided for @flagRiskAreaTitle.
  ///
  /// In en, this message translates to:
  /// **'Known risk in this area'**
  String get flagRiskAreaTitle;

  /// No description provided for @flagRiskAreaAction.
  ///
  /// In en, this message translates to:
  /// **'{note}'**
  String flagRiskAreaAction(String note);

  /// No description provided for @severityCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get severityCritical;

  /// No description provided for @severityWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get severityWarning;

  /// No description provided for @severityInfo.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get severityInfo;

  /// No description provided for @homeItemSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{type} · {status}'**
  String homeItemSubtitle(String type, String status);

  /// No description provided for @homeItemPsf.
  ///
  /// In en, this message translates to:
  /// **'{amount}/sq ft all-in'**
  String homeItemPsf(String amount);

  /// No description provided for @homeFlagCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 critical flag} other{{count} critical flags}}'**
  String homeFlagCount(int count);

  /// No description provided for @homeSelected.
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String homeSelected(int count);

  /// No description provided for @homeNoMatches.
  ///
  /// In en, this message translates to:
  /// **'No properties match your search.'**
  String get homeNoMatches;

  /// No description provided for @homeSort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get homeSort;

  /// No description provided for @homeMaxPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Max price {price}'**
  String homeMaxPriceLabel(String price);

  /// No description provided for @detailRatesVersion.
  ///
  /// In en, this message translates to:
  /// **'Calculated with rates v{version} (as of {date})'**
  String detailRatesVersion(int version, String date);

  /// No description provided for @detailOutdated.
  ///
  /// In en, this message translates to:
  /// **'Rates have changed since this was saved (now v{version}).'**
  String detailOutdated(int version);

  /// No description provided for @detailRecalculate.
  ///
  /// In en, this message translates to:
  /// **'Recalculate with current rates'**
  String get detailRecalculate;

  /// No description provided for @detailRecalculated.
  ///
  /// In en, this message translates to:
  /// **'Recalculated with current rates'**
  String get detailRecalculated;

  /// No description provided for @detailDuplicate.
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get detailDuplicate;

  /// No description provided for @detailDuplicateSuffix.
  ///
  /// In en, this message translates to:
  /// **' (copy)'**
  String get detailDuplicateSuffix;

  /// No description provided for @detailDuplicated.
  ///
  /// In en, this message translates to:
  /// **'Copy created'**
  String get detailDuplicated;

  /// No description provided for @detailDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this property?'**
  String get detailDeleteTitle;

  /// No description provided for @detailDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Its inputs and checklist progress will be removed from this device. This can\'t be undone.'**
  String get detailDeleteBody;

  /// No description provided for @detailNotFound.
  ///
  /// In en, this message translates to:
  /// **'This property no longer exists.'**
  String get detailNotFound;

  /// No description provided for @detailInputs.
  ///
  /// In en, this message translates to:
  /// **'Your inputs'**
  String get detailInputs;

  /// No description provided for @detailInputsHelp.
  ///
  /// In en, this message translates to:
  /// **'Tap a section to change it.'**
  String get detailInputsHelp;

  /// No description provided for @sectionMode.
  ///
  /// In en, this message translates to:
  /// **'What you\'re working out'**
  String get sectionMode;

  /// No description provided for @sectionLocation.
  ///
  /// In en, this message translates to:
  /// **'Location and name'**
  String get sectionLocation;

  /// No description provided for @sectionType.
  ///
  /// In en, this message translates to:
  /// **'Flat type'**
  String get sectionType;

  /// No description provided for @sectionStatus.
  ///
  /// In en, this message translates to:
  /// **'Stage'**
  String get sectionStatus;

  /// No description provided for @sectionAmount.
  ///
  /// In en, this message translates to:
  /// **'Price or budget'**
  String get sectionAmount;

  /// No description provided for @sectionArea.
  ///
  /// In en, this message translates to:
  /// **'Area'**
  String get sectionArea;

  /// No description provided for @sectionBuyer.
  ///
  /// In en, this message translates to:
  /// **'Buyer'**
  String get sectionBuyer;

  /// No description provided for @sectionExtras.
  ///
  /// In en, this message translates to:
  /// **'Builder extras'**
  String get sectionExtras;

  /// No description provided for @sectionMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Maintenance and society'**
  String get sectionMaintenance;

  /// No description provided for @sectionResale.
  ///
  /// In en, this message translates to:
  /// **'Building details'**
  String get sectionResale;

  /// No description provided for @sectionUc.
  ///
  /// In en, this message translates to:
  /// **'Project details'**
  String get sectionUc;

  /// No description provided for @sectionFinance.
  ///
  /// In en, this message translates to:
  /// **'Home loan'**
  String get sectionFinance;

  /// No description provided for @sectionOneTime.
  ///
  /// In en, this message translates to:
  /// **'One-time costs'**
  String get sectionOneTime;

  /// No description provided for @compareTitle.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get compareTitle;

  /// No description provided for @compareNeedTwo.
  ///
  /// In en, this message translates to:
  /// **'Pick at least two properties to compare.'**
  String get compareNeedTwo;

  /// No description provided for @compareQuoted.
  ///
  /// In en, this message translates to:
  /// **'Quoted price'**
  String get compareQuoted;

  /// No description provided for @compareTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get compareTotal;

  /// No description provided for @compareOwnFunds.
  ///
  /// In en, this message translates to:
  /// **'Cash you need'**
  String get compareOwnFunds;

  /// No description provided for @compareLoan.
  ///
  /// In en, this message translates to:
  /// **'Probable loan'**
  String get compareLoan;

  /// No description provided for @compareEmi.
  ///
  /// In en, this message translates to:
  /// **'EMI'**
  String get compareEmi;

  /// No description provided for @compareQuotedPsf.
  ///
  /// In en, this message translates to:
  /// **'₹/sq ft quoted (carpet)'**
  String get compareQuotedPsf;

  /// No description provided for @compareAllInPsf.
  ///
  /// In en, this message translates to:
  /// **'₹/sq ft all-in (carpet)'**
  String get compareAllInPsf;

  /// No description provided for @compareLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get compareLoading;

  /// No description provided for @compareStamp.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty'**
  String get compareStamp;

  /// No description provided for @compareGst.
  ///
  /// In en, this message translates to:
  /// **'GST'**
  String get compareGst;

  /// No description provided for @compareExtras.
  ///
  /// In en, this message translates to:
  /// **'Builder extras'**
  String get compareExtras;

  /// No description provided for @compareBuildingAge.
  ///
  /// In en, this message translates to:
  /// **'Building age'**
  String get compareBuildingAge;

  /// No description provided for @compareStatus.
  ///
  /// In en, this message translates to:
  /// **'Stage'**
  String get compareStatus;

  /// No description provided for @compareFlags.
  ///
  /// In en, this message translates to:
  /// **'Flags'**
  String get compareFlags;

  /// No description provided for @compareFlagSummary.
  ///
  /// In en, this message translates to:
  /// **'{critical} critical · {warning} warning · {info} info'**
  String compareFlagSummary(int critical, int warning, int info);

  /// No description provided for @compareChecklist.
  ///
  /// In en, this message translates to:
  /// **'Checklist done'**
  String get compareChecklist;

  /// No description provided for @compareBest.
  ///
  /// In en, this message translates to:
  /// **'Best value'**
  String get compareBest;

  /// No description provided for @compareCostSplit.
  ///
  /// In en, this message translates to:
  /// **'Where the money goes'**
  String get compareCostSplit;

  /// No description provided for @compareYears.
  ///
  /// In en, this message translates to:
  /// **'{years} yrs'**
  String compareYears(int years);

  /// No description provided for @guidanceSteps.
  ///
  /// In en, this message translates to:
  /// **'Steps to buy'**
  String get guidanceSteps;

  /// No description provided for @guidanceStepsProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} done'**
  String guidanceStepsProgress(int done, int total);

  /// No description provided for @guidanceSafetyChecks.
  ///
  /// In en, this message translates to:
  /// **'Safety checks'**
  String get guidanceSafetyChecks;

  /// No description provided for @guidanceSafetyHelp.
  ///
  /// In en, this message translates to:
  /// **'From scam patterns reported in your region.'**
  String get guidanceSafetyHelp;

  /// No description provided for @guidanceOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Open link'**
  String get guidanceOpenLink;

  /// No description provided for @guidanceRisks.
  ///
  /// In en, this message translates to:
  /// **'Scams to watch for'**
  String get guidanceRisks;

  /// No description provided for @guidanceRisksHelp.
  ///
  /// In en, this message translates to:
  /// **'Patterns reported for this kind of purchase. Tap for details.'**
  String get guidanceRisksHelp;

  /// No description provided for @guidanceAreaMatch.
  ///
  /// In en, this message translates to:
  /// **'Reported in your area'**
  String get guidanceAreaMatch;

  /// No description provided for @guidanceSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See all scam patterns'**
  String get guidanceSeeAll;

  /// No description provided for @guidanceNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get guidanceNote;

  /// No description provided for @guidanceEditNote.
  ///
  /// In en, this message translates to:
  /// **'Edit note'**
  String get guidanceEditNote;

  /// No description provided for @riskAsOf.
  ///
  /// In en, this message translates to:
  /// **'Risk data as of {date}'**
  String riskAsOf(String date);

  /// No description provided for @riskStale.
  ///
  /// In en, this message translates to:
  /// **'This data may be outdated. Check recent news and update it in Settings.'**
  String get riskStale;

  /// No description provided for @risksTitle.
  ///
  /// In en, this message translates to:
  /// **'Scam patterns & risks'**
  String get risksTitle;

  /// No description provided for @risksHowItWorks.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get risksHowItWorks;

  /// No description provided for @risksWatchFor.
  ///
  /// In en, this message translates to:
  /// **'Watch for'**
  String get risksWatchFor;

  /// No description provided for @risksPrevention.
  ///
  /// In en, this message translates to:
  /// **'How to protect yourself'**
  String get risksPrevention;

  /// No description provided for @risksRecentCases.
  ///
  /// In en, this message translates to:
  /// **'Recent cases'**
  String get risksRecentCases;

  /// No description provided for @risksCaseAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount}'**
  String risksCaseAmount(String amount);

  /// No description provided for @risksAreas.
  ///
  /// In en, this message translates to:
  /// **'Areas: {areas}'**
  String risksAreas(String areas);

  /// No description provided for @risksAreaNotes.
  ///
  /// In en, this message translates to:
  /// **'Area notes'**
  String get risksAreaNotes;

  /// No description provided for @risksPrecautions.
  ///
  /// In en, this message translates to:
  /// **'General precautions'**
  String get risksPrecautions;

  /// No description provided for @risksVerify.
  ///
  /// In en, this message translates to:
  /// **'Verify officially'**
  String get risksVerify;

  /// No description provided for @risksSeverityCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get risksSeverityCritical;

  /// No description provided for @risksSeverityHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get risksSeverityHigh;

  /// No description provided for @risksSeverityMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get risksSeverityMedium;

  /// No description provided for @risksSeverityLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get risksSeverityLow;

  /// No description provided for @risksLinkError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the link.'**
  String get risksLinkError;

  /// No description provided for @risksAllAreas.
  ///
  /// In en, this message translates to:
  /// **'All areas'**
  String get risksAllAreas;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsRatesSection.
  ///
  /// In en, this message translates to:
  /// **'Rates and assumptions'**
  String get settingsRatesSection;

  /// No description provided for @settingsProfileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{city} · v{version} · as of {date}'**
  String settingsProfileSubtitle(String city, int version, String date);

  /// No description provided for @settingsRates.
  ///
  /// In en, this message translates to:
  /// **'Taxes, fees and charges'**
  String get settingsRates;

  /// No description provided for @settingsLoan.
  ///
  /// In en, this message translates to:
  /// **'Loan assumptions'**
  String get settingsLoan;

  /// No description provided for @settingsDefaults.
  ///
  /// In en, this message translates to:
  /// **'Defaults by flat type'**
  String get settingsDefaults;

  /// No description provided for @settingsThresholds.
  ///
  /// In en, this message translates to:
  /// **'Flag thresholds'**
  String get settingsThresholds;

  /// No description provided for @settingsResetRates.
  ///
  /// In en, this message translates to:
  /// **'Reset rates to bundled'**
  String get settingsResetRates;

  /// No description provided for @settingsResetRatesBody.
  ///
  /// In en, this message translates to:
  /// **'This saves the rates shipped with the app as a new version. Saved properties keep the version they were calculated with.'**
  String get settingsResetRatesBody;

  /// No description provided for @settingsResetDone.
  ///
  /// In en, this message translates to:
  /// **'Rates reset to bundled values'**
  String get settingsResetDone;

  /// No description provided for @settingsRiskSection.
  ///
  /// In en, this message translates to:
  /// **'Scam and risk data'**
  String get settingsRiskSection;

  /// No description provided for @settingsRiskSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Schema {version} · as of {date} · {source}'**
  String settingsRiskSubtitle(String version, String date, String source);

  /// No description provided for @settingsRiskBundled.
  ///
  /// In en, this message translates to:
  /// **'bundled'**
  String get settingsRiskBundled;

  /// No description provided for @settingsRiskImported.
  ///
  /// In en, this message translates to:
  /// **'imported'**
  String get settingsRiskImported;

  /// No description provided for @settingsRiskImport.
  ///
  /// In en, this message translates to:
  /// **'Import risk data (JSON)'**
  String get settingsRiskImport;

  /// No description provided for @settingsRiskRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore bundled risk data'**
  String get settingsRiskRestore;

  /// No description provided for @settingsRiskRestored.
  ///
  /// In en, this message translates to:
  /// **'Bundled risk data restored'**
  String get settingsRiskRestored;

  /// No description provided for @settingsBackupSection.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get settingsBackupSection;

  /// No description provided for @settingsExport.
  ///
  /// In en, this message translates to:
  /// **'Export all properties'**
  String get settingsExport;

  /// No description provided for @settingsExportHelp.
  ///
  /// In en, this message translates to:
  /// **'Saves a JSON file you can keep or move to another phone.'**
  String get settingsExportHelp;

  /// No description provided for @settingsImport.
  ///
  /// In en, this message translates to:
  /// **'Import properties from backup'**
  String get settingsImport;

  /// No description provided for @settingsImportHelp.
  ///
  /// In en, this message translates to:
  /// **'Adds the properties in a backup file. Existing ones are kept.'**
  String get settingsImportHelp;

  /// No description provided for @settingsImported.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 property imported} other{{count} properties imported}}'**
  String settingsImported(int count);

  /// No description provided for @settingsAboutSection.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAboutSection;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Your data stays on this phone'**
  String get settingsPrivacy;

  /// No description provided for @settingsPrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'PropCheck works offline. It has no accounts, no analytics and makes no network requests. Properties are stored only on this device unless you export them.'**
  String get settingsPrivacyBody;

  /// No description provided for @backupInvalidJson.
  ///
  /// In en, this message translates to:
  /// **'This file isn\'t valid JSON.'**
  String get backupInvalidJson;

  /// No description provided for @backupNotABackup.
  ///
  /// In en, this message translates to:
  /// **'This isn\'t a PropCheck backup file.'**
  String get backupNotABackup;

  /// No description provided for @backupNewerVersion.
  ///
  /// In en, this message translates to:
  /// **'This backup was made by a newer version of PropCheck. Update the app first.'**
  String get backupNewerVersion;

  /// No description provided for @backupDamaged.
  ///
  /// In en, this message translates to:
  /// **'The backup file is damaged and couldn\'t be read.'**
  String get backupDamaged;

  /// No description provided for @backupShareSubject.
  ///
  /// In en, this message translates to:
  /// **'PropCheck backup'**
  String get backupShareSubject;

  /// No description provided for @editorTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit rates'**
  String get editorTitle;

  /// No description provided for @editorSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved as version {version}'**
  String editorSaved(int version);

  /// No description provided for @editorAsOf.
  ///
  /// In en, this message translates to:
  /// **'Rates as of (YYYY-MM-DD)'**
  String get editorAsOf;

  /// No description provided for @editorInvalid.
  ///
  /// In en, this message translates to:
  /// **'Fix the highlighted fields first.'**
  String get editorInvalid;

  /// No description provided for @editorPctRange.
  ///
  /// In en, this message translates to:
  /// **'Enter a percentage between 0 and {max}'**
  String editorPctRange(int max);

  /// No description provided for @editorFractionRange.
  ///
  /// In en, this message translates to:
  /// **'Enter a value between 0 and 1'**
  String get editorFractionRange;

  /// No description provided for @editorNonNegative.
  ///
  /// In en, this message translates to:
  /// **'Must be zero or more'**
  String get editorNonNegative;

  /// No description provided for @editorRatioRange.
  ///
  /// In en, this message translates to:
  /// **'Enter a value between 1 and 3'**
  String get editorRatioRange;

  /// No description provided for @editorDateFormat.
  ///
  /// In en, this message translates to:
  /// **'Use the format YYYY-MM-DD'**
  String get editorDateFormat;

  /// No description provided for @editorDiscardTitle.
  ///
  /// In en, this message translates to:
  /// **'Discard changes?'**
  String get editorDiscardTitle;

  /// No description provided for @editorDiscard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get editorDiscard;

  /// No description provided for @editorVersionNote.
  ///
  /// In en, this message translates to:
  /// **'Saving creates version {version}. Saved properties keep their own version until you recalculate them.'**
  String editorVersionNote(int version);

  /// No description provided for @editorNoLimit.
  ///
  /// In en, this message translates to:
  /// **'No upper limit'**
  String get editorNoLimit;

  /// No description provided for @groupStampRegistration.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty and registration'**
  String get groupStampRegistration;

  /// No description provided for @groupGst.
  ///
  /// In en, this message translates to:
  /// **'GST'**
  String get groupGst;

  /// No description provided for @groupTds.
  ///
  /// In en, this message translates to:
  /// **'TDS'**
  String get groupTds;

  /// No description provided for @groupFees.
  ///
  /// In en, this message translates to:
  /// **'Fees and charges'**
  String get groupFees;

  /// No description provided for @groupMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get groupMaintenance;

  /// No description provided for @groupRenovation.
  ///
  /// In en, this message translates to:
  /// **'Renovation (₹ per sq ft by building age)'**
  String get groupRenovation;

  /// No description provided for @groupLoanRates.
  ///
  /// In en, this message translates to:
  /// **'Interest and eligibility'**
  String get groupLoanRates;

  /// No description provided for @groupLoanTenure.
  ///
  /// In en, this message translates to:
  /// **'Tenure limits'**
  String get groupLoanTenure;

  /// No description provided for @groupLtv.
  ///
  /// In en, this message translates to:
  /// **'Loan-to-value slabs'**
  String get groupLtv;

  /// No description provided for @groupInteriors.
  ///
  /// In en, this message translates to:
  /// **'Interiors budget'**
  String get groupInteriors;

  /// No description provided for @groupCarpet.
  ///
  /// In en, this message translates to:
  /// **'Typical carpet area'**
  String get groupCarpet;

  /// No description provided for @groupWizard.
  ///
  /// In en, this message translates to:
  /// **'Other pre-fills'**
  String get groupWizard;

  /// No description provided for @groupThresholds.
  ///
  /// In en, this message translates to:
  /// **'When to raise flags'**
  String get groupThresholds;

  /// No description provided for @fieldStampMale.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty, man (%)'**
  String get fieldStampMale;

  /// No description provided for @fieldStampFemale.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty, woman (%)'**
  String get fieldStampFemale;

  /// No description provided for @fieldStampJoint.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty, joint (%)'**
  String get fieldStampJoint;

  /// No description provided for @fieldRegistrationPct.
  ///
  /// In en, this message translates to:
  /// **'Registration (%)'**
  String get fieldRegistrationPct;

  /// No description provided for @fieldRegistrationCap.
  ///
  /// In en, this message translates to:
  /// **'Registration cap (₹)'**
  String get fieldRegistrationCap;

  /// No description provided for @fieldGstUcStandard.
  ///
  /// In en, this message translates to:
  /// **'Under construction, standard (%)'**
  String get fieldGstUcStandard;

  /// No description provided for @fieldGstUcAffordable.
  ///
  /// In en, this message translates to:
  /// **'Under construction, affordable (%)'**
  String get fieldGstUcAffordable;

  /// No description provided for @fieldGstReady.
  ///
  /// In en, this message translates to:
  /// **'Ready possession (%)'**
  String get fieldGstReady;

  /// No description provided for @fieldGstResale.
  ///
  /// In en, this message translates to:
  /// **'Resale (%)'**
  String get fieldGstResale;

  /// No description provided for @fieldAffordableSqm.
  ///
  /// In en, this message translates to:
  /// **'Affordable housing: max carpet (m²)'**
  String get fieldAffordableSqm;

  /// No description provided for @fieldAffordableValue.
  ///
  /// In en, this message translates to:
  /// **'Affordable housing: max value (₹)'**
  String get fieldAffordableValue;

  /// No description provided for @fieldTdsPct.
  ///
  /// In en, this message translates to:
  /// **'TDS rate (%)'**
  String get fieldTdsPct;

  /// No description provided for @fieldTdsThreshold.
  ///
  /// In en, this message translates to:
  /// **'TDS applies from (₹)'**
  String get fieldTdsThreshold;

  /// No description provided for @fieldBrokerage.
  ///
  /// In en, this message translates to:
  /// **'Brokerage (%)'**
  String get fieldBrokerage;

  /// No description provided for @fieldServiceGst.
  ///
  /// In en, this message translates to:
  /// **'GST on services (%)'**
  String get fieldServiceGst;

  /// No description provided for @fieldTransferFee.
  ///
  /// In en, this message translates to:
  /// **'Society transfer fee (₹)'**
  String get fieldTransferFee;

  /// No description provided for @fieldLegal.
  ///
  /// In en, this message translates to:
  /// **'Lawyer fees (₹)'**
  String get fieldLegal;

  /// No description provided for @fieldLoanProcessing.
  ///
  /// In en, this message translates to:
  /// **'Loan processing fee (%)'**
  String get fieldLoanProcessing;

  /// No description provided for @fieldMortgagePct.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty on loan (%)'**
  String get fieldMortgagePct;

  /// No description provided for @fieldMortgageCap.
  ///
  /// In en, this message translates to:
  /// **'Stamp duty on loan, cap (₹)'**
  String get fieldMortgageCap;

  /// No description provided for @fieldPreEmiFraction.
  ///
  /// In en, this message translates to:
  /// **'Average share of loan disbursed before possession (0–1)'**
  String get fieldPreEmiFraction;

  /// No description provided for @fieldBuiltupRatio.
  ///
  /// In en, this message translates to:
  /// **'Built-up ÷ carpet ratio'**
  String get fieldBuiltupRatio;

  /// No description provided for @fieldMaintenanceRate.
  ///
  /// In en, this message translates to:
  /// **'Maintenance (₹ per sq ft per month)'**
  String get fieldMaintenanceRate;

  /// No description provided for @fieldMonthsUc.
  ///
  /// In en, this message translates to:
  /// **'Advance months, under construction'**
  String get fieldMonthsUc;

  /// No description provided for @fieldMonthsReady.
  ///
  /// In en, this message translates to:
  /// **'Advance months, ready possession'**
  String get fieldMonthsReady;

  /// No description provided for @fieldMonthsResale.
  ///
  /// In en, this message translates to:
  /// **'Advance months, resale'**
  String get fieldMonthsResale;

  /// No description provided for @fieldRenovationBand.
  ///
  /// In en, this message translates to:
  /// **'Age {min}–{max} years (₹/sq ft)'**
  String fieldRenovationBand(int min, int max);

  /// No description provided for @fieldInterest.
  ///
  /// In en, this message translates to:
  /// **'Interest rate (%)'**
  String get fieldInterest;

  /// No description provided for @fieldFoir.
  ///
  /// In en, this message translates to:
  /// **'Share of income for EMIs (%)'**
  String get fieldFoir;

  /// No description provided for @fieldHaircut.
  ///
  /// In en, this message translates to:
  /// **'Bank valuation haircut (%)'**
  String get fieldHaircut;

  /// No description provided for @fieldMaxTenure.
  ///
  /// In en, this message translates to:
  /// **'Maximum tenure (years)'**
  String get fieldMaxTenure;

  /// No description provided for @fieldRetireSalaried.
  ///
  /// In en, this message translates to:
  /// **'Retirement age, salaried'**
  String get fieldRetireSalaried;

  /// No description provided for @fieldRetireSelf.
  ///
  /// In en, this message translates to:
  /// **'Retirement age, self-employed'**
  String get fieldRetireSelf;

  /// No description provided for @fieldBuildingLife.
  ///
  /// In en, this message translates to:
  /// **'Assumed building life (years)'**
  String get fieldBuildingLife;

  /// No description provided for @fieldBuildingBuffer.
  ///
  /// In en, this message translates to:
  /// **'Building life buffer (years)'**
  String get fieldBuildingBuffer;

  /// No description provided for @fieldLtvCap.
  ///
  /// In en, this message translates to:
  /// **'Slab {n}: up to (₹)'**
  String fieldLtvCap(int n);

  /// No description provided for @fieldLtvPct.
  ///
  /// In en, this message translates to:
  /// **'Slab {n}: loan-to-value (%)'**
  String fieldLtvPct(int n);

  /// No description provided for @fieldInteriorsType.
  ///
  /// In en, this message translates to:
  /// **'{type} (₹)'**
  String fieldInteriorsType(String type);

  /// No description provided for @fieldCarpetType.
  ///
  /// In en, this message translates to:
  /// **'{type} (sq ft)'**
  String fieldCarpetType(String type);

  /// No description provided for @fieldMonthsToPossession.
  ///
  /// In en, this message translates to:
  /// **'Months to possession'**
  String get fieldMonthsToPossession;

  /// No description provided for @fieldBuyerAge.
  ///
  /// In en, this message translates to:
  /// **'Buyer age'**
  String get fieldBuyerAge;

  /// No description provided for @fieldTenure.
  ///
  /// In en, this message translates to:
  /// **'Loan tenure (years)'**
  String get fieldTenure;

  /// No description provided for @fieldOldBuilding.
  ///
  /// In en, this message translates to:
  /// **'Old building from (years)'**
  String get fieldOldBuilding;

  /// No description provided for @fieldVeryOldBuilding.
  ///
  /// In en, this message translates to:
  /// **'Very old building from (years)'**
  String get fieldVeryOldBuilding;

  /// No description provided for @fieldGstEdgeBand.
  ///
  /// In en, this message translates to:
  /// **'GST edge band above the limit (₹)'**
  String get fieldGstEdgeBand;

  /// No description provided for @fieldHighLoading.
  ///
  /// In en, this message translates to:
  /// **'High loading above (%)'**
  String get fieldHighLoading;

  /// No description provided for @fieldBelowMarket.
  ///
  /// In en, this message translates to:
  /// **'Below-market ratio (0–1)'**
  String get fieldBelowMarket;

  /// No description provided for @importTitle.
  ///
  /// In en, this message translates to:
  /// **'Import risk data'**
  String get importTitle;

  /// No description provided for @importHelp.
  ///
  /// In en, this message translates to:
  /// **'Paste the JSON from the survey prompt, or choose a file. It must follow schema 1.0.'**
  String get importHelp;

  /// No description provided for @importPasteLabel.
  ///
  /// In en, this message translates to:
  /// **'Risk data JSON'**
  String get importPasteLabel;

  /// No description provided for @importChooseFile.
  ///
  /// In en, this message translates to:
  /// **'Choose file'**
  String get importChooseFile;

  /// No description provided for @importValidate.
  ///
  /// In en, this message translates to:
  /// **'Validate and import'**
  String get importValidate;

  /// No description provided for @importInvalidJson.
  ///
  /// In en, this message translates to:
  /// **'This is not valid JSON: {error}'**
  String importInvalidJson(String error);

  /// No description provided for @importProblems.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 problem found} other{{count} problems found}}'**
  String importProblems(int count);

  /// No description provided for @importRoot.
  ///
  /// In en, this message translates to:
  /// **'(whole file)'**
  String get importRoot;

  /// No description provided for @importDone.
  ///
  /// In en, this message translates to:
  /// **'Risk data imported (as of {date})'**
  String importDone(String date);

  /// No description provided for @importSnapshotTitle.
  ///
  /// In en, this message translates to:
  /// **'Update default rates?'**
  String get importSnapshotTitle;

  /// No description provided for @importSnapshotBody.
  ///
  /// In en, this message translates to:
  /// **'This file includes rates as of {date}. Use them as your defaults? Saved properties keep their current rates until you recalculate.'**
  String importSnapshotBody(String date);

  /// No description provided for @importSnapshotApply.
  ///
  /// In en, this message translates to:
  /// **'Update rates'**
  String get importSnapshotApply;

  /// No description provided for @importSnapshotSkip.
  ///
  /// In en, this message translates to:
  /// **'Keep current rates'**
  String get importSnapshotSkip;

  /// No description provided for @importSnapshotApplied.
  ///
  /// In en, this message translates to:
  /// **'Rates updated to version {version}'**
  String importSnapshotApplied(int version);

  /// No description provided for @importReadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t read that file.'**
  String get importReadError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
