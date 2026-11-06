// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedProperty _$SavedPropertyFromJson(Map<String, dynamic> json) =>
    _SavedProperty(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String? ?? '',
      mode: $enumDecode(_$EstimateModeEnumMap, json['mode']),
      budget: (json['budget'] as num?)?.toInt(),
      profileId: json['profile_id'] as String,
      rateVersion: (json['rate_version'] as num).toInt(),
      input: PropertyInput.fromJson(json['input'] as Map<String, dynamic>),
      areaInSqm: json['area_in_sqm'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isArchived: json['is_archived'] as bool? ?? false,
    );

Map<String, dynamic> _$SavedPropertyToJson(_SavedProperty instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': instance.name,
      'mode': _$EstimateModeEnumMap[instance.mode]!,
      'budget': ?instance.budget,
      'profile_id': instance.profileId,
      'rate_version': instance.rateVersion,
      'input': instance.input.toJson(),
      'area_in_sqm': instance.areaInSqm,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_archived': instance.isArchived,
    };

const _$EstimateModeEnumMap = {
  EstimateMode.priceToTotal: 'price_to_total',
  EstimateMode.budgetToPrice: 'budget_to_price',
};
