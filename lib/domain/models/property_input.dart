import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'property_input.freezed.dart';
part 'property_input.g.dart';

/// Everything the user tells us about one property. Nullable fields fall back
/// to the active rate profile's defaults inside the engine, mirroring
/// `inp.get(key, default)` in `tools/reference_engine.py`.
@freezed
abstract class PropertyInput with _$PropertyInput {
  const PropertyInput._();

  const factory PropertyInput({
    @Default(PropertyCategory.residentialFlat) PropertyCategory category,
    required PropertyStatus status,

    /// Free string per category: `1RK` / `1BHK` / `2BHK` for flats.
    required String type,
    required int quotedPrice,
    required double carpetSqft,
    double? builtupSqft,
    required Ownership ownership,
    int? readyReckonerValue,
    double? areaReferencePsf,
    @Default(<Extra>[]) List<Extra> extras,
    int? corpus,
    int? maintenanceMonths,
    double? maintenanceRatePsf,
    int? transferFee,
    double? brokeragePct,
    int? buildingYear,
    bool? hasOc,
    int? sellerLoan,
    String? reraNumber,
    int? monthsToPossession,
    int? monthlyRent,
    int? legalFees,
    int? interiors,
    required int currentYear,
    Finance? finance,
    String? locality,
  }) = _PropertyInput;

  factory PropertyInput.fromJson(Map<String, dynamic> json) =>
      _$PropertyInputFromJson(json);

  bool get usingLoan => finance?.usingLoan ?? false;
}

/// A builder charge such as parking or floor rise.
@freezed
abstract class Extra with _$Extra {
  const factory Extra({
    required String kind,
    required int amount,
    @Default(true) bool inAgreement,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}

@freezed
abstract class Finance with _$Finance {
  const factory Finance({
    @Default(false) bool usingLoan,
    @Default(0) int age,
    @Default(Employment.salaried) Employment employment,
    @Default(0) int netIncome,
    @Default(0) int existingEmi,
    double? ratePct,
    int? tenureYears,

    /// Null means "not entered"; the funds_shortfall flag only fires when set.
    int? ownFunds,
  }) = _Finance;

  factory Finance.fromJson(Map<String, dynamic> json) =>
      _$FinanceFromJson(json);
}
