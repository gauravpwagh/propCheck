import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'cost_lines.dart';

/// A data-driven flag rule (SPEC §4). The message and action text live in the
/// ARB files under `flag_<id>_title` / `flag_<id>_action`.
class FlagRule {
  const FlagRule(this.id, this.severity, this.when);

  final String id;
  final FlagSeverity severity;
  final bool Function(PropertyInput inp, CostBreakdown r, RateProfile p) when;
}

bool _isUc(PropertyInput i) => i.status == PropertyStatus.underConstruction;
bool _isResale(PropertyInput i) => i.status == PropertyStatus.resale;

/// Rules in output order (same order as `flags()` in the reference engine).
/// `risk_area` needs risk data and is added by the guidance layer.
final flagRules = <FlagRule>[
  FlagRule(
    'no_rera',
    FlagSeverity.critical,
    (i, r, p) => _isUc(i) && (i.reraNumber == null || i.reraNumber!.isEmpty),
  ),
  FlagRule(
    'no_oc',
    FlagSeverity.critical,
    (i, r, p) =>
        (i.status == PropertyStatus.readyPossession || _isResale(i)) &&
        i.hasOc == false,
  ),
  FlagRule('gst_slab_edge', FlagSeverity.warning, (i, r, p) {
    final av = r.lines['agreement_value']!;
    final ah = p.affordableHousing;
    return _isUc(i) &&
        i.carpetSqft / sqftPerSqm <= ah.maxCarpetSqm &&
        ah.maxValueInr < av &&
        av <= ah.maxValueInr + p.flagThresholds.gstEdgeBandInr;
  }),
  FlagRule(
    'stamp_on_ready_reckoner',
    FlagSeverity.info,
    (i, r, p) => (i.readyReckonerValue ?? 0) > r.lines['agreement_value']!,
  ),
  // very_old_building and old_building are exclusive (elif in the reference).
  FlagRule(
    'very_old_building',
    FlagSeverity.critical,
    (i, r, p) =>
        _isResale(i) && r.buildingAge >= p.flagThresholds.veryOldBuildingAge,
  ),
  FlagRule(
    'old_building',
    FlagSeverity.warning,
    (i, r, p) =>
        _isResale(i) &&
        r.buildingAge < p.flagThresholds.veryOldBuildingAge &&
        r.buildingAge >= p.flagThresholds.oldBuildingAge,
  ),
  FlagRule('funds_shortfall', FlagSeverity.critical, (i, r, p) {
    final own = i.finance?.ownFunds;
    return own != null && r.ownFundsNeeded > own;
  }),
  FlagRule(
    'tenure_cut_by_building',
    FlagSeverity.warning,
    (i, r, p) => r.loan.binding == 'income_building_life',
  ),
  FlagRule(
    'seller_loan',
    FlagSeverity.warning,
    (i, r, p) => _isResale(i) && (i.sellerLoan ?? 0) > 0,
  ),
  FlagRule(
    'high_loading',
    FlagSeverity.info,
    (i, r, p) => r.perSqft.loadingPct > p.flagThresholds.highLoadingPct,
  ),
  FlagRule('below_market_price', FlagSeverity.warning, (i, r, p) {
    final ref = i.areaReferencePsf;
    return ref != null &&
        ref != 0 &&
        r.perSqft.quotedCarpet < ref * p.flagThresholds.belowMarketRatio;
  }),
];

/// All engine flags for a computed result (everything except `risk_area`).
List<Flag> evaluateFlags(PropertyInput inp, CostBreakdown r, RateProfile p) => [
  for (final rule in flagRules)
    if (rule.when(inp, r, p)) Flag(id: rule.id, severity: rule.severity),
];

/// Severity of a known flag id; `risk_area` included.
FlagSeverity severityOf(String id) => id == 'risk_area'
    ? FlagSeverity.warning
    : flagRules.firstWhere((r) => r.id == id).severity;
