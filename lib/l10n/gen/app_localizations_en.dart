// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PropCheck';

  @override
  String get commonNext => 'Next';

  @override
  String get commonBack => 'Back';

  @override
  String get commonSkip => 'Skip';

  @override
  String get commonSave => 'Save';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonDelete => 'Delete';

  @override
  String get commonEdit => 'Edit';

  @override
  String get commonDone => 'Done';

  @override
  String get commonAdd => 'Add';

  @override
  String get commonRemove => 'Remove';

  @override
  String get commonYes => 'Yes';

  @override
  String get commonNo => 'No';

  @override
  String get commonClose => 'Close';

  @override
  String get commonOptional => 'Optional';

  @override
  String get commonLearnMore => 'What is this?';

  @override
  String commonError(String error) {
    return 'Something went wrong: $error';
  }

  @override
  String get commonLoading => 'Loading…';

  @override
  String get commonSqft => 'sq ft';

  @override
  String get commonSqm => 'sq m';

  @override
  String get commonMonths => 'months';

  @override
  String get commonYears => 'years';

  @override
  String get commonPerMonth => 'per month';

  @override
  String get commonAmountLabel => 'Amount (₹)';

  @override
  String get commonAmountHint => 'e.g. 85,00,000 or 85 L';

  @override
  String commonAmountInWords(String amount) {
    return '= $amount';
  }

  @override
  String get commonInvalidNumber => 'Enter a number';

  @override
  String get commonMustBePositive => 'Must be more than zero';

  @override
  String get homeTitle => 'My properties';

  @override
  String get homeNewEstimate => 'New estimate';

  @override
  String get homeEmptyTitle => 'No properties yet';

  @override
  String get homeEmptyBody =>
      'Start a new estimate to see the true cost of a flat, including stamp duty, GST, loan costs and more.';

  @override
  String get homeSearchHint => 'Search by name or locality';

  @override
  String get homeSortUpdated => 'Recently updated';

  @override
  String get homeSortTotal => 'Total cost';

  @override
  String get homeSortPsf => '₹ per sq ft';

  @override
  String get homeShowArchived => 'Show archived';

  @override
  String get homeCompare => 'Compare';

  @override
  String get homeCompareSelect => 'Select 2–3 properties to compare';

  @override
  String get homeArchive => 'Archive';

  @override
  String get homeUnarchive => 'Unarchive';

  @override
  String get homeArchived => 'Archived';

  @override
  String homeTotalLabel(String total) {
    return 'Total $total';
  }

  @override
  String get homeRisks => 'Scam patterns & risks';

  @override
  String get homeSettings => 'Settings';

  @override
  String get homeRecalcNeeded => 'Rates changed';

  @override
  String get wizardTitle => 'New estimate';

  @override
  String get wizardEditTitle => 'Edit estimate';

  @override
  String wizardStepOf(int current, int total) {
    return 'Step $current of $total';
  }

  @override
  String get wizardSeeResult => 'See result';

  @override
  String get wizardRunningTotal => 'Running total';

  @override
  String get wizardRunningMaxPrice => 'Max quoted price';

  @override
  String get stepModeTitle => 'What do you want to work out?';

  @override
  String get stepModeWhy =>
      'We can start from a price you were quoted, or from the total you can spend.';

  @override
  String get modePriceToTotal => 'I have a quoted price';

  @override
  String get modePriceToTotalHelp =>
      'Find the total amount you will actually pay.';

  @override
  String get modeBudgetToPrice => 'I have a total budget';

  @override
  String get modeBudgetToPriceHelp =>
      'Find the highest quoted price you can afford.';

  @override
  String get stepLocationTitle => 'Where is the property?';

  @override
  String get stepLocationWhy =>
      'Stamp duty and other rates depend on the city.';

  @override
  String get locationProfile => 'Rates for';

  @override
  String get locationLocality => 'Locality or building';

  @override
  String get locationLocalityHint => 'e.g. Andheri East';

  @override
  String get locationName => 'Name for this property';

  @override
  String get locationNameHint => 'e.g. Sunrise Heights 1BHK';

  @override
  String get stepTypeTitle => 'What type of flat?';

  @override
  String get stepTypeWhy =>
      'Type sets the default carpet area and interiors budget.';

  @override
  String get stepStatusTitle => 'What stage is it at?';

  @override
  String get stepStatusWhy =>
      'GST, builder charges and loan timing depend on this.';

  @override
  String get statusUnderConstruction => 'Under construction';

  @override
  String get statusUnderConstructionHelp =>
      'Booked from the builder; possession later. GST applies.';

  @override
  String get statusReadyPossession => 'Ready possession';

  @override
  String get statusReadyPossessionHelp =>
      'New flat from the builder with OC issued. No GST.';

  @override
  String get statusResale => 'Resale';

  @override
  String get statusResaleHelp => 'Bought from the current owner.';

  @override
  String get stepAmountTitlePrice => 'What is the quoted price?';

  @override
  String get stepAmountTitleBudget => 'What is your total budget?';

  @override
  String get stepAmountWhyPrice =>
      'The base price the seller or builder quoted, before taxes and extras.';

  @override
  String get stepAmountWhyBudget =>
      'Everything you can spend, including stamp duty, fees and interiors, plus the loan.';

  @override
  String get stepAreaTitle => 'How big is it?';

  @override
  String get stepAreaWhy =>
      'Used for per-sq-ft rates, maintenance, renovation and the GST slab.';

  @override
  String get areaCarpet => 'Carpet area';

  @override
  String get areaBuiltup => 'Built-up area';

  @override
  String areaBuiltupHelp(String ratio) {
    return 'Leave as is to assume carpet × $ratio.';
  }

  @override
  String get areaUnit => 'Unit';

  @override
  String get areaReadyReckoner => 'Ready reckoner value (₹)';

  @override
  String get areaReadyReckonerHelp =>
      'Government valuation. Stamp duty is charged on the higher of this and the agreement value.';

  @override
  String get areaReference => 'Typical rate in this area (₹ per sq ft carpet)';

  @override
  String get areaReferenceHelp =>
      'If the quoted rate is far below this, we warn you.';

  @override
  String get stepBuyerTitle => 'Who is buying?';

  @override
  String get stepBuyerWhy =>
      'Women buyers pay lower stamp duty in Maharashtra.';

  @override
  String get ownershipMale => 'Man';

  @override
  String get ownershipFemale => 'Woman';

  @override
  String get ownershipJoint => 'Jointly (man and woman)';

  @override
  String get stepExtrasTitle => 'Builder extras';

  @override
  String get stepExtrasWhy =>
      'Parking, floor rise and similar charges. Ones written into the agreement also attract stamp duty and GST.';

  @override
  String get extrasAdd => 'Add extra';

  @override
  String get extrasKind => 'What for';

  @override
  String get extrasKindHint => 'e.g. parking';

  @override
  String get extrasInAgreement => 'Included in the agreement';

  @override
  String get extrasEmpty => 'No extras added.';

  @override
  String get extrasCorpus => 'Society corpus fund (₹)';

  @override
  String get extraKindParking => 'Parking';

  @override
  String get extraKindFloorRise => 'Floor rise';

  @override
  String get extraKindPlc => 'Preferred location';

  @override
  String get extraKindClubhouse => 'Clubhouse';

  @override
  String get extraKindDevelopment => 'Development charges';

  @override
  String get stepMaintenanceTitle => 'Maintenance and society';

  @override
  String get stepMaintenanceWhy =>
      'Builders usually collect maintenance in advance at possession.';

  @override
  String get maintenanceMonths => 'Months collected in advance';

  @override
  String get maintenanceRate => 'Maintenance rate (₹ per sq ft per month)';

  @override
  String get maintenanceTransferFee => 'Society transfer fee (₹)';

  @override
  String get stepResaleTitle => 'About the building';

  @override
  String get stepResaleWhy =>
      'Older buildings get shorter loans and need more renovation.';

  @override
  String get resaleBuildingYear => 'Year the building was completed';

  @override
  String get resaleHasOc => 'Building has an occupancy certificate (OC)';

  @override
  String get resaleSellerLoan => 'Seller\'s outstanding home loan (₹)';

  @override
  String get resaleSellerLoanHelp =>
      'Doesn\'t change your cost, but part of your payment goes to the seller\'s bank.';

  @override
  String get resaleBrokerage => 'Brokerage (% of price)';

  @override
  String invalidYear(int max) {
    return 'Enter a year between 1900 and $max';
  }

  @override
  String get stepUcTitle => 'About the project';

  @override
  String get stepUcWhy =>
      'Delays cost you pre-EMI interest and rent while you wait.';

  @override
  String get ucRera => 'MahaRERA registration number';

  @override
  String get ucReraHint => 'e.g. P51800012345';

  @override
  String get ucMonths => 'Months until possession';

  @override
  String get ucRent => 'Rent you pay meanwhile (₹ per month)';

  @override
  String get stepFinanceTitle => 'Home loan';

  @override
  String get stepFinanceWhy =>
      'We estimate how much a bank will probably lend and what it adds to your costs.';

  @override
  String get financeUsingLoan => 'I will take a home loan';

  @override
  String get financeAge => 'Your age';

  @override
  String get financeEmployment => 'Employment';

  @override
  String get employmentSalaried => 'Salaried';

  @override
  String get employmentSelfEmployed => 'Self-employed';

  @override
  String get financeIncome => 'Net monthly income (₹)';

  @override
  String get financeExistingEmi => 'Existing EMIs (₹ per month)';

  @override
  String get financeOwnFunds => 'Own funds available (₹)';

  @override
  String get financeOwnFundsHelp =>
      'Optional. We\'ll warn you if the cash you need is more than this.';

  @override
  String get financeRate => 'Interest rate (% per year)';

  @override
  String get financeTenure => 'Tenure you want (years)';

  @override
  String get stepOneTimeTitle => 'One-time costs';

  @override
  String get stepOneTimeWhy =>
      'Easy to forget, but they come out of your pocket.';

  @override
  String get oneTimeLegal => 'Lawyer fees (₹)';

  @override
  String get oneTimeInteriors => 'Interiors and furnishing (₹)';

  @override
  String get resultTitle => 'Result';

  @override
  String get resultTotal => 'Total you will pay';

  @override
  String resultExtraOverQuoted(String amount, String pct) {
    return '$amount ($pct%) more than the quoted price';
  }

  @override
  String get resultOwnFunds => 'Cash you need';

  @override
  String get resultOwnFundsHelp => 'Total minus the probable loan.';

  @override
  String get resultMaxPrice => 'Highest quoted price you can afford';

  @override
  String resultMaxPriceHelp(String total) {
    return 'Rounded down to ₹10,000. Total at this price: $total.';
  }

  @override
  String get resultGstSlabNote =>
      'This is close to the ₹45 lakh affordable-housing GST limit. A small price change can move GST between 1% and 5%.';

  @override
  String get resultBreakdown => 'Breakdown';

  @override
  String get groupPriceAndTaxes => 'Price & taxes';

  @override
  String get groupBuilderAndSociety => 'Builder & society';

  @override
  String get groupLoanCosts => 'Loan costs';

  @override
  String get groupMovingIn => 'Moving in';

  @override
  String get resultLoanCard => 'Probable loan';

  @override
  String get resultLoanNone => 'No loan';

  @override
  String resultLoanEmi(String emi) {
    return 'EMI $emi per month';
  }

  @override
  String resultLoanTenure(int years) {
    return 'Tenure $years years';
  }

  @override
  String get resultLoanByIncome => 'By income';

  @override
  String get resultLoanByLtv => 'By loan-to-value';

  @override
  String get bindingLtv =>
      'Limited by loan-to-value: banks lend only part of the agreement value.';

  @override
  String get bindingIncomeMaxTenure =>
      'Limited by your income over the maximum tenure banks allow.';

  @override
  String get bindingIncomeRequestedTenure =>
      'Limited by your income over the tenure you chose.';

  @override
  String get bindingIncomeRetirement =>
      'Limited by your income: the tenure ends at retirement age.';

  @override
  String get bindingIncomeBuildingLife =>
      'Limited by your income: the tenure is cut short by the building\'s remaining life.';

  @override
  String get bindingNoLoan => 'You are not taking a loan.';

  @override
  String get resultPerSqft => 'Per sq ft';

  @override
  String get resultQuotedCarpet => 'Quoted, carpet';

  @override
  String get resultQuotedBuiltup => 'Quoted, built-up';

  @override
  String get resultAllInCarpet => 'All-in, carpet';

  @override
  String get resultAllInBuiltup => 'All-in, built-up';

  @override
  String get resultLoading => 'Loading (built-up over carpet)';

  @override
  String resultPerSqftValue(String amount) {
    return '$amount/sq ft';
  }

  @override
  String get resultFlags => 'Things to check';

  @override
  String get resultNoFlags => 'No red flags from what you entered.';

  @override
  String get resultPayments => 'Payment notes';

  @override
  String resultTds(String amount) {
    return 'Deduct TDS of $amount (1%) from the payment to the seller and deposit it with the tax department. This is not an extra cost.';
  }

  @override
  String resultSellerPayoff(String amount) {
    return '$amount of your payment goes to the seller\'s bank to close their loan. Your total does not change.';
  }

  @override
  String get resultUncertainties => 'Keep in mind';

  @override
  String uncertaintyRates(String date) {
    return 'Rates are as of $date. Check current stamp duty and GST before you pay.';
  }

  @override
  String get uncertaintyValuation =>
      'The bank may value the flat lower than the price, which reduces the loan.';

  @override
  String get uncertaintyCharges =>
      'Builder and society charges vary; get them in writing.';

  @override
  String get uncertaintyUcDelay =>
      'Under-construction projects are often delayed, which adds pre-EMI interest and rent.';

  @override
  String get disclaimer =>
      'PropCheck gives estimates only. It is not legal or financial advice. Check with a lawyer, your bank and a chartered accountant before you commit.';

  @override
  String get resultSave => 'Save property';

  @override
  String get resultSaved => 'Saved';

  @override
  String get resultEditInputs => 'Edit inputs';

  @override
  String get lineAgreementValue => 'Agreement value';

  @override
  String get lineStampDuty => 'Stamp duty';

  @override
  String get lineRegistration => 'Registration fee';

  @override
  String get lineGst => 'GST';

  @override
  String get lineBuilderExtrasOutsideAgreement =>
      'Builder extras (outside agreement)';

  @override
  String get lineCorpus => 'Society corpus';

  @override
  String get lineAdvanceMaintenance => 'Advance maintenance';

  @override
  String get lineSocietyTransfer => 'Society transfer fee';

  @override
  String get lineBrokerage => 'Brokerage (incl. GST)';

  @override
  String get lineRenovation => 'Renovation';

  @override
  String get lineLoanProcessing => 'Loan processing fee (incl. GST)';

  @override
  String get lineMortgageStampDuty => 'Stamp duty on loan agreement';

  @override
  String get lineLegal => 'Lawyer fees';

  @override
  String get linePreEmiInterest => 'Pre-EMI interest until possession';

  @override
  String get lineRentOverlap => 'Rent until possession';

  @override
  String get lineInteriors => 'Interiors';

  @override
  String get infoAgreementValue =>
      'The price written in your sale agreement: the quoted price plus any extras (such as parking) included in the agreement.';

  @override
  String get infoStampDuty =>
      'A state tax on the sale agreement, charged on the higher of the agreement value and the government ready reckoner value. In Mumbai it includes metro cess; women buyers get a 1% concession.';

  @override
  String get infoRegistration =>
      'Fee to register the agreement with the sub-registrar: 1% of the agreement value, capped at ₹30,000.';

  @override
  String get infoGst =>
      'Goods and services tax on under-construction flats only: 1% for affordable housing (carpet up to 60 m² and value up to ₹45 lakh), otherwise 5%. Ready flats with OC and resale flats pay no GST.';

  @override
  String get infoBuilderExtrasOutsideAgreement =>
      'Charges the builder collects separately from the agreement, such as clubhouse membership. No stamp duty, but you still pay them.';

  @override
  String get infoCorpus =>
      'A one-time contribution to the society\'s reserve fund, collected by the builder.';

  @override
  String get infoAdvanceMaintenance =>
      'Builders collect society maintenance in advance, usually 12–24 months, at possession.';

  @override
  String get infoSocietyTransfer =>
      'Fee the housing society charges to transfer membership and the share certificate to you.';

  @override
  String get infoBrokerage =>
      'The agent\'s commission, usually 1–2% of the price, plus 18% GST.';

  @override
  String get infoRenovation =>
      'A rough allowance for repairs, rising with the building\'s age.';

  @override
  String get infoLoanProcessing =>
      'One-time fee the bank charges to process the loan, plus 18% GST.';

  @override
  String get infoMortgageStampDuty =>
      'Stamp duty on the loan (mortgage) agreement, capped at ₹10,000 in Maharashtra.';

  @override
  String get infoLegal =>
      'Lawyer fees for title search and agreement review. Don\'t skip this.';

  @override
  String get infoPreEmiInterest =>
      'While the flat is being built, the bank releases the loan in stages and you pay interest on what has been released. We assume half the loan is out on average.';

  @override
  String get infoRentOverlap => 'Rent you keep paying until you can move in.';

  @override
  String get infoInteriors =>
      'Furniture, kitchen, painting and fittings. Change this to your own budget.';

  @override
  String get flagNoReraTitle => 'No MahaRERA number';

  @override
  String get flagNoReraAction =>
      'Every under-construction project must be registered with MahaRERA. Ask for the number and check it on the MahaRERA website before you pay anything.';

  @override
  String get flagNoOcTitle => 'No occupancy certificate';

  @override
  String get flagNoOcAction =>
      'Without an OC the building may be illegal; banks may refuse a loan and the society can\'t be formed properly. Ask for the OC from the municipal corporation.';

  @override
  String get flagGstSlabEdgeTitle => 'Just above the affordable GST limit';

  @override
  String get flagGstSlabEdgeAction =>
      'The agreement value is just over ₹45 lakh, so GST is 5% instead of 1%. Ask whether some extras can be left out of the agreement or the price adjusted.';

  @override
  String get flagStampOnReadyReckonerTitle =>
      'Stamp duty on ready reckoner value';

  @override
  String get flagStampOnReadyReckonerAction =>
      'The government value is higher than your agreement value, so stamp duty is charged on the higher amount. The difference may also have income-tax effects; ask a CA.';

  @override
  String get flagVeryOldBuildingTitle => 'Very old building';

  @override
  String get flagVeryOldBuildingAction =>
      'Buildings this old may need redevelopment soon; banks give short loans or none. Get a structural audit and ask about redevelopment plans.';

  @override
  String get flagOldBuildingTitle => 'Old building';

  @override
  String get flagOldBuildingAction =>
      'Expect higher repairs and shorter loan tenure. Ask for the latest structural audit.';

  @override
  String get flagFundsShortfallTitle => 'Not enough own funds';

  @override
  String get flagFundsShortfallAction =>
      'The cash you need is more than the own funds you entered. Look at a lower price, a bigger loan or a co-applicant.';

  @override
  String get flagTenureCutByBuildingTitle => 'Loan tenure cut by building age';

  @override
  String get flagTenureCutByBuildingAction =>
      'Banks won\'t lend beyond the building\'s remaining life, so the loan is shorter and smaller. Check with your bank before you commit.';

  @override
  String get flagSellerLoanTitle => 'Seller has a home loan';

  @override
  String get flagSellerLoanAction =>
      'Pay the seller\'s bank directly, collect the original documents and a loan closure letter before registration completes.';

  @override
  String get flagHighLoadingTitle => 'High loading';

  @override
  String get flagHighLoadingAction =>
      'Built-up area is much larger than carpet. Compare flats on carpet-area price, which is what RERA requires builders to quote.';

  @override
  String get flagBelowMarketPriceTitle => 'Price far below the area rate';

  @override
  String get flagBelowMarketPriceAction =>
      'A very low price can signal a scam, a legal problem or a building issue. Verify the seller and title carefully.';

  @override
  String get flagRiskAreaTitle => 'Known risk in this area';

  @override
  String flagRiskAreaAction(String note) {
    return '$note';
  }

  @override
  String get severityCritical => 'Critical';

  @override
  String get severityWarning => 'Warning';

  @override
  String get severityInfo => 'Info';

  @override
  String homeItemSubtitle(String type, String status) {
    return '$type · $status';
  }

  @override
  String homeItemPsf(String amount) {
    return '$amount/sq ft all-in';
  }

  @override
  String homeFlagCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count critical flags',
      one: '1 critical flag',
    );
    return '$_temp0';
  }

  @override
  String homeSelected(int count) {
    return '$count selected';
  }

  @override
  String get homeNoMatches => 'No properties match your search.';

  @override
  String get homeSort => 'Sort';

  @override
  String homeMaxPriceLabel(String price) {
    return 'Max price $price';
  }

  @override
  String detailRatesVersion(int version, String date) {
    return 'Calculated with rates v$version (as of $date)';
  }

  @override
  String detailOutdated(int version) {
    return 'Rates have changed since this was saved (now v$version).';
  }

  @override
  String get detailRecalculate => 'Recalculate with current rates';

  @override
  String get detailRecalculated => 'Recalculated with current rates';

  @override
  String get detailDuplicate => 'Duplicate';

  @override
  String get detailDuplicateSuffix => ' (copy)';

  @override
  String get detailDuplicated => 'Copy created';

  @override
  String get detailDeleteTitle => 'Delete this property?';

  @override
  String get detailDeleteBody =>
      'Its inputs and checklist progress will be removed from this device. This can\'t be undone.';

  @override
  String get detailNotFound => 'This property no longer exists.';

  @override
  String get detailInputs => 'Your inputs';

  @override
  String get detailInputsHelp => 'Tap a section to change it.';

  @override
  String get sectionMode => 'What you\'re working out';

  @override
  String get sectionLocation => 'Location and name';

  @override
  String get sectionType => 'Flat type';

  @override
  String get sectionStatus => 'Stage';

  @override
  String get sectionAmount => 'Price or budget';

  @override
  String get sectionArea => 'Area';

  @override
  String get sectionBuyer => 'Buyer';

  @override
  String get sectionExtras => 'Builder extras';

  @override
  String get sectionMaintenance => 'Maintenance and society';

  @override
  String get sectionResale => 'Building details';

  @override
  String get sectionUc => 'Project details';

  @override
  String get sectionFinance => 'Home loan';

  @override
  String get sectionOneTime => 'One-time costs';

  @override
  String get compareTitle => 'Compare';

  @override
  String get compareNeedTwo => 'Pick at least two properties to compare.';

  @override
  String get compareQuoted => 'Quoted price';

  @override
  String get compareTotal => 'Total';

  @override
  String get compareOwnFunds => 'Cash you need';

  @override
  String get compareLoan => 'Probable loan';

  @override
  String get compareEmi => 'EMI';

  @override
  String get compareQuotedPsf => '₹/sq ft quoted (carpet)';

  @override
  String get compareAllInPsf => '₹/sq ft all-in (carpet)';

  @override
  String get compareLoading => 'Loading';

  @override
  String get compareStamp => 'Stamp duty';

  @override
  String get compareGst => 'GST';

  @override
  String get compareExtras => 'Builder extras';

  @override
  String get compareBuildingAge => 'Building age';

  @override
  String get compareStatus => 'Stage';

  @override
  String get compareFlags => 'Flags';

  @override
  String compareFlagSummary(int critical, int warning, int info) {
    return '$critical critical · $warning warning · $info info';
  }

  @override
  String get compareChecklist => 'Checklist done';

  @override
  String get compareBest => 'Best value';

  @override
  String get compareCostSplit => 'Where the money goes';

  @override
  String compareYears(int years) {
    return '$years yrs';
  }
}
