import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'cost_breakdown.freezed.dart';
part 'cost_breakdown.g.dart';

/// Result of `estimate()`; keys and meaning match `tools/reference_engine.py`.
@freezed
abstract class CostBreakdown with _$CostBreakdown {
  const factory CostBreakdown({
    /// Line items in computation order, keyed by reference-engine line key.
    required Map<String, int> lines,
    required int total,
    required int extraOverQuoted,
    required double extraPctOfQuoted,
    required double gstPctApplied,
    required bool affordableHousing,
    required LoanResult loan,
    required int ownFundsNeeded,
    required bool tdsApplicable,
    required int tdsAmount,
    required int sellerBankPayoff,
    required PerSqft perSqft,
    required int buildingAge,
    required List<Flag> flags,
  }) = _CostBreakdown;

  factory CostBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CostBreakdownFromJson(json);
}

@freezed
abstract class LoanResult with _$LoanResult {
  const LoanResult._();

  const factory LoanResult({
    required int loan,
    required int tenureYears,

    /// `no_loan`, `ltv` or `income_<tenure limit>`.
    required String binding,
    required int emi,
    required int loanByIncome,
    required int loanByLtv,
    @JsonKey(includeIfNull: true) int? residualLifeYears,
  }) = _LoanResult;

  factory LoanResult.fromJson(Map<String, dynamic> json) =>
      _$LoanResultFromJson(json);

  static const none = LoanResult(
    loan: 0,
    tenureYears: 0,
    binding: 'no_loan',
    emi: 0,
    loanByIncome: 0,
    loanByLtv: 0,
  );
}

@freezed
abstract class PerSqft with _$PerSqft {
  const factory PerSqft({
    required int quotedCarpet,
    required int quotedBuiltup,
    required int allInCarpet,
    required int allInBuiltup,
    required double loadingPct,
  }) = _PerSqft;

  factory PerSqft.fromJson(Map<String, dynamic> json) =>
      _$PerSqftFromJson(json);
}

@freezed
abstract class Flag with _$Flag {
  const factory Flag({required String id, required FlagSeverity severity}) =
      _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}

/// Result of `solveBudget()`.
@freezed
abstract class BudgetResult with _$BudgetResult {
  const factory BudgetResult({
    required int maxPrice,
    required CostBreakdown breakdown,

    /// True when a GST slab boundary is within the edge band of the answer.
    required bool nearGstSlab,
  }) = _BudgetResult;
}
