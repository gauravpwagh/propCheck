// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RateProfile _$RateProfileFromJson(Map<String, dynamic> json) => _RateProfile(
  id: json['id'] as String,
  city: json['city'] as String,
  version: (json['version'] as num).toInt(),
  asOf: json['as_of'] as String,
  isBundled: json['is_bundled'] as bool? ?? false,
  stampDutyPct: (json['stamp_duty_pct'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  includesMetroCess: json['includes_metro_cess'] as bool? ?? false,
  registrationPct: (json['registration_pct'] as num).toDouble(),
  registrationCapInr: (json['registration_cap_inr'] as num).toInt(),
  gstPct: (json['gst_pct'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  affordableHousing: AffordableHousing.fromJson(
    json['affordable_housing'] as Map<String, dynamic>,
  ),
  tds: TdsRule.fromJson(json['tds'] as Map<String, dynamic>),
  brokeragePctDefault: (json['brokerage_pct_default'] as num).toDouble(),
  serviceGstPct: (json['service_gst_pct'] as num).toDouble(),
  societyTransferFeeInr: (json['society_transfer_fee_inr'] as num).toInt(),
  maintenanceRatePsfMonth: (json['maintenance_rate_psf_month'] as num)
      .toDouble(),
  advanceMaintenanceMonths: Map<String, int>.from(
    json['advance_maintenance_months'] as Map,
  ),
  legalFeesInr: (json['legal_fees_inr'] as num).toInt(),
  loanProcessingPct: (json['loan_processing_pct'] as num).toDouble(),
  mortgageStampDuty: MortgageStampDuty.fromJson(
    json['mortgage_stamp_duty'] as Map<String, dynamic>,
  ),
  preEmiAvgDisbursedFraction: (json['pre_emi_avg_disbursed_fraction'] as num)
      .toDouble(),
  interiorsInr: Map<String, int>.from(json['interiors_inr'] as Map),
  renovationPsfByAge: (json['renovation_psf_by_age'] as List<dynamic>)
      .map((e) => RenovationBand.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultCarpetSqft: (json['default_carpet_sqft'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  builtupToCarpetRatio: (json['builtup_to_carpet_ratio'] as num).toDouble(),
  loan: LoanAssumptions.fromJson(json['loan'] as Map<String, dynamic>),
  flagThresholds: FlagThresholds.fromJson(
    json['flag_thresholds'] as Map<String, dynamic>,
  ),
  wizardDefaults: json['wizard_defaults'] == null
      ? const WizardDefaults()
      : WizardDefaults.fromJson(
          json['wizard_defaults'] as Map<String, dynamic>,
        ),
  sources:
      (json['sources'] as List<dynamic>?)
          ?.map((e) => SourceLink.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SourceLink>[],
  categories: json['categories'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$RateProfileToJson(_RateProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'version': instance.version,
      'as_of': instance.asOf,
      'is_bundled': instance.isBundled,
      'stamp_duty_pct': instance.stampDutyPct,
      'includes_metro_cess': instance.includesMetroCess,
      'registration_pct': instance.registrationPct,
      'registration_cap_inr': instance.registrationCapInr,
      'gst_pct': instance.gstPct,
      'affordable_housing': instance.affordableHousing.toJson(),
      'tds': instance.tds.toJson(),
      'brokerage_pct_default': instance.brokeragePctDefault,
      'service_gst_pct': instance.serviceGstPct,
      'society_transfer_fee_inr': instance.societyTransferFeeInr,
      'maintenance_rate_psf_month': instance.maintenanceRatePsfMonth,
      'advance_maintenance_months': instance.advanceMaintenanceMonths,
      'legal_fees_inr': instance.legalFeesInr,
      'loan_processing_pct': instance.loanProcessingPct,
      'mortgage_stamp_duty': instance.mortgageStampDuty.toJson(),
      'pre_emi_avg_disbursed_fraction': instance.preEmiAvgDisbursedFraction,
      'interiors_inr': instance.interiorsInr,
      'renovation_psf_by_age': instance.renovationPsfByAge
          .map((e) => e.toJson())
          .toList(),
      'default_carpet_sqft': instance.defaultCarpetSqft,
      'builtup_to_carpet_ratio': instance.builtupToCarpetRatio,
      'loan': instance.loan.toJson(),
      'flag_thresholds': instance.flagThresholds.toJson(),
      'wizard_defaults': instance.wizardDefaults.toJson(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'categories': ?instance.categories,
    };

_AffordableHousing _$AffordableHousingFromJson(Map<String, dynamic> json) =>
    _AffordableHousing(
      maxCarpetSqm: (json['max_carpet_sqm'] as num).toDouble(),
      maxValueInr: (json['max_value_inr'] as num).toInt(),
    );

Map<String, dynamic> _$AffordableHousingToJson(_AffordableHousing instance) =>
    <String, dynamic>{
      'max_carpet_sqm': instance.maxCarpetSqm,
      'max_value_inr': instance.maxValueInr,
    };

_TdsRule _$TdsRuleFromJson(Map<String, dynamic> json) => _TdsRule(
  pct: (json['pct'] as num).toDouble(),
  thresholdInr: (json['threshold_inr'] as num).toInt(),
);

Map<String, dynamic> _$TdsRuleToJson(_TdsRule instance) => <String, dynamic>{
  'pct': instance.pct,
  'threshold_inr': instance.thresholdInr,
};

_MortgageStampDuty _$MortgageStampDutyFromJson(Map<String, dynamic> json) =>
    _MortgageStampDuty(
      pct: (json['pct'] as num).toDouble(),
      capInr: (json['cap_inr'] as num).toInt(),
    );

Map<String, dynamic> _$MortgageStampDutyToJson(_MortgageStampDuty instance) =>
    <String, dynamic>{'pct': instance.pct, 'cap_inr': instance.capInr};

_RenovationBand _$RenovationBandFromJson(Map<String, dynamic> json) =>
    _RenovationBand(
      minAge: (json['min_age'] as num).toInt(),
      maxAge: (json['max_age'] as num).toInt(),
      psf: (json['psf'] as num).toDouble(),
    );

Map<String, dynamic> _$RenovationBandToJson(_RenovationBand instance) =>
    <String, dynamic>{
      'min_age': instance.minAge,
      'max_age': instance.maxAge,
      'psf': instance.psf,
    };

_LtvSlab _$LtvSlabFromJson(Map<String, dynamic> json) => _LtvSlab(
  maxValueInr: (json['max_value_inr'] as num?)?.toInt(),
  ltvPct: (json['ltv_pct'] as num).toDouble(),
);

Map<String, dynamic> _$LtvSlabToJson(_LtvSlab instance) => <String, dynamic>{
  'max_value_inr': ?instance.maxValueInr,
  'ltv_pct': instance.ltvPct,
};

_LoanAssumptions _$LoanAssumptionsFromJson(Map<String, dynamic> json) =>
    _LoanAssumptions(
      interestPct: (json['interest_pct'] as num).toDouble(),
      foirPct: (json['foir_pct'] as num).toDouble(),
      maxTenureYears: (json['max_tenure_years'] as num).toInt(),
      retirementAge: Map<String, int>.from(json['retirement_age'] as Map),
      assumedBuildingLifeYears: (json['assumed_building_life_years'] as num)
          .toInt(),
      buildingLifeBufferYears: (json['building_life_buffer_years'] as num)
          .toInt(),
      valuationHaircutPct: (json['valuation_haircut_pct'] as num).toDouble(),
      ltvSlabs: (json['ltv_slabs'] as List<dynamic>)
          .map((e) => LtvSlab.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoanAssumptionsToJson(_LoanAssumptions instance) =>
    <String, dynamic>{
      'interest_pct': instance.interestPct,
      'foir_pct': instance.foirPct,
      'max_tenure_years': instance.maxTenureYears,
      'retirement_age': instance.retirementAge,
      'assumed_building_life_years': instance.assumedBuildingLifeYears,
      'building_life_buffer_years': instance.buildingLifeBufferYears,
      'valuation_haircut_pct': instance.valuationHaircutPct,
      'ltv_slabs': instance.ltvSlabs.map((e) => e.toJson()).toList(),
    };

_FlagThresholds _$FlagThresholdsFromJson(Map<String, dynamic> json) =>
    _FlagThresholds(
      oldBuildingAge: (json['old_building_age'] as num).toInt(),
      veryOldBuildingAge: (json['very_old_building_age'] as num).toInt(),
      gstEdgeBandInr: (json['gst_edge_band_inr'] as num).toInt(),
      highLoadingPct: (json['high_loading_pct'] as num).toDouble(),
      belowMarketRatio: (json['below_market_ratio'] as num).toDouble(),
    );

Map<String, dynamic> _$FlagThresholdsToJson(_FlagThresholds instance) =>
    <String, dynamic>{
      'old_building_age': instance.oldBuildingAge,
      'very_old_building_age': instance.veryOldBuildingAge,
      'gst_edge_band_inr': instance.gstEdgeBandInr,
      'high_loading_pct': instance.highLoadingPct,
      'below_market_ratio': instance.belowMarketRatio,
    };

_WizardDefaults _$WizardDefaultsFromJson(Map<String, dynamic> json) =>
    _WizardDefaults(
      monthsToPossession: (json['months_to_possession'] as num?)?.toInt() ?? 36,
      buyerAge: (json['buyer_age'] as num?)?.toInt() ?? 32,
      tenureYears: (json['tenure_years'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$WizardDefaultsToJson(_WizardDefaults instance) =>
    <String, dynamic>{
      'months_to_possession': instance.monthsToPossession,
      'buyer_age': instance.buyerAge,
      'tenure_years': instance.tenureYears,
    };

_SourceLink _$SourceLinkFromJson(Map<String, dynamic> json) =>
    _SourceLink(title: json['title'] as String, url: json['url'] as String);

Map<String, dynamic> _$SourceLinkToJson(_SourceLink instance) =>
    <String, dynamic>{'title': instance.title, 'url': instance.url};
