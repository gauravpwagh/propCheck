import 'dart:math' as math;

import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'rounding.dart';

/// LTV percentage for an agreement value (first slab whose cap covers it).
double ltvPct(int value, RateProfile p) {
  for (final slab in p.loan.ltvSlabs) {
    if (slab.maxValueInr == null || value <= slab.maxValueInr!) {
      return slab.ltvPct;
    }
  }
  return 0;
}

/// Age of the building; only meaningful for resale.
int buildingAge(PropertyInput inp) {
  final year = inp.buildingYear;
  if (inp.status != PropertyStatus.resale || year == null || year == 0) {
    return 0;
  }
  return inp.currentYear - year;
}

/// Present value of [emi] over [n] months at monthly rate [i].
double _pv(num emi, double i, int n) {
  if (i == 0) return (emi * n).toDouble();
  return emi * (1 - math.pow(1 + i, -n.toDouble())) / i;
}

num _emiFor(int loan, double i, int n) {
  if (i == 0) return loan / n;
  return loan * i / (1 - math.pow(1 + i, -n.toDouble()));
}

/// Probable loan and which limit binds. Port of `loan_eligibility`.
LoanResult loanEligibility(PropertyInput inp, int av, RateProfile p) {
  final f = inp.finance;
  if (f == null || !f.usingLoan) return LoanResult.none;

  final l = p.loan;
  final ageB = buildingAge(inp);
  final residual =
      l.assumedBuildingLifeYears - ageB - l.buildingLifeBufferYears;
  final retire = l.retirementAge[f.employment.key]!;

  // Insertion order matters: ties resolve to the earliest key, like Python's
  // min() over a dict.
  final candidates = <String, int>{
    'max_tenure': l.maxTenureYears,
    'requested_tenure': f.tenureYears ?? l.maxTenureYears,
    'retirement': retire - f.age,
    'building_life': residual,
  };
  var tenureLimit = candidates.keys.first;
  for (final k in candidates.keys) {
    if (candidates[k]! < candidates[tenureLimit]!) tenureLimit = k;
  }
  final tenure = math.max(0, candidates[tenureLimit]!);

  final rate = f.ratePct ?? l.interestPct;
  final i = rate / 12 / 100;
  final n = 12 * tenure;
  final emiCap = f.netIncome * l.foirPct / 100 - f.existingEmi;
  final loanIncome = (emiCap <= 0 || n <= 0) ? 0 : rnd(_pv(emiCap, i, n));

  final haircut = l.valuationHaircutPct / 100;
  final bankValue = av * (1 - haircut);
  final loanLtv = rnd(ltvPct(av, p) / 100 * bankValue);
  final loan = math.max(0, math.min(loanIncome, loanLtv));
  final binding = loanLtv <= loanIncome ? 'ltv' : 'income_$tenureLimit';
  final emi = (loan > 0 && n > 0) ? rnd(_emiFor(loan, i, n)) : 0;

  return LoanResult(
    loan: loan,
    tenureYears: tenure,
    binding: binding,
    emi: emi,
    loanByIncome: loanIncome,
    loanByLtv: loanLtv,
    residualLifeYears: inp.status == PropertyStatus.resale ? residual : null,
  );
}

/// Monthly EMI for a loan; used by the UI for "what if" displays.
int emiFor(int loan, double ratePct, int tenureYears) {
  final n = 12 * tenureYears;
  if (loan <= 0 || n <= 0) return 0;
  return rnd(_emiFor(loan, ratePct / 12 / 100, n));
}
