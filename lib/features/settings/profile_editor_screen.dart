import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/gen/app_localizations.dart';
import 'profile_editor_controller.dart';
import 'profile_fields.dart';

/// Grouped editor for one section of the active rate profile. Saving creates
/// a new profile version.
class ProfileEditorScreen extends ConsumerWidget {
  const ProfileEditorScreen({super.key, required this.section});

  final EditorSection section;

  String _title(AppLocalizations l) => switch (section) {
    EditorSection.rates => l.settingsRates,
    EditorSection.loan => l.settingsLoan,
    EditorSection.defaults => l.settingsDefaults,
    EditorSection.thresholds => l.settingsThresholds,
  };

  Future<void> _save(BuildContext context, WidgetRef ref) async {
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final saved = await ref
        .read(profileEditorControllerProvider.notifier)
        .save();
    if (saved == null) {
      messenger.showSnackBar(SnackBar(content: Text(l.editorInvalid)));
      return;
    }
    messenger.showSnackBar(
      SnackBar(content: Text(l.editorSaved(saved.version))),
    );
    navigator.pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final state = ref.watch(profileEditorControllerProvider);
    return state.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text(l.commonError('$e')))),
      data: (s) => PopScope(
        canPop: !s.dirty,
        onPopInvokedWithResult: (didPop, _) async {
          if (didPop) return;
          final navigator = Navigator.of(context);
          final discard = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(l.editorDiscardTitle),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(l.commonCancel),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(l.editorDiscard),
                ),
              ],
            ),
          );
          if (discard ?? false) {
            ref.invalidate(profileEditorControllerProvider);
            navigator.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(_title(l)),
            actions: [
              TextButton(
                onPressed: s.dirty && s.valid
                    ? () => _save(context, ref)
                    : null,
                child: Text(l.commonSave),
              ),
            ],
          ),
          body: _EditorBody(section: section, state: s),
        ),
      ),
    );
  }
}

class _EditorBody extends ConsumerWidget {
  const _EditorBody({required this.section, required this.state});

  final EditorSection section;
  final ProfileEditorState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final c = ref.read(profileEditorControllerProvider.notifier);
    final groups = groupsFor(section, state.original);
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        Text(
          l.editorVersionNote(state.original.version + 1),
          style: t.bodySmall,
        ),
        const SizedBox(height: 16),
        if (section == EditorSection.rates) ...[
          TextFormField(
            initialValue: state.draft['as_of'] as String? ?? '',
            decoration: InputDecoration(
              labelText: l.editorAsOf,
              errorText: state.errors.containsKey('as_of')
                  ? l.editorDateFormat
                  : null,
            ),
            keyboardType: TextInputType.datetime,
            onChanged: c.setAsOf,
          ),
          const SizedBox(height: 8),
        ],
        for (final g in groups) ...[
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Text(g.title(l), style: t.titleMedium),
          ),
          for (final f in g.fields)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextFormField(
                key: ValueKey(f.key),
                initialValue: _format(readPath(state.draft, f.path)),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  labelText: f.label(l),
                  helperText: f.nullable ? l.editorNoLimit : null,
                  errorText: switch (state.errors[f.key]) {
                    final e? => fieldErrorText(l, e),
                    null => null,
                  },
                ),
                onChanged: (v) => c.setField(f, v),
              ),
            ),
        ],
      ],
    );
  }

  static String _format(Object? v) {
    if (v == null) return '';
    if (v is double && v == v.roundToDouble()) return v.toInt().toString();
    return '$v';
  }
}
