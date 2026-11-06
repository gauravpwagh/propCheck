// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guidance_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StepsData _$StepsDataFromJson(Map<String, dynamic> json) => _StepsData(
  schemaVersion: json['schema_version'] as String,
  asOf: json['as_of'] as String,
  steps: (json['steps'] as List<dynamic>)
      .map((e) => BuyingStep.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StepsDataToJson(_StepsData instance) =>
    <String, dynamic>{
      'schema_version': instance.schemaVersion,
      'as_of': instance.asOf,
      'steps': instance.steps.map((e) => e.toJson()).toList(),
    };

_BuyingStep _$BuyingStepFromJson(Map<String, dynamic> json) => _BuyingStep(
  id: json['id'] as String,
  statuses: (json['statuses'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  order: (json['order'] as num).toInt(),
  condition: json['condition'] as String?,
  title: json['title'] as String,
  detail: json['detail'] as String,
  link: json['link'] as String?,
  appliesToCategory: (json['applies_to_category'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$BuyingStepToJson(_BuyingStep instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statuses': instance.statuses,
      'order': instance.order,
      'condition': ?instance.condition,
      'title': instance.title,
      'detail': instance.detail,
      'link': ?instance.link,
      'applies_to_category': ?instance.appliesToCategory,
    };

_RiskData _$RiskDataFromJson(Map<String, dynamic> json) => _RiskData(
  schemaVersion: json['schema_version'] as String,
  region: json['region'] as String,
  asOf: json['as_of'] as String,
  generatedBy: json['generated_by'] as String?,
  disclaimer: json['disclaimer'] as String? ?? '',
  scamPatterns: (json['scam_patterns'] as List<dynamic>)
      .map((e) => ScamPattern.fromJson(e as Map<String, dynamic>))
      .toList(),
  areaNotes:
      (json['area_notes'] as List<dynamic>?)
          ?.map((e) => AreaNote.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AreaNote>[],
  generalPrecautions:
      (json['general_precautions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  officialVerificationLinks:
      (json['official_verification_links'] as List<dynamic>?)
          ?.map((e) => VerificationLink.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <VerificationLink>[],
  rateSnapshot: json['rate_snapshot'] as Map<String, dynamic>?,
  notes:
      (json['notes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$RiskDataToJson(_RiskData instance) => <String, dynamic>{
  'schema_version': instance.schemaVersion,
  'region': instance.region,
  'as_of': instance.asOf,
  'generated_by': ?instance.generatedBy,
  'disclaimer': instance.disclaimer,
  'scam_patterns': instance.scamPatterns.map((e) => e.toJson()).toList(),
  'area_notes': instance.areaNotes.map((e) => e.toJson()).toList(),
  'general_precautions': instance.generalPrecautions,
  'official_verification_links': instance.officialVerificationLinks
      .map((e) => e.toJson())
      .toList(),
  'rate_snapshot': ?instance.rateSnapshot,
  'notes': instance.notes,
};

_ScamPattern _$ScamPatternFromJson(Map<String, dynamic> json) => _ScamPattern(
  id: json['id'] as String,
  title: json['title'] as String,
  severity: json['severity'] as String,
  appliesToStatus: (json['applies_to_status'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  appliesToAreas:
      (json['applies_to_areas'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>['all'],
  appliesToCategory: (json['applies_to_category'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  howItWorks: json['how_it_works'] as String? ?? '',
  redFlags:
      (json['red_flags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  preventionChecks:
      (json['prevention_checks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  recentCases:
      (json['recent_cases'] as List<dynamic>?)
          ?.map((e) => RecentCase.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <RecentCase>[],
);

Map<String, dynamic> _$ScamPatternToJson(_ScamPattern instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'severity': instance.severity,
      'applies_to_status': instance.appliesToStatus,
      'applies_to_areas': instance.appliesToAreas,
      'applies_to_category': ?instance.appliesToCategory,
      'how_it_works': instance.howItWorks,
      'red_flags': instance.redFlags,
      'prevention_checks': instance.preventionChecks,
      'recent_cases': instance.recentCases.map((e) => e.toJson()).toList(),
    };

_RecentCase _$RecentCaseFromJson(Map<String, dynamic> json) => _RecentCase(
  date: json['date'] as String,
  area: json['area'] as String,
  amountInr: (json['amount_inr'] as num?)?.toInt(),
  summary: json['summary'] as String,
  sourceTitle: json['source_title'] as String,
  sourceUrl: json['source_url'] as String,
);

Map<String, dynamic> _$RecentCaseToJson(_RecentCase instance) =>
    <String, dynamic>{
      'date': instance.date,
      'area': instance.area,
      'amount_inr': ?instance.amountInr,
      'summary': instance.summary,
      'source_title': instance.sourceTitle,
      'source_url': instance.sourceUrl,
    };

_AreaNote _$AreaNoteFromJson(Map<String, dynamic> json) => _AreaNote(
  area: json['area'] as String,
  riskTags:
      (json['risk_tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  note: json['note'] as String,
);

Map<String, dynamic> _$AreaNoteToJson(_AreaNote instance) => <String, dynamic>{
  'area': instance.area,
  'risk_tags': instance.riskTags,
  'note': instance.note,
};

_VerificationLink _$VerificationLinkFromJson(Map<String, dynamic> json) =>
    _VerificationLink(
      name: json['name'] as String,
      url: json['url'] as String,
      purpose: json['purpose'] as String,
    );

Map<String, dynamic> _$VerificationLinkToJson(_VerificationLink instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'purpose': instance.purpose,
    };
