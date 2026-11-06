import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/money.dart';
import '../../domain/guidance/guidance.dart';
import '../../domain/guidance/guidance_models.dart';
import '../../l10n/gen/app_localizations.dart';
import '../guidance/guidance_providers.dart';
import '../guidance/guidance_section.dart';

/// Library of scam patterns, area notes, precautions and official links.
class RisksScreen extends ConsumerWidget {
  const RisksScreen({super.key, this.highlight});

  /// Pattern id to open expanded.
  final String? highlight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final data = ref.watch(riskDataProvider);
    return Scaffold(
      appBar: AppBar(title: Text(l.risksTitle)),
      body: data.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.commonError('$e'))),
        data: (d) => _RisksBody(data: d, highlight: highlight),
      ),
    );
  }
}

class _RisksBody extends StatelessWidget {
  const _RisksBody({required this.data, this.highlight});

  final RiskData data;
  final String? highlight;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final patterns = [...data.scamPatterns]
      ..sort((a, b) => a.severityRank.compareTo(b.severityRank));
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        Text(data.region, style: t.titleMedium),
        Text(l.riskAsOf(data.asOf), style: t.bodySmall),
        if (isStale(data.asOf, DateTime.now())) const StaleBanner(),
        const SizedBox(height: 12),
        for (final p in patterns)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _PatternCard(pattern: p, expanded: p.id == highlight),
          ),
        if (data.areaNotes.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(l.risksAreaNotes, style: t.titleMedium),
          for (final n in data.areaNotes)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.place_outlined),
              title: Text(n.area),
              subtitle: Text(n.note),
            ),
        ],
        if (data.generalPrecautions.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(l.risksPrecautions, style: t.titleMedium),
          for (final p in data.generalPrecautions)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.check_circle_outline),
              title: Text(p),
            ),
        ],
        if (data.officialVerificationLinks.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(l.risksVerify, style: t.titleMedium),
          for (final v in data.officialVerificationLinks)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.verified_outlined),
              title: Text(v.name),
              subtitle: Text(v.purpose),
              trailing: const Icon(Icons.open_in_new),
              onTap: () => openExternal(context, v.url),
            ),
        ],
        const SizedBox(height: 16),
        Text(data.disclaimer, style: t.bodySmall),
      ],
    );
  }
}

class _PatternCard extends StatelessWidget {
  const _PatternCard({required this.pattern, required this.expanded});

  final ScamPattern pattern;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final p = pattern;
    final areas = p.appliesToAreas.map((a) => a == 'all' ? l.risksAllAreas : a);
    Widget heading(String s) => Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 4),
      child: Text(s, style: t.titleSmall),
    );
    Widget bullet(String s) =>
        Padding(padding: const EdgeInsets.only(bottom: 4), child: Text('• $s'));
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ExpansionTile(
        initiallyExpanded: expanded,
        leading: SeverityDot(severity: p.severity),
        title: Text(p.title),
        subtitle: Text(l.risksAreas(areas.toSet().join(', '))),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heading(l.risksHowItWorks),
          Text(p.howItWorks),
          if (p.redFlags.isNotEmpty) ...[
            heading(l.risksWatchFor),
            for (final f in p.redFlags) bullet(f),
          ],
          if (p.preventionChecks.isNotEmpty) ...[
            heading(l.risksPrevention),
            for (final c in p.preventionChecks) bullet(c),
          ],
          if (p.recentCases.isNotEmpty) ...[
            heading(l.risksRecentCases),
            for (final c in p.recentCases)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('${c.date} · ${c.area}'),
                subtitle: Text(
                  [
                    c.summary,
                    if (c.amountInr != null)
                      l.risksCaseAmount(Money.compactWithSymbol(c.amountInr!)),
                    c.sourceTitle,
                  ].join('\n'),
                ),
                trailing: const Icon(Icons.open_in_new),
                onTap: () => openExternal(context, c.sourceUrl),
              ),
          ],
        ],
      ),
    );
  }
}
