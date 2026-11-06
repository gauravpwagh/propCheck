import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';
import 'property_input.dart';

part 'saved_property.freezed.dart';
part 'saved_property.g.dart';

/// A property as stored: inputs plus the rate profile version it was
/// calculated with. Results are always recomputed from this.
@freezed
abstract class SavedProperty with _$SavedProperty {
  const factory SavedProperty({
    int? id,
    @Default('') String name,
    required EstimateMode mode,
    int? budget,
    required String profileId,
    required int rateVersion,
    required PropertyInput input,
    @Default(false) bool areaInSqm,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isArchived,
  }) = _SavedProperty;

  factory SavedProperty.fromJson(Map<String, dynamic> json) =>
      _$SavedPropertyFromJson(json);
}
