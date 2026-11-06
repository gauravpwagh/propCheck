import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'budget.dart';
import 'estimator.dart';

/// What the result screen shows for one property in either mode.
class EstimateOutcome {
  const EstimateOutcome({
    required this.mode,
    required this.breakdown,
    required this.quotedPrice,
    this.budget,
    this.nearGstSlab = false,
  });

  final EstimateMode mode;
  final CostBreakdown breakdown;

  /// Quoted price used: entered (price mode) or the solved maximum.
  final int quotedPrice;
  final int? budget;
  final bool nearGstSlab;
}

/// Reasons an input can't be estimated yet.
enum InputProblem {
  missingAmount,
  missingCarpet,
  buildingYearInFuture,
  unsupportedCategory,
}

/// Checks the minimum the engine needs; empty means OK.
List<InputProblem> validateInput(
  PropertyInput inp,
  RateProfile p, {
  required EstimateMode mode,
  int? budget,
}) => [
  if (mode == EstimateMode.priceToTotal && inp.quotedPrice <= 0)
    InputProblem.missingAmount,
  if (mode == EstimateMode.budgetToPrice && (budget == null || budget <= 0))
    InputProblem.missingAmount,
  if (inp.carpetSqft <= 0) InputProblem.missingCarpet,
  if (inp.status == PropertyStatus.resale &&
      (inp.buildingYear ?? 0) > inp.currentYear)
    InputProblem.buildingYearInFuture,
  if (!p.supportsCategory(inp.category)) InputProblem.unsupportedCategory,
];

/// Runs the engine for either mode, or returns null if inputs are incomplete.
EstimateOutcome? computeOutcome(
  PropertyInput inp,
  RateProfile p, {
  required EstimateMode mode,
  int? budget,
}) {
  if (validateInput(inp, p, mode: mode, budget: budget).isNotEmpty) {
    return null;
  }
  if (mode == EstimateMode.budgetToPrice) {
    final r = solveBudget(inp, p, budget!);
    if (r.maxPrice <= 0) return null;
    return EstimateOutcome(
      mode: mode,
      breakdown: r.breakdown,
      quotedPrice: r.maxPrice,
      budget: budget,
      nearGstSlab: r.nearGstSlab,
    );
  }
  final b = estimate(inp, p);
  return EstimateOutcome(
    mode: mode,
    breakdown: b,
    quotedPrice: inp.quotedPrice,
    nearGstSlab: nearGstSlab(inp, b, p),
  );
}
