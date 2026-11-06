import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/domain/engine/engine.dart';

import '../support/fixtures.dart';

/// Boundary cases from docs/TASKS.md M1. Expected values come from the
/// reference engine via tools/edge_cases.py.
void main() {
  final profile = bundledProfile();
  final cases = readJson('test/fixtures/edge_cases.json');

  CostBreakdown run(String name) => estimate(
    PropertyInput.fromJson(
      (cases[name] as Map<String, dynamic>)['input'] as Map<String, dynamic>,
    ),
    profile,
  );

  for (final name in cases.keys) {
    test('matches reference: $name', () {
      final e = cases[name] as Map<String, dynamic>;
      final r = run(name);
      expect(r.lines, (e['lines'] as Map).cast<String, int>());
      expect(r.total, e['total']);
      expect(r.loan.toJson(), e['loan']);
      expect(r.flags.map((f) => f.id).toList(), e['flags']);
      expect(r.gstPctApplied, e['gst_pct']);
      expect(r.tdsAmount, e['tds']);
    });
  }

  group('boundaries', () {
    test('carpet exactly 60 m² and AV exactly 45L is affordable (1%)', () {
      final r = run('carpet_60sqm_av_45L');
      expect(r.affordableHousing, isTrue);
      expect(r.gstPctApplied, 1.0);
    });
    test('one rupee over 45L switches to 5% and raises gst_slab_edge', () {
      final r = run('carpet_60sqm_av_45L_plus1');
      expect(r.gstPctApplied, 5.0);
      expect(r.flags.map((f) => f.id), contains('gst_slab_edge'));
    });
    test('carpet over 60 m² is standard GST', () {
      expect(run('carpet_just_over_60sqm').affordableHousing, isFalse);
    });
    test('TDS applies from exactly 50L', () {
      expect(run('av_50L_tds').tdsApplicable, isTrue);
      expect(run('av_just_under_50L').tdsApplicable, isFalse);
    });
    test('LTV slab: 75L is 80%, above is 75%; 30L is 90%', () {
      expect(run('av_75L_ltv').loan.loanByLtv, 6000000);
      expect(run('av_75L_plus1_ltv').loan.loanByLtv, 5625001);
      expect(run('av_30L_ltv').loan.loanByLtv, 2700000);
    });
    test('building age 30 is old, 29 is not, 40 is very old', () {
      expect(run('age_30').flags.map((f) => f.id), ['old_building']);
      expect(run('age_29').flags, isEmpty);
      expect(run('age_40').flags.map((f) => f.id), ['very_old_building']);
    });
    test('residual life ≤ 0 gives loan 0 bound by building life', () {
      for (final n in ['residual_zero', 'residual_negative']) {
        final r = run(n);
        expect(r.loan.loan, 0);
        expect(r.loan.binding, 'income_building_life');
        expect(r.lines.containsKey('loan_processing'), isFalse);
      }
    });
    test('no loan and zero income give loan 0', () {
      expect(run('no_loan').loan.binding, 'no_loan');
      expect(run('zero_income').loan.loan, 0);
      expect(run('existing_emi_exceeds').loan.loan, 0);
    });
  });

  test('rnd rounds half up like Decimal ROUND_HALF_UP', () {
    expect(rnd(2.5), 3);
    expect(rnd(3.5), 4);
    expect(rnd(-2.5), -3);
    expect(rnd(1.4999999), 1);
    expect(rnd(7), 7);
    expect(rnd(1e15 + 0.5), 1000000000000001);
  });
}
