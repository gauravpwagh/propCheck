import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/l10n/labels.dart';
import '../../core/money.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';
import 'compare_controller.dart';

class CompareScreen extends ConsumerWidget {
  const CompareScreen({super.key, required this.ids});

  /// Comma-separated property ids.
  final String ids;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final data = ref.watch(compareDataProvider(ids));
    return Scaffold(
      appBar: AppBar(title: Text(l.compareTitle)),
      body: data.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.commonError('$e'))),
        data: (cols) => cols.length < 2
            ? Center(child: Text(l.compareNeedTwo))
            : _CompareBody(cols: cols),
      ),
    );
  }
}

class _CompareBody extends StatelessWidget {
  const _CompareBody({required this.cols});

  final List<CompareColumn> cols;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final rows = compareRows(l);
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _Table(cols: cols, rows: rows),
        ),
        const SizedBox(height: 24),
        Text(
          l.compareCostSplit,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        _CostSplitChart(cols: cols),
        const SizedBox(height: 16),
        Text(l.disclaimer, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

class _Table extends StatelessWidget {
  const _Table({required this.cols, required this.rows});

  final List<CompareColumn> cols;
  final List<CompareRow> rows;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final t = Theme.of(context).textTheme;
    Widget cell(Widget child, {bool best = false}) => Container(
      constraints: const BoxConstraints(minWidth: 120, minHeight: 48),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      alignment: Alignment.centerRight,
      color: best ? scheme.tertiaryContainer : null,
      child: child,
    );
    return Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      border: TableBorder(
        horizontalInside: BorderSide(color: scheme.outlineVariant),
      ),
      children: [
        TableRow(
          children: [
            const SizedBox.shrink(),
            for (final c in cols)
              cell(
                Text(
                  c.view.property.name.isEmpty
                      ? c.view.property.input.type
                      : c.view.property.name,
                  style: t.titleSmall,
                  textAlign: TextAlign.right,
                ),
              ),
          ],
        ),
        for (final r in rows)
          TableRow(
            children: [
              Container(
                constraints: const BoxConstraints(minHeight: 48),
                padding: const EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.centerLeft,
                child: Text(r.label),
              ),
              for (final c in cols)
                () {
                  final best = r.bestIndexes(cols).contains(cols.indexOf(c));
                  final text = r.format(c);
                  return cell(
                    Semantics(
                      label: best ? '$text, ${l.compareBest}' : text,
                      excludeSemantics: true,
                      child: Text(
                        text,
                        style: best
                            ? const TextStyle(fontWeight: FontWeight.bold)
                            : null,
                      ),
                    ),
                    best: best,
                  );
                }(),
            ],
          ),
      ],
    );
  }
}

class _CostSplitChart extends StatelessWidget {
  const _CostSplitChart({required this.cols});

  final List<CompareColumn> cols;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final colors = {
      CostGroup.priceAndTaxes: scheme.primary,
      CostGroup.builderAndSociety: scheme.tertiary,
      CostGroup.loanCosts: scheme.error,
      CostGroup.movingIn: scheme.secondary,
    };
    final maxTotal = cols
        .map((c) => c.outcome.breakdown.total)
        .reduce((a, b) => a > b ? a : b);
    return Column(
      children: [
        SizedBox(
          height: 240,
          child: BarChart(
            BarChartData(
              maxY: maxTotal * 1.05,
              barTouchData: const BarTouchData(enabled: false),
              gridData: const FlGridData(show: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                topTitles: const AxisTitles(),
                rightTitles: const AxisTitles(),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 56,
                    getTitlesWidget: (v, meta) => Text(
                      Money.compact(v.round()),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (v, meta) {
                      final c = cols[v.toInt()];
                      final p = c.view.property;
                      return Text(
                        p.name.isEmpty ? p.input.type : p.name,
                        overflow: TextOverflow.ellipsis,
                      );
                    },
                  ),
                ),
              ),
              barGroups: [
                for (var i = 0; i < cols.length; i++)
                  BarChartGroupData(
                    x: i,
                    barRods: [
                      () {
                        final split = cols[i].groupTotals;
                        var from = 0.0;
                        final items = <BarChartRodStackItem>[];
                        for (final g in CostGroup.values) {
                          final v = (split[g] ?? 0).toDouble();
                          items.add(
                            BarChartRodStackItem(from, from + v, colors[g]!),
                          );
                          from += v;
                        }
                        return BarChartRodData(
                          toY: from,
                          width: 36,
                          rodStackItems: items,
                          borderRadius: BorderRadius.zero,
                        );
                      }(),
                    ],
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            for (final g in CostGroup.values)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(width: 12, height: 12, color: colors[g]),
                  const SizedBox(width: 6),
                  Text(l.groupLabel(g)),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
