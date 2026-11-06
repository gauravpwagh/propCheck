import 'package:freezed_annotation/freezed_annotation.dart';

part 'guidance_models.freezed.dart';
part 'guidance_models.g.dart';

/// `steps_mumbai.json`.
@freezed
abstract class StepsData with _$StepsData {
  const factory StepsData({
    required String schemaVersion,
    required String asOf,
    required List<BuyingStep> steps,
  }) = _StepsData;

  factory StepsData.fromJson(Map<String, dynamic> json) =>
      _$StepsDataFromJson(json);
}

@freezed
abstract class BuyingStep with _$BuyingStep {
  const factory BuyingStep({
    required String id,
    required List<String> statuses,
    required int order,

    /// `using_loan` or `seller_loan`; null means always.
    String? condition,
    required String title,
    required String detail,
    String? link,

    /// Optional (SPEC §10); null means every category.
    List<String>? appliesToCategory,
  }) = _BuyingStep;

  factory BuyingStep.fromJson(Map<String, dynamic> json) =>
      _$BuyingStepFromJson(json);
}

/// `mumbai_risk_data.json` (schema 1.0, see docs/survey_prompt.md).
@freezed
abstract class RiskData with _$RiskData {
  const factory RiskData({
    required String schemaVersion,
    required String region,
    required String asOf,
    String? generatedBy,
    @Default('') String disclaimer,
    required List<ScamPattern> scamPatterns,
    @Default(<AreaNote>[]) List<AreaNote> areaNotes,
    @Default(<String>[]) List<String> generalPrecautions,
    @Default(<VerificationLink>[])
    List<VerificationLink> officialVerificationLinks,
    Map<String, Object?>? rateSnapshot,
    @Default(<String>[]) List<String> notes,
  }) = _RiskData;

  factory RiskData.fromJson(Map<String, dynamic> json) =>
      _$RiskDataFromJson(json);
}

/// Severities used in risk data, most severe first.
const riskSeverities = ['critical', 'high', 'medium', 'low'];

@freezed
abstract class ScamPattern with _$ScamPattern {
  const ScamPattern._();

  const factory ScamPattern({
    required String id,
    required String title,
    required String severity,
    required List<String> appliesToStatus,
    @Default(<String>['all']) List<String> appliesToAreas,
    List<String>? appliesToCategory,
    @Default('') String howItWorks,
    @Default(<String>[]) List<String> redFlags,
    @Default(<String>[]) List<String> preventionChecks,
    @Default(<RecentCase>[]) List<RecentCase> recentCases,
  }) = _ScamPattern;

  factory ScamPattern.fromJson(Map<String, dynamic> json) =>
      _$ScamPatternFromJson(json);

  int get severityRank {
    final i = riskSeverities.indexOf(severity);
    return i < 0 ? riskSeverities.length : i;
  }
}

@freezed
abstract class RecentCase with _$RecentCase {
  const factory RecentCase({
    required String date,
    required String area,
    int? amountInr,
    required String summary,
    required String sourceTitle,
    required String sourceUrl,
  }) = _RecentCase;

  factory RecentCase.fromJson(Map<String, dynamic> json) =>
      _$RecentCaseFromJson(json);
}

@freezed
abstract class AreaNote with _$AreaNote {
  const factory AreaNote({
    required String area,
    @Default(<String>[]) List<String> riskTags,
    required String note,
  }) = _AreaNote;

  factory AreaNote.fromJson(Map<String, dynamic> json) =>
      _$AreaNoteFromJson(json);
}

@freezed
abstract class VerificationLink with _$VerificationLink {
  const factory VerificationLink({
    required String name,
    required String url,
    required String purpose,
  }) = _VerificationLink;

  factory VerificationLink.fromJson(Map<String, dynamic> json) =>
      _$VerificationLinkFromJson(json);
}
