import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import 'guidance_models.dart';

/// Steps for a property: matching status, condition and category, by order.
List<BuyingStep> stepsFor(StepsData data, PropertyInput inp) {
  bool conditionHolds(String? c) => switch (c) {
    null => true,
    'using_loan' => inp.usingLoan,
    'seller_loan' => (inp.sellerLoan ?? 0) > 0,
    _ => true,
  };
  return data.steps
      .where(
        (s) =>
            s.statuses.contains(inp.status.key) &&
            conditionHolds(s.condition) &&
            _categoryMatches(s.appliesToCategory, inp.category),
      )
      .toList()
    ..sort((a, b) => a.order.compareTo(b.order));
}

bool _categoryMatches(List<String>? categories, PropertyCategory c) =>
    categories == null || categories.isEmpty || categories.contains(c.key);

/// Searchable names in an area label: "Vasai-Virar / Nalasopara" gives
/// vasai-virar, vasai, virar, nalasopara; "SRA pockets (Jogeshwari, Kurla)"
/// gives each listed suburb.
List<String> _areaNames(String area) {
  final whole = area.trim().toLowerCase();
  final parts = whole
      .split(RegExp(r'[/,()]'))
      .map((s) => s.trim())
      .where((s) => s.isNotEmpty);
  return {
    whole,
    for (final p in parts) ...[p, ...p.split('-').map((s) => s.trim())],
  }.where((s) => s.isNotEmpty && s != 'all').toList();
}

/// Case-insensitive "contains" match between a locality and an area label.
/// "Nalasopara East" matches "Vasai-Virar / Nalasopara"; very short names
/// and generic words like "East" don't match on their own.
bool localityMatchesArea(String? locality, String area) {
  final loc = (locality ?? '').trim().toLowerCase();
  if (loc.length < 3) return false;
  return _areaNames(area).any(
    (name) =>
        (name.length >= 4 && loc.contains(name)) ||
        (loc.length >= 5 && name.contains(loc)),
  );
}

/// A scam pattern that applies to a property, with whether its area matched.
class PatternMatch {
  const PatternMatch(this.pattern, {required this.areaMatch});

  final ScamPattern pattern;
  final bool areaMatch;
}

/// Patterns for this status/category, sorted by severity then area match.
List<PatternMatch> patternsFor(RiskData data, PropertyInput inp) {
  final out = [
    for (final p in data.scamPatterns)
      if (p.appliesToStatus.contains(inp.status.key) &&
          _categoryMatches(p.appliesToCategory, inp.category))
        PatternMatch(
          p,
          areaMatch: p.appliesToAreas.any(
            (a) => localityMatchesArea(inp.locality, a),
          ),
        ),
  ];
  // Stable sort: severity, then area match first, then file order.
  final indexed = out.indexed.toList()
    ..sort((x, y) {
      final s = x.$2.pattern.severityRank.compareTo(y.$2.pattern.severityRank);
      if (s != 0) return s;
      final a = (y.$2.areaMatch ? 1 : 0).compareTo(x.$2.areaMatch ? 1 : 0);
      if (a != 0) return a;
      return x.$1.compareTo(y.$1);
    });
  return [for (final e in indexed) e.$2];
}

/// Area notes whose area matches the property's locality.
List<AreaNote> areaNotesFor(RiskData data, PropertyInput inp) => [
  for (final n in data.areaNotes)
    if (localityMatchesArea(inp.locality, n.area)) n,
];

/// The `risk_area` flag (SPEC §4), evaluated here because it needs risk data.
Flag? riskAreaFlag(RiskData data, PropertyInput inp) =>
    areaNotesFor(data, inp).isEmpty
    ? null
    : const Flag(id: 'risk_area', severity: FlagSeverity.warning);

/// One "Safety checks" checklist item from a pattern's prevention checks.
class SafetyCheck {
  const SafetyCheck({
    required this.id,
    required this.patternId,
    required this.text,
  });

  /// Stable id: `<pattern id>#<index>`.
  final String id;
  final String patternId;
  final String text;
}

/// Prevention checks of the matching patterns, without duplicate text.
List<SafetyCheck> safetyChecksFor(List<PatternMatch> patterns) {
  final seen = <String>{};
  return [
    for (final m in patterns)
      for (final (i, text) in m.pattern.preventionChecks.indexed)
        if (seen.add(text.trim().toLowerCase()))
          SafetyCheck(
            id: '${m.pattern.id}#$i',
            patternId: m.pattern.id,
            text: text,
          ),
  ];
}

/// True when [asOf] (YYYY-MM-DD) is more than six months before [now].
bool isStale(String asOf, DateTime now) {
  final d = DateTime.tryParse(asOf);
  if (d == null) return true;
  final limit = DateTime(now.year, now.month - 6, now.day);
  return d.isBefore(limit);
}

/// Everything the guidance layer adds to one property's result.
class PropertyGuidance {
  const PropertyGuidance({
    required this.steps,
    required this.patterns,
    required this.safetyChecks,
    required this.areaNotes,
    required this.riskAsOf,
    required this.stale,
  });

  final List<BuyingStep> steps;
  final List<PatternMatch> patterns;
  final List<SafetyCheck> safetyChecks;
  final List<AreaNote> areaNotes;
  final String riskAsOf;
  final bool stale;

  Flag? get riskFlag => areaNotes.isEmpty
      ? null
      : const Flag(id: 'risk_area', severity: FlagSeverity.warning);

  /// Area notes joined, shown as the `risk_area` flag's text.
  String get areaNoteText => areaNotes.map((n) => n.note).join('\n');
}

PropertyGuidance buildGuidance(
  StepsData steps,
  RiskData risk,
  PropertyInput inp, {
  required DateTime now,
}) {
  final patterns = patternsFor(risk, inp);
  return PropertyGuidance(
    steps: stepsFor(steps, inp),
    patterns: patterns,
    safetyChecks: safetyChecksFor(patterns),
    areaNotes: areaNotesFor(risk, inp),
    riskAsOf: risk.asOf,
    stale: isStale(risk.asOf, now),
  );
}
