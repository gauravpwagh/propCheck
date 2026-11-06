import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'cost_lines.dart';
import 'estimator.dart';

/// Highest quoted price (rounded down to ₹10,000) whose total ≤ [budget].
///
/// Same binary search as `solve_budget` in the reference engine. Total is not
/// strictly monotonic around LTV slabs, so a different search could give a
/// different answer; keep this exact.
BudgetResult solveBudget(PropertyInput inp, RateProfile p, int budget) {
  var lo = 0;
  var hi = budget;
  for (var step = 0; step < 60; step++) {
    final mid = (lo + hi) ~/ 2;
    final trial = inp.copyWith(quotedPrice: mid < 1 ? 1 : mid);
    if (estimate(trial, p).total <= budget) {
      lo = mid;
    } else {
      hi = mid;
    }
    if (hi - lo <= 1) break;
  }
  final price = (lo ~/ 10000) * 10000;
  final breakdown = estimate(inp.copyWith(quotedPrice: price), p);
  return BudgetResult(
    maxPrice: price,
    breakdown: breakdown,
    nearGstSlab: nearGstSlab(inp, breakdown, p),
  );
}

/// True when the affordable-housing GST boundary is within the edge band
/// of the agreement value (SPEC §3 "show a note").
bool nearGstSlab(PropertyInput inp, CostBreakdown r, RateProfile p) {
  if (inp.status != PropertyStatus.underConstruction) return false;
  final ah = p.affordableHousing;
  if (inp.carpetSqft / sqftPerSqm > ah.maxCarpetSqm) return false;
  final av = r.lines['agreement_value']!;
  return (av - ah.maxValueInr).abs() <= p.flagThresholds.gstEdgeBandInr;
}
