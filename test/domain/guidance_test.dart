import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/domain/guidance/guidance.dart';
import 'package:prop_check/domain/guidance/guidance_models.dart';

import '../support/fixtures.dart';

void main() {
  final steps = StepsData.fromJson(readJson('assets/data/steps_mumbai.json'));
  final risk = RiskData.fromJson(readJson('assets/data/mumbai_risk_data.json'));

  PropertyInput input({
    PropertyStatus status = PropertyStatus.resale,
    bool loan = true,
    int sellerLoan = 0,
    String? locality,
  }) => PropertyInput(
    status: status,
    type: '1BHK',
    quotedPrice: 5000000,
    carpetSqft: 400,
    ownership: Ownership.male,
    currentYear: 2026,
    sellerLoan: sellerLoan,
    locality: locality,
    finance: Finance(usingLoan: loan),
  );

  group('steps', () {
    test('filter by status and loan condition, in order', () {
      final uc = stepsFor(
        steps,
        input(status: PropertyStatus.underConstruction),
      );
      expect(uc.map((s) => s.id), [
        'uc_rera_check',
        'uc_cost_sheet',
        'uc_legal_review',
        'uc_loan_ipa',
        'uc_booking',
        'uc_register',
        'uc_stage_payments',
        'uc_possession',
      ]);
      final noLoan = stepsFor(
        steps,
        input(status: PropertyStatus.underConstruction, loan: false),
      );
      expect(noLoan.map((s) => s.id), isNot(contains('uc_loan_ipa')));
    });

    test('seller loan adds the seller-bank steps', () {
      final without = stepsFor(steps, input()).map((s) => s.id);
      expect(without, isNot(contains('rs_payoff')));
      final withLoan = stepsFor(steps, input(sellerLoan: 1)).map((s) => s.id);
      expect(withLoan, containsAll(['rs_seller_loan_docs', 'rs_payoff']));
    });
  });

  group('patterns', () {
    test('filtered by status and sorted by severity', () {
      final ps = patternsFor(
        risk,
        input(status: PropertyStatus.readyPossession),
      );
      expect(
        ps.map((m) => m.pattern.id),
        isNot(contains('fake_owner_listing')),
      );
      final ranks = ps.map((m) => m.pattern.severityRank).toList();
      expect(ranks, [...ranks]..sort());
      expect(ps.first.pattern.severity, 'critical');
    });

    test('area matches come first within a severity', () {
      final ps = patternsFor(
        risk,
        input(status: PropertyStatus.underConstruction, locality: 'Kurla West'),
      );
      final high = ps.where((m) => m.pattern.severity == 'high').toList();
      expect(high.first.pattern.id, 'sra_redevelopment_sale_component');
      expect(high.first.areaMatch, isTrue);
    });
  });

  group('risk_area', () {
    test('matches area notes case-insensitively', () {
      expect(riskAreaFlag(risk, input(locality: 'nalasopara east')), isNotNull);
      expect(riskAreaFlag(risk, input(locality: 'Virar West')), isNotNull);
      expect(riskAreaFlag(risk, input(locality: 'Jogeshwari East')), isNotNull);
      expect(riskAreaFlag(risk, input(locality: 'Powai')), isNull);
      expect(riskAreaFlag(risk, input(locality: 'East')), isNull);
      expect(riskAreaFlag(risk, input()), isNull);
    });
  });

  test('safety checks come from prevention checks with stable ids', () {
    final ps = patternsFor(risk, input());
    final checks = safetyChecksFor(ps);
    expect(checks, isNotEmpty);
    expect(checks.map((c) => c.id).toSet().length, checks.length);
    expect(checks.first.id, startsWith('${ps.first.pattern.id}#'));
  });

  test('staleness after six months', () {
    expect(isStale('2026-11-06', DateTime(2027, 5, 5)), isFalse);
    expect(isStale('2026-11-06', DateTime(2027, 5, 7)), isTrue);
    expect(isStale('not a date', DateTime(2026)), isTrue);
  });

  test('guidance bundles everything for a property', () {
    final g = buildGuidance(
      steps,
      risk,
      input(locality: 'Mira Road, Mira-Bhayandar'),
      now: DateTime(2026, 11, 6),
    );
    expect(g.riskFlag?.id, 'risk_area');
    expect(g.areaNoteText, contains('VVCMC').or(isNotEmpty));
    expect(g.stale, isFalse);
  });
}

extension on Matcher {
  Matcher or(Matcher other) => anyOf(this, other);
}
