import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/gen/app_localizations.dart';
import '../result/result_view.dart';
import '../wizard/wizard_screen.dart';
import '../wizard/wizard_state.dart';
import 'property_providers.dart';

enum _MenuAction { duplicate, archive, delete }

class PropertyDetailScreen extends ConsumerWidget {
  const PropertyDetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final view = ref.watch(propertyViewProvider(id));
    return view.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text(l.commonError('$e'))),
      ),
      data: (v) => v == null
          ? Scaffold(
              appBar: AppBar(),
              body: Center(child: Text(l.detailNotFound)),
            )
          : _Detail(view: v),
    );
  }
}

class _Detail extends ConsumerWidget {
  const _Detail({required this.view});

  final PropertyView view;

  Future<void> _edit(
    BuildContext context,
    WidgetRef ref,
    WizardStep step,
  ) async {
    final saved = await context.push<int>(
      '/wizard',
      extra: WizardLaunch(
        saved: view.property,
        profile: view.profile,
        step: step,
      ),
    );
    if (saved != null) {
      ref.read(propertyDetailControllerProvider(view.id).notifier).edited();
    }
  }

  Future<void> _menu(BuildContext context, WidgetRef ref, _MenuAction a) async {
    final l = AppLocalizations.of(context);
    final c = ref.read(propertyDetailControllerProvider(view.id).notifier);
    final router = GoRouter.of(context);
    final messenger = ScaffoldMessenger.of(context);
    switch (a) {
      case _MenuAction.duplicate:
        final newId = await c.duplicate(l.detailDuplicateSuffix);
        messenger.showSnackBar(SnackBar(content: Text(l.detailDuplicated)));
        await router.push('/property/$newId');
      case _MenuAction.archive:
        await c.setArchived(archived: !view.property.isArchived);
      case _MenuAction.delete:
        final ok = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l.detailDeleteTitle),
            content: Text(l.detailDeleteBody),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(l.commonCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(l.commonDelete),
              ),
            ],
          ),
        );
        if (ok ?? false) {
          router.pop();
          await c.delete();
        }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final p = view.property;
    final outcome = view.outcome;
    final title = p.name.isEmpty ? p.input.type : p.name;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton<_MenuAction>(
            onSelected: (a) => _menu(context, ref, a),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: _MenuAction.duplicate,
                child: Text(l.detailDuplicate),
              ),
              PopupMenuItem(
                value: _MenuAction.archive,
                child: Text(p.isArchived ? l.homeUnarchive : l.homeArchive),
              ),
              PopupMenuItem(
                value: _MenuAction.delete,
                child: Text(l.commonDelete),
              ),
            ],
          ),
        ],
      ),
      body: outcome == null
          ? ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(l.commonInvalidNumber),
                const SizedBox(height: 16),
                _Sections(view: view, onEdit: (s) => _edit(context, ref, s)),
              ],
            )
          : ResultView(
              outcome: outcome,
              input: p.input,
              profile: view.profile,
              header: [
                _RatesBanner(view: view),
                const SizedBox(height: 12),
              ],
              footer: [
                _Sections(view: view, onEdit: (s) => _edit(context, ref, s)),
                const SizedBox(height: 16),
              ],
            ),
    );
  }
}

class _RatesBanner extends ConsumerWidget {
  const _RatesBanner({required this.view});

  final PropertyView view;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final text = Text(
      l.detailRatesVersion(view.profile.version, view.profile.asOf),
      style: t.bodySmall,
    );
    if (!view.outdated) return text;
    return Card(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text,
            const SizedBox(height: 4),
            Text(l.detailOutdated(view.active.version)),
            const SizedBox(height: 8),
            FilledButton.tonalIcon(
              onPressed: () async {
                final messenger = ScaffoldMessenger.of(context);
                await ref
                    .read(propertyDetailControllerProvider(view.id).notifier)
                    .recalculate();
                messenger.showSnackBar(
                  SnackBar(content: Text(l.detailRecalculated)),
                );
              },
              icon: const Icon(Icons.refresh),
              label: Text(l.detailRecalculate),
            ),
          ],
        ),
      ),
    );
  }
}

/// Input sections; each reopens its wizard screen.
class _Sections extends StatelessWidget {
  const _Sections({required this.view, required this.onEdit});

  final PropertyView view;
  final ValueChanged<WizardStep> onEdit;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final visible = WizardStep.values.where(
      (s) =>
          s != WizardStep.result && s.isVisibleFor(view.property.input.status),
    );
    String label(WizardStep s) => switch (s) {
      WizardStep.mode => l.sectionMode,
      WizardStep.location => l.sectionLocation,
      WizardStep.type => l.sectionType,
      WizardStep.status => l.sectionStatus,
      WizardStep.amount => l.sectionAmount,
      WizardStep.area => l.sectionArea,
      WizardStep.buyer => l.sectionBuyer,
      WizardStep.builderExtras => l.sectionExtras,
      WizardStep.maintenance => l.sectionMaintenance,
      WizardStep.resaleDetails => l.sectionResale,
      WizardStep.ucDetails => l.sectionUc,
      WizardStep.financing => l.sectionFinance,
      WizardStep.oneTime => l.sectionOneTime,
      WizardStep.result => '',
    };
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text(
              l.detailInputs,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(l.detailInputsHelp),
          ),
          for (final s in visible)
            ListTile(
              title: Text(label(s)),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => onEdit(s),
            ),
        ],
      ),
    );
  }
}
