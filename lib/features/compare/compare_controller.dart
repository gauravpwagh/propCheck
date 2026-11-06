import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/l10n/labels.dart';
import '../../core/money.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';
import '../property/property_providers.dart';

part 'compare_controller.g.dart';

/// One property in the compare table.
class CompareColumn {
  CompareColumn({
    required this.view,
    required this.outcome,
    required this.checklistDone,
  });

  final PropertyView view;
  final EstimateOutcome outcome;

  /// 0–1.
  final double checklistDone;

  CostBreakdown get b => outcome.breakdown;

  int get extras => view.property.input.extras.fold(0, (a, e) => a + e.amount);

  int flagCount(FlagSeverity s) => b.flags.where((f) => f.severity == s).length;

  Map<CostGroup, int> get groupTotals {
    final reg = CostLineRegistry.standard;
    final out = <CostGroup, int>{};
    for (final e in b.lines.entries) {
      final g = reg.groupOf(e.key);
      out[g] = (out[g] ?? 0) + e.value;
    }
    return out;
  }
}

enum Better { lower, higher, none }

/// One aligned row: how to read, format and rank a value.
class CompareRow {
  const CompareRow(
    this.label,
    this.value,
    this.format, {
    this.better = Better.lower,
  });

  final String label;
  final num? Function(CompareColumn c) value;
  final String Function(CompareColumn c) format;
  final Better better;

  /// Columns holding the best value (ties all win; none if all equal).
  List<int> bestIndexes(List<CompareColumn> cols) {
    if (better == Better.none) return const [];
    final values = cols.map(value).toList();
    if (values.any((v) => v == null)) return const [];
    final nums = values.cast<num>();
    final best = better == Better.lower
        ? nums.reduce((a, b) => a < b ? a : b)
        : nums.reduce((a, b) => a > b ? a : b);
    if (nums.every((v) => v == best)) return const [];
    return [
      for (var i = 0; i < nums.length; i++)
        if (nums[i] == best) i,
    ];
  }
}

List<CompareRow> compareRows(AppLocalizations l) {
  String money(int v) => Money.full(v);
  return [
    CompareRow(
      l.compareQuoted,
      (c) => c.outcome.quotedPrice,
      (c) => money(c.outcome.quotedPrice),
    ),
    CompareRow(l.compareTotal, (c) => c.b.total, (c) => money(c.b.total)),
    CompareRow(
      l.compareOwnFunds,
      (c) => c.b.ownFundsNeeded,
      (c) => money(c.b.ownFundsNeeded),
    ),
    CompareRow(
      l.compareLoan,
      (c) => c.b.loan.loan,
      (c) => money(c.b.loan.loan),
      better: Better.higher,
    ),
    CompareRow(
      l.compareEmi,
      (c) => c.b.loan.emi,
      (c) => money(c.b.loan.emi),
      better: Better.none,
    ),
    CompareRow(
      l.compareQuotedPsf,
      (c) => c.b.perSqft.quotedCarpet,
      (c) => money(c.b.perSqft.quotedCarpet),
    ),
    CompareRow(
      l.compareAllInPsf,
      (c) => c.b.perSqft.allInCarpet,
      (c) => money(c.b.perSqft.allInCarpet),
    ),
    CompareRow(
      l.compareLoading,
      (c) => c.b.perSqft.loadingPct,
      (c) => '${c.b.perSqft.loadingPct.toStringAsFixed(1)}%',
    ),
    CompareRow(
      l.compareStamp,
      (c) => c.b.lines['stamp_duty'],
      (c) => money(c.b.lines['stamp_duty'] ?? 0),
    ),
    CompareRow(
      l.compareGst,
      (c) => c.b.lines['gst'],
      (c) => money(c.b.lines['gst'] ?? 0),
    ),
    CompareRow(l.compareExtras, (c) => c.extras, (c) => money(c.extras)),
    CompareRow(
      l.compareBuildingAge,
      (c) => c.b.buildingAge,
      (c) => l.compareYears(c.b.buildingAge),
    ),
    CompareRow(
      l.compareStatus,
      (c) => null,
      (c) => l.statusLabel(c.view.property.input.status),
      better: Better.none,
    ),
    CompareRow(
      l.compareFlags,
      // Rank by critical first, then warnings.
      (c) =>
          c.flagCount(FlagSeverity.critical) * 1000 +
          c.flagCount(FlagSeverity.warning),
      (c) => l.compareFlagSummary(
        c.flagCount(FlagSeverity.critical),
        c.flagCount(FlagSeverity.warning),
        c.flagCount(FlagSeverity.info),
      ),
    ),
    CompareRow(
      l.compareChecklist,
      (c) => c.checklistDone,
      (c) => '${(c.checklistDone * 100).round()}%',
      better: Better.higher,
    ),
  ];
}

/// Loads and recomputes the picked properties (missing ones are dropped).
///
/// [ids] is a comma-separated list so the family key compares by value.
@riverpod
Future<List<CompareColumn>> compareData(Ref ref, String ids) async {
  final out = <CompareColumn>[];
  for (final id in ids.split(',').map(int.tryParse).nonNulls) {
    final v = await ref.watch(propertyViewProvider(id).future);
    final o = v?.outcome;
    if (v == null || o == null) continue;
    out.add(
      CompareColumn(
        view: v,
        outcome: o,
        checklistDone: await ref.watch(checklistProgressProvider(id).future),
      ),
    );
  }
  return out;
}
