import 'dart:math' as math;

import '../models/cost_breakdown.dart';
import '../models/enums.dart';
import '../models/property_input.dart';
import '../models/rate_profile.dart';
import 'loan.dart';
import 'rounding.dart';

/// 1 sq m in sq ft.
const sqftPerSqm = 10.7639;

/// How the result screen groups line items.
enum CostGroup { priceAndTaxes, builderAndSociety, loanCosts, movingIn }

/// Values every line needs, computed once before the lines run.
class LineContext {
  LineContext({
    required this.input,
    required this.profile,
    required this.agreementValue,
    required this.readyReckonerValue,
    required this.outsideAgreement,
    required this.carpet,
    required this.gstPct,
    required this.loan,
  });

  final PropertyInput input;
  final RateProfile profile;
  final int agreementValue;
  final int readyReckonerValue;
  final int outsideAgreement;
  final double carpet;
  final double gstPct;
  final LoanResult loan;

  PropertyStatus get status => input.status;

  int get monthsToPossession =>
      input.monthsToPossession ?? profile.wizardDefaults.monthsToPossession;

  double get interestPct => input.finance?.ratePct ?? profile.loan.interestPct;
}

/// One cost line. [compute] returns null when the line does not apply to this
/// particular input (for example loan costs with no loan).
class CostLine {
  const CostLine({
    required this.key,
    required this.group,
    required this.statuses,
    required this.compute,
    this.categories = const {PropertyCategory.residentialFlat},
  });

  final String key;
  final CostGroup group;
  final Set<PropertyCategory> categories;
  final Set<PropertyStatus> statuses;
  final int? Function(LineContext c) compute;

  bool appliesTo(PropertyCategory category, PropertyStatus status) =>
      categories.contains(category) && statuses.contains(status);
}

const _all = {
  PropertyStatus.underConstruction,
  PropertyStatus.readyPossession,
  PropertyStatus.resale,
};
const _uc = {PropertyStatus.underConstruction};
const _builder = {
  PropertyStatus.underConstruction,
  PropertyStatus.readyPossession,
};
const _resale = {PropertyStatus.resale};

/// Registry of cost lines in output order (same order as the reference
/// engine). New categories add lines here instead of adding `if` chains.
class CostLineRegistry {
  const CostLineRegistry(this.lines);

  final List<CostLine> lines;

  Iterable<CostLine> linesFor(PropertyCategory c, PropertyStatus s) =>
      lines.where((l) => l.appliesTo(c, s));

  CostGroup groupOf(String key) => lines.firstWhere((l) => l.key == key).group;

  static final standard = CostLineRegistry([
    CostLine(
      key: 'agreement_value',
      group: CostGroup.priceAndTaxes,
      statuses: _all,
      compute: (c) => c.agreementValue,
    ),
    CostLine(
      key: 'stamp_duty',
      group: CostGroup.priceAndTaxes,
      statuses: _all,
      compute: (c) => rnd(
        math.max(c.agreementValue, c.readyReckonerValue) *
            c.profile.stampDutyFor(c.input.ownership) /
            100,
      ),
    ),
    CostLine(
      key: 'registration',
      group: CostGroup.priceAndTaxes,
      statuses: _all,
      compute: (c) => rnd(
        math.min(
          c.agreementValue * c.profile.registrationPct / 100,
          c.profile.registrationCapInr,
        ),
      ),
    ),
    CostLine(
      key: 'gst',
      group: CostGroup.priceAndTaxes,
      statuses: _all,
      compute: (c) => rnd(c.agreementValue * c.gstPct / 100),
    ),
    CostLine(
      key: 'builder_extras_outside_agreement',
      group: CostGroup.builderAndSociety,
      statuses: _builder,
      compute: (c) => c.outsideAgreement,
    ),
    CostLine(
      key: 'corpus',
      group: CostGroup.builderAndSociety,
      statuses: _builder,
      compute: (c) => c.input.corpus ?? 0,
    ),
    CostLine(
      key: 'advance_maintenance',
      group: CostGroup.builderAndSociety,
      statuses: _all,
      compute: (c) {
        final months =
            c.input.maintenanceMonths ??
            c.profile.advanceMaintenanceMonthsFor(c.status);
        final ratePsf =
            c.input.maintenanceRatePsf ?? c.profile.maintenanceRatePsfMonth;
        return rnd(months * ratePsf * c.carpet);
      },
    ),
    CostLine(
      key: 'society_transfer',
      group: CostGroup.builderAndSociety,
      statuses: _resale,
      compute: (c) => c.input.transferFee ?? c.profile.societyTransferFeeInr,
    ),
    CostLine(
      key: 'brokerage',
      group: CostGroup.priceAndTaxes,
      statuses: _resale,
      compute: (c) {
        final pct = c.input.brokeragePct ?? c.profile.brokeragePctDefault;
        return rnd(
          c.input.quotedPrice * pct / 100 * (1 + c.profile.serviceGstPct / 100),
        );
      },
    ),
    CostLine(
      key: 'renovation',
      group: CostGroup.movingIn,
      statuses: _resale,
      compute: (c) {
        final age = buildingAge(c.input);
        final band = c.profile.renovationPsfByAge.firstWhere(
          (b) => b.minAge <= age && age <= b.maxAge,
        );
        return rnd(band.psf * c.carpet);
      },
    ),
    CostLine(
      key: 'loan_processing',
      group: CostGroup.loanCosts,
      statuses: _all,
      compute: (c) => c.loan.loan > 0
          ? rnd(
              c.loan.loan *
                  c.profile.loanProcessingPct /
                  100 *
                  (1 + c.profile.serviceGstPct / 100),
            )
          : null,
    ),
    CostLine(
      key: 'mortgage_stamp_duty',
      group: CostGroup.loanCosts,
      statuses: _all,
      compute: (c) {
        if (c.loan.loan <= 0) return null;
        final ms = c.profile.mortgageStampDuty;
        return rnd(math.min(c.loan.loan * ms.pct / 100, ms.capInr));
      },
    ),
    CostLine(
      key: 'legal',
      group: CostGroup.movingIn,
      statuses: _all,
      compute: (c) => c.input.legalFees ?? c.profile.legalFeesInr,
    ),
    CostLine(
      key: 'pre_emi_interest',
      group: CostGroup.loanCosts,
      statuses: _uc,
      compute: (c) => rnd(
        c.loan.loan *
            c.interestPct /
            100 *
            c.profile.preEmiAvgDisbursedFraction *
            c.monthsToPossession /
            12,
      ),
    ),
    CostLine(
      key: 'rent_overlap',
      group: CostGroup.movingIn,
      statuses: _uc,
      compute: (c) => rnd((c.input.monthlyRent ?? 0) * c.monthsToPossession),
    ),
    CostLine(
      key: 'interiors',
      group: CostGroup.movingIn,
      statuses: _all,
      compute: (c) => c.input.interiors ?? c.profile.interiorsFor(c.input.type),
    ),
  ]);
}
