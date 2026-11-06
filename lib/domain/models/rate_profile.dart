import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'rate_profile.freezed.dart';
part 'rate_profile.g.dart';

/// One entry of `assets/data/rate_profiles.json`. Every rate, slab, threshold
/// and default amount the engine uses comes from here.
@freezed
abstract class RateProfile with _$RateProfile {
  const RateProfile._();

  const factory RateProfile({
    required String id,
    required String city,
    required int version,
    required String asOf,
    @Default(false) bool isBundled,
    required Map<String, double> stampDutyPct,
    @Default(false) bool includesMetroCess,
    required double registrationPct,
    required int registrationCapInr,
    required Map<String, double> gstPct,
    required AffordableHousing affordableHousing,
    required TdsRule tds,
    required double brokeragePctDefault,
    required double serviceGstPct,
    required int societyTransferFeeInr,
    required double maintenanceRatePsfMonth,
    required Map<String, int> advanceMaintenanceMonths,
    required int legalFeesInr,
    required double loanProcessingPct,
    required MortgageStampDuty mortgageStampDuty,
    required double preEmiAvgDisbursedFraction,
    required Map<String, int> interiorsInr,
    required List<RenovationBand> renovationPsfByAge,
    required Map<String, double> defaultCarpetSqft,
    required double builtupToCarpetRatio,
    required LoanAssumptions loan,
    required FlagThresholds flagThresholds,
    @Default(WizardDefaults()) WizardDefaults wizardDefaults,
    @Default(<SourceLink>[]) List<SourceLink> sources,

    /// Per-category overrides (SPEC §10). Absent means "flat only"; flat
    /// values live at the top level.
    Map<String, Object?>? categories,
  }) = _RateProfile;

  factory RateProfile.fromJson(Map<String, dynamic> json) =>
      _$RateProfileFromJson(json);

  double stampDutyFor(Ownership o) => stampDutyPct[o.key]!;

  int advanceMaintenanceMonthsFor(PropertyStatus s) =>
      advanceMaintenanceMonths[s.key] ?? 0;

  int interiorsFor(String type) => interiorsInr[type] ?? 0;

  double defaultCarpetFor(String type) => defaultCarpetSqft[type] ?? 0;

  bool supportsCategory(PropertyCategory c) =>
      c == PropertyCategory.residentialFlat ||
      (categories?.containsKey(c.key) ?? false);
}

@freezed
abstract class AffordableHousing with _$AffordableHousing {
  const factory AffordableHousing({
    required double maxCarpetSqm,
    required int maxValueInr,
  }) = _AffordableHousing;

  factory AffordableHousing.fromJson(Map<String, dynamic> json) =>
      _$AffordableHousingFromJson(json);
}

@freezed
abstract class TdsRule with _$TdsRule {
  const factory TdsRule({required double pct, required int thresholdInr}) =
      _TdsRule;

  factory TdsRule.fromJson(Map<String, dynamic> json) =>
      _$TdsRuleFromJson(json);
}

@freezed
abstract class MortgageStampDuty with _$MortgageStampDuty {
  const factory MortgageStampDuty({required double pct, required int capInr}) =
      _MortgageStampDuty;

  factory MortgageStampDuty.fromJson(Map<String, dynamic> json) =>
      _$MortgageStampDutyFromJson(json);
}

@freezed
abstract class RenovationBand with _$RenovationBand {
  const factory RenovationBand({
    required int minAge,
    required int maxAge,
    required double psf,
  }) = _RenovationBand;

  factory RenovationBand.fromJson(Map<String, dynamic> json) =>
      _$RenovationBandFromJson(json);
}

@freezed
abstract class LtvSlab with _$LtvSlab {
  const factory LtvSlab({int? maxValueInr, required double ltvPct}) = _LtvSlab;

  factory LtvSlab.fromJson(Map<String, dynamic> json) =>
      _$LtvSlabFromJson(json);
}

@freezed
abstract class LoanAssumptions with _$LoanAssumptions {
  const factory LoanAssumptions({
    required double interestPct,
    required double foirPct,
    required int maxTenureYears,
    required Map<String, int> retirementAge,
    required int assumedBuildingLifeYears,
    required int buildingLifeBufferYears,
    required double valuationHaircutPct,
    required List<LtvSlab> ltvSlabs,
  }) = _LoanAssumptions;

  factory LoanAssumptions.fromJson(Map<String, dynamic> json) =>
      _$LoanAssumptionsFromJson(json);
}

@freezed
abstract class FlagThresholds with _$FlagThresholds {
  const factory FlagThresholds({
    required int oldBuildingAge,
    required int veryOldBuildingAge,
    required int gstEdgeBandInr,
    required double highLoadingPct,
    required double belowMarketRatio,
  }) = _FlagThresholds;

  factory FlagThresholds.fromJson(Map<String, dynamic> json) =>
      _$FlagThresholdsFromJson(json);
}

/// Wizard pre-fills that are not rates (SPEC §2).
@freezed
abstract class WizardDefaults with _$WizardDefaults {
  const factory WizardDefaults({
    @Default(36) int monthsToPossession,
    @Default(32) int buyerAge,
    @Default(20) int tenureYears,
  }) = _WizardDefaults;

  factory WizardDefaults.fromJson(Map<String, dynamic> json) =>
      _$WizardDefaultsFromJson(json);
}

@freezed
abstract class SourceLink with _$SourceLink {
  const factory SourceLink({required String title, required String url}) =
      _SourceLink;

  factory SourceLink.fromJson(Map<String, dynamic> json) =>
      _$SourceLinkFromJson(json);
}
