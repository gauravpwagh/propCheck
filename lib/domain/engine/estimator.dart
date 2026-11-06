import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'cost_lines.dart';
import 'flags.dart';
import 'loan.dart';
import 'rounding.dart';

/// GST percentage for this input and whether the affordable slab applied.
({double pct, bool affordable}) gstFor(
  PropertyInput inp,
  int av,
  RateProfile p,
) {
  if (inp.status != PropertyStatus.underConstruction) {
    return (pct: p.gstPct[inp.status.key] ?? 0.0, affordable: false);
  }
  final ah = p.affordableHousing;
  final affordable =
      inp.carpetSqft / sqftPerSqm <= ah.maxCarpetSqm && av <= ah.maxValueInr;
  final key = affordable
      ? 'under_construction_affordable'
      : 'under_construction_standard';
  return (pct: p.gstPct[key]!, affordable: affordable);
}

/// Built-up area: entered value, else carpet × ratio rounded like Python.
double builtupFor(PropertyInput inp, RateProfile p) {
  final b = inp.builtupSqft;
  if (b != null && b != 0) return b;
  return pyRoundToInt(inp.carpetSqft * p.builtupToCarpetRatio).toDouble();
}

/// Full cost breakdown. Port of `estimate` in `tools/reference_engine.py`.
CostBreakdown estimate(
  PropertyInput inp,
  RateProfile p, {
  CostLineRegistry? registry,
}) {
  final quoted = inp.quotedPrice;
  var inAgreement = 0;
  var outside = 0;
  for (final e in inp.extras) {
    if (e.inAgreement) {
      inAgreement += e.amount;
    } else {
      outside += e.amount;
    }
  }
  final av = quoted + inAgreement;
  final rrv = (inp.readyReckonerValue == null || inp.readyReckonerValue == 0)
      ? av
      : inp.readyReckonerValue!;
  final carpet = inp.carpetSqft;
  final builtup = builtupFor(inp, p);
  final gst = gstFor(inp, av, p);
  final loan = loanEligibility(inp, av, p);

  final ctx = LineContext(
    input: inp,
    profile: p,
    agreementValue: av,
    readyReckonerValue: rrv,
    outsideAgreement: outside,
    carpet: carpet,
    gstPct: gst.pct,
    loan: loan,
  );

  final lines = <String, int>{};
  for (final line in (registry ?? CostLineRegistry.standard).linesFor(
    inp.category,
    inp.status,
  )) {
    final v = line.compute(ctx);
    if (v != null) lines[line.key] = v;
  }

  final total = lines.values.fold(0, (a, b) => a + b);
  final extraOverQuoted = total - quoted;
  final tdsApplicable = av >= p.tds.thresholdInr;

  final partial = CostBreakdown(
    lines: lines,
    total: total,
    extraOverQuoted: extraOverQuoted,
    extraPctOfQuoted: quoted == 0
        ? 0
        : pyRound(extraOverQuoted / quoted * 100, 2),
    gstPctApplied: gst.pct,
    affordableHousing: gst.affordable,
    loan: loan,
    ownFundsNeeded: total - loan.loan,
    tdsApplicable: tdsApplicable,
    tdsAmount: tdsApplicable ? rnd(av * p.tds.pct / 100) : 0,
    sellerBankPayoff: inp.status == PropertyStatus.resale
        ? (inp.sellerLoan ?? 0)
        : 0,
    perSqft: PerSqft(
      quotedCarpet: rnd(quoted / carpet),
      quotedBuiltup: rnd(quoted / builtup),
      allInCarpet: rnd(total / carpet),
      allInBuiltup: rnd(total / builtup),
      loadingPct: pyRound((builtup / carpet - 1) * 100, 2),
    ),
    buildingAge: buildingAge(inp),
    flags: const [],
  );
  return partial.copyWith(flags: evaluateFlags(inp, partial, p));
}
