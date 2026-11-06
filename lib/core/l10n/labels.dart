import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';

/// Maps engine keys (line items, flags, statuses…) to localized text.
extension EngineLabels on AppLocalizations {
  String lineLabel(String key) => switch (key) {
    'agreement_value' => lineAgreementValue,
    'stamp_duty' => lineStampDuty,
    'registration' => lineRegistration,
    'gst' => lineGst,
    'builder_extras_outside_agreement' => lineBuilderExtrasOutsideAgreement,
    'corpus' => lineCorpus,
    'advance_maintenance' => lineAdvanceMaintenance,
    'society_transfer' => lineSocietyTransfer,
    'brokerage' => lineBrokerage,
    'renovation' => lineRenovation,
    'loan_processing' => lineLoanProcessing,
    'mortgage_stamp_duty' => lineMortgageStampDuty,
    'legal' => lineLegal,
    'pre_emi_interest' => linePreEmiInterest,
    'rent_overlap' => lineRentOverlap,
    'interiors' => lineInteriors,
    _ => key,
  };

  String lineInfo(String key) => switch (key) {
    'agreement_value' => infoAgreementValue,
    'stamp_duty' => infoStampDuty,
    'registration' => infoRegistration,
    'gst' => infoGst,
    'builder_extras_outside_agreement' => infoBuilderExtrasOutsideAgreement,
    'corpus' => infoCorpus,
    'advance_maintenance' => infoAdvanceMaintenance,
    'society_transfer' => infoSocietyTransfer,
    'brokerage' => infoBrokerage,
    'renovation' => infoRenovation,
    'loan_processing' => infoLoanProcessing,
    'mortgage_stamp_duty' => infoMortgageStampDuty,
    'legal' => infoLegal,
    'pre_emi_interest' => infoPreEmiInterest,
    'rent_overlap' => infoRentOverlap,
    'interiors' => infoInteriors,
    _ => '',
  };

  String groupLabel(CostGroup g) => switch (g) {
    CostGroup.priceAndTaxes => groupPriceAndTaxes,
    CostGroup.builderAndSociety => groupBuilderAndSociety,
    CostGroup.loanCosts => groupLoanCosts,
    CostGroup.movingIn => groupMovingIn,
  };

  String flagTitle(String id) => switch (id) {
    'no_rera' => flagNoReraTitle,
    'no_oc' => flagNoOcTitle,
    'gst_slab_edge' => flagGstSlabEdgeTitle,
    'stamp_on_ready_reckoner' => flagStampOnReadyReckonerTitle,
    'very_old_building' => flagVeryOldBuildingTitle,
    'old_building' => flagOldBuildingTitle,
    'funds_shortfall' => flagFundsShortfallTitle,
    'tenure_cut_by_building' => flagTenureCutByBuildingTitle,
    'seller_loan' => flagSellerLoanTitle,
    'high_loading' => flagHighLoadingTitle,
    'below_market_price' => flagBelowMarketPriceTitle,
    'risk_area' => flagRiskAreaTitle,
    _ => id,
  };

  /// [note] is the area note for `risk_area`.
  String flagAction(String id, {String note = ''}) => switch (id) {
    'no_rera' => flagNoReraAction,
    'no_oc' => flagNoOcAction,
    'gst_slab_edge' => flagGstSlabEdgeAction,
    'stamp_on_ready_reckoner' => flagStampOnReadyReckonerAction,
    'very_old_building' => flagVeryOldBuildingAction,
    'old_building' => flagOldBuildingAction,
    'funds_shortfall' => flagFundsShortfallAction,
    'tenure_cut_by_building' => flagTenureCutByBuildingAction,
    'seller_loan' => flagSellerLoanAction,
    'high_loading' => flagHighLoadingAction,
    'below_market_price' => flagBelowMarketPriceAction,
    'risk_area' => flagRiskAreaAction(note),
    _ => '',
  };

  String severityLabel(FlagSeverity s) => switch (s) {
    FlagSeverity.critical => severityCritical,
    FlagSeverity.warning => severityWarning,
    FlagSeverity.info => severityInfo,
  };

  String statusLabel(PropertyStatus s) => switch (s) {
    PropertyStatus.underConstruction => statusUnderConstruction,
    PropertyStatus.readyPossession => statusReadyPossession,
    PropertyStatus.resale => statusResale,
  };

  String bindingLabel(String binding) => switch (binding) {
    'ltv' => bindingLtv,
    'income_max_tenure' => bindingIncomeMaxTenure,
    'income_requested_tenure' => bindingIncomeRequestedTenure,
    'income_retirement' => bindingIncomeRetirement,
    'income_building_life' => bindingIncomeBuildingLife,
    _ => bindingNoLoan,
  };
}
