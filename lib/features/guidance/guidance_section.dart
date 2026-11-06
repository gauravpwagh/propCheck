import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/theme.dart';
import '../../data/repositories/checklist_repository.dart';
import '../../domain/guidance/guidance.dart';
import '../../l10n/gen/app_localizations.dart';

/// Steps, safety checks and scam patterns for one property. With [entries]
/// and [onToggle] the items are tickable (saved property); without, they are
/// a read-only preview (wizard result).
class GuidanceSection extends StatelessWidget {
  const GuidanceSection({
    super.key,
    required this.guidance,
    this.entries,
    this.onToggle,
    this.onEditNote,
  });

  final PropertyGuidance guidance;
  final List<ChecklistEntry>? entries;
  final void Function(ChecklistEntry entry, bool done)? onToggle;
  final void Function(ChecklistEntry entry)? onEditNote;

  ChecklistEntry? _entry(String itemId, String source) {
    for (final e in entries ?? const <ChecklistEntry>[]) {
      if (e.itemId == itemId && e.source == source) return e;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final g = guidance;
    final stepEntries = [
      for (final s in g.steps) _entry(s.id, ChecklistSource.step),
    ];
    final safetyEntries = [
      for (final c in g.safetyChecks) _entry(c.id, ChecklistSource.safety),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ChecklistCard(
          title: l.guidanceSteps,
          items: [
            for (final (i, s) in g.steps.indexed)
              _Item(
                title: s.title,
                detail: s.detail,
                link: s.link,
                entry: stepEntries[i],
              ),
          ],
          onToggle: onToggle,
          onEditNote: onEditNote,
        ),
        const SizedBox(height: 16),
        _ChecklistCard(
          title: l.guidanceSafetyChecks,
          subtitle: l.guidanceSafetyHelp,
          items: [
            for (final (i, c) in g.safetyChecks.indexed)
              _Item(title: c.text, entry: safetyEntries[i]),
          ],
          onToggle: onToggle,
          onEditNote: onEditNote,
        ),
        const SizedBox(height: 16),
        _RisksCard(guidance: g),
      ],
    );
  }
}

class _Item {
  const _Item({required this.title, this.detail, this.link, this.entry});

  final String title;
  final String? detail;
  final String? link;
  final ChecklistEntry? entry;
}

class _ChecklistCard extends StatelessWidget {
  const _ChecklistCard({
    required this.title,
    required this.items,
    this.subtitle,
    this.onToggle,
    this.onEditNote,
  });

  final String title;
  final String? subtitle;
  final List<_Item> items;
  final void Function(ChecklistEntry entry, bool done)? onToggle;
  final void Function(ChecklistEntry entry)? onEditNote;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final tracked = items.where((i) => i.entry != null).toList();
    final done = tracked.where((i) => i.entry!.done).length;
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(title, style: t.titleMedium),
              subtitle: subtitle == null ? null : Text(subtitle!),
              trailing: tracked.isEmpty
                  ? null
                  : Text(l.guidanceStepsProgress(done, tracked.length)),
            ),
            for (final item in items)
              if (item.entry != null && onToggle != null)
                CheckboxListTile(
                  value: item.entry!.done,
                  onChanged: (v) => onToggle!(item.entry!, v ?? false),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(item.title),
                  subtitle: _subtitle(context, item),
                  secondary: onEditNote == null
                      ? null
                      : IconButton(
                          tooltip: l.guidanceEditNote,
                          icon: const Icon(Icons.edit_note),
                          onPressed: () => onEditNote!(item.entry!),
                        ),
                )
              else
                ListTile(
                  leading: const Icon(Icons.check_box_outline_blank),
                  title: Text(item.title),
                  subtitle: _subtitle(context, item),
                ),
          ],
        ),
      ),
    );
  }

  Widget? _subtitle(BuildContext context, _Item item) {
    final l = AppLocalizations.of(context);
    final note = item.entry?.note;
    final parts = [
      if (item.detail != null) Text(item.detail!),
      if (note != null && note.isNotEmpty)
        Text(
          '${l.guidanceNote}: $note',
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      if (item.link != null)
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            onPressed: () => openExternal(context, item.link!),
            icon: const Icon(Icons.open_in_new, size: 18),
            label: Text(l.guidanceOpenLink),
          ),
        ),
    ];
    if (parts.isEmpty) return null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: parts,
    );
  }
}

class _RisksCard extends StatelessWidget {
  const _RisksCard({required this.guidance});

  final PropertyGuidance guidance;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(l.guidanceRisks, style: t.titleMedium),
              subtitle: Text(l.guidanceRisksHelp),
            ),
            if (guidance.stale) const StaleBanner(),
            for (final m in guidance.patterns)
              ListTile(
                leading: SeverityDot(severity: m.pattern.severity),
                title: Text(m.pattern.title),
                subtitle: m.areaMatch ? Text(l.guidanceAreaMatch) : null,
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push('/risks?pattern=${m.pattern.id}'),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Text(l.riskAsOf(guidance.riskAsOf), style: t.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}

/// "Data may be outdated" note when risk data is older than six months.
class StaleBanner extends StatelessWidget {
  const StaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: scheme.errorContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.update, color: scheme.onErrorContainer),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              AppLocalizations.of(context).riskStale,
              style: TextStyle(color: scheme.onErrorContainer),
            ),
          ),
        ],
      ),
    );
  }
}

/// Coloured dot for a risk severity (critical/high red, medium amber, low grey).
class SeverityDot extends StatelessWidget {
  const SeverityDot({super.key, required this.severity});

  final String severity;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final (color, label) = switch (severity) {
      'critical' => (scheme.critical, l.risksSeverityCritical),
      'high' => (scheme.critical, l.risksSeverityHigh),
      'medium' => (scheme.warning, l.risksSeverityMedium),
      _ => (scheme.outline, l.risksSeverityLow),
    };
    return Semantics(
      label: label,
      child: Icon(Icons.circle, color: color, size: 16),
    );
  }
}

/// Opens a link in the browser; shows a snackbar if that fails.
Future<void> openExternal(BuildContext context, String url) async {
  final messenger = ScaffoldMessenger.of(context);
  final error = AppLocalizations.of(context).risksLinkError;
  final uri = Uri.tryParse(url);
  final ok =
      uri != null &&
      (uri.scheme == 'https' || uri.scheme == 'http') &&
      await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!ok) messenger.showSnackBar(SnackBar(content: Text(error)));
}
