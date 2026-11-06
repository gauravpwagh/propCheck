import '../../domain/engine/engine.dart';

/// One value a rate snapshot would change.
class RateChange {
  const RateChange(this.field, this.from, this.to);

  /// Dotted profile key, e.g. `stamp_duty_pct.male`.
  final String field;
  final num from;
  final num to;
}

/// Result of applying a risk file's `rate_snapshot` to a profile.
class SnapshotProposal {
  const SnapshotProposal({required this.updated, required this.changes});

  final RateProfile updated;
  final List<RateChange> changes;

  bool get hasChanges => changes.isNotEmpty;
}

num? _num(Object? v) => v is num ? v : null;

/// Maps a `rate_snapshot` (survey format) onto [p]. Nothing is saved here:
/// the caller offers the changes to the user and saves only on confirm.
SnapshotProposal proposeFromSnapshot(RateProfile p, Map<String, Object?> snap) {
  final changes = <RateChange>[];
  void note(String field, num from, num? to) {
    if (to != null && to != from) changes.add(RateChange(field, from, to));
  }

  final stamp = Map<String, double>.of(p.stampDutyPct);
  final s = snap['stamp_duty_pct'];
  if (s is Map) {
    for (final (from, to) in [
      ('male', 'male'),
      ('female', 'female'),
      ('joint_male_female', 'joint'),
    ]) {
      final v = _num(s[from]);
      note('stamp_duty_pct.$to', stamp[to] ?? 0, v);
      if (v != null) stamp[to] = v.toDouble();
    }
  }

  final gst = Map<String, double>.of(p.gstPct);
  final g = snap['gst_pct'];
  if (g is Map) {
    for (final (from, to) in [
      ('under_construction_standard', 'under_construction_standard'),
      ('under_construction_affordable', 'under_construction_affordable'),
      ('ready_with_oc', 'ready_possession'),
      ('resale', 'resale'),
    ]) {
      final v = _num(g[from]);
      note('gst_pct.$to', gst[to] ?? 0, v);
      if (v != null) gst[to] = v.toDouble();
    }
  }

  final reg = _num(snap['registration_pct']);
  note('registration_pct', p.registrationPct, reg);
  final cap = _num(snap['registration_cap_inr']);
  note('registration_cap_inr', p.registrationCapInr, cap);

  var ah = p.affordableHousing;
  final a = snap['affordable_housing'];
  if (a is Map) {
    final sqm = _num(a['max_carpet_sqm_metro']);
    final val = _num(a['max_value_inr']);
    note('affordable_housing.max_carpet_sqm', ah.maxCarpetSqm, sqm);
    note('affordable_housing.max_value_inr', ah.maxValueInr, val);
    ah = ah.copyWith(
      maxCarpetSqm: sqm?.toDouble() ?? ah.maxCarpetSqm,
      maxValueInr: val?.toInt() ?? ah.maxValueInr,
    );
  }

  var tds = p.tds;
  final t = snap['tds_pct_if_value_at_least'];
  if (t is Map) {
    final pct = _num(t['pct']);
    final thr = _num(t['threshold_inr']);
    note('tds.pct', tds.pct, pct);
    note('tds.threshold_inr', tds.thresholdInr, thr);
    tds = tds.copyWith(
      pct: pct?.toDouble() ?? tds.pct,
      thresholdInr: thr?.toInt() ?? tds.thresholdInr,
    );
  }

  final sources = snap['sources'];
  final updated = p.copyWith(
    stampDutyPct: stamp,
    gstPct: gst,
    registrationPct: reg?.toDouble() ?? p.registrationPct,
    registrationCapInr: cap?.toInt() ?? p.registrationCapInr,
    affordableHousing: ah,
    tds: tds,
    includesMetroCess: snap['includes_metro_cess'] is bool
        ? snap['includes_metro_cess']! as bool
        : p.includesMetroCess,
    asOf: snap['as_of'] is String ? snap['as_of']! as String : p.asOf,
    sources: sources is List
        ? [
            for (final s in sources)
              if (s is Map && s['title'] is String && s['url'] is String)
                SourceLink(
                  title: s['title'] as String,
                  url: s['url'] as String,
                ),
          ]
        : p.sources,
  );
  return SnapshotProposal(updated: updated, changes: changes);
}
