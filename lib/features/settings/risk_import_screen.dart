import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/import/rate_snapshot.dart';
import '../../data/import/risk_schema.dart';
import '../../l10n/gen/app_localizations.dart';
import 'settings_controller.dart';

/// Paste or pick a risk-data JSON file, validate it against schema 1.0 and
/// replace the stored copy. A `rate_snapshot` is offered, never applied.
class RiskImportScreen extends ConsumerStatefulWidget {
  const RiskImportScreen({super.key});

  @override
  ConsumerState<RiskImportScreen> createState() => _RiskImportScreenState();
}

class _RiskImportScreenState extends ConsumerState<RiskImportScreen> {
  final _text = TextEditingController();
  List<SchemaProblem> _problems = const [];
  String? _jsonError;
  bool _busy = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: const ['json'],
    );
    if (file == null) return;
    final List<int> bytes;
    try {
      bytes = await file.readAsBytes();
    } on Object {
      messenger.showSnackBar(SnackBar(content: Text(l.importReadError)));
      return;
    }
    if (!mounted) return;
    setState(() => _text.text = utf8.decode(bytes, allowMalformed: true));
  }

  Future<void> _import() async {
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    setState(() {
      _busy = true;
      _problems = const [];
      _jsonError = null;
    });
    final c = ref.read(settingsControllerProvider.notifier);
    final result = await c.importRisk(_text.text);
    if (!mounted) return;
    setState(() => _busy = false);
    switch (result) {
      case RiskImportInvalidJson(:final error):
        setState(() => _jsonError = error);
      case RiskImportInvalid(:final problems):
        setState(() => _problems = problems);
      case RiskImportDone(:final asOf, :final snapshot):
        messenger.showSnackBar(SnackBar(content: Text(l.importDone(asOf))));
        if (snapshot != null) {
          final apply = await _offerSnapshot(snapshot);
          if (apply) {
            final p = await c.applySnapshot(snapshot);
            messenger.showSnackBar(
              SnackBar(content: Text(l.importSnapshotApplied(p.version))),
            );
          }
        }
        navigator.pop();
    }
  }

  Future<bool> _offerSnapshot(SnapshotProposal s) async {
    final l = AppLocalizations.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l.importSnapshotTitle),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(l.importSnapshotBody(s.updated.asOf)),
              const SizedBox(height: 12),
              for (final c in s.changes)
                Text('${c.field}: ${c.from} → ${c.to}'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.importSnapshotSkip),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.importSnapshotApply),
          ),
        ],
      ),
    );
    return ok ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(l.importTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(l.importHelp),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: _busy ? null : _pickFile,
            icon: const Icon(Icons.folder_open),
            label: Text(l.importChooseFile),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _text,
            minLines: 8,
            maxLines: 16,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            decoration: InputDecoration(
              labelText: l.importPasteLabel,
              alignLabelWithHint: true,
              errorText: _jsonError == null
                  ? null
                  : l.importInvalidJson(_jsonError!),
              errorMaxLines: 4,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: _busy ? null : _import,
            child: Text(l.importValidate),
          ),
          if (_problems.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              l.importProblems(_problems.length),
              style: TextStyle(
                color: scheme.error,
                fontWeight: FontWeight.bold,
              ),
            ),
            for (final p in _problems)
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.error_outline, color: scheme.error),
                title: Text(p.path.isEmpty ? l.importRoot : p.path),
                subtitle: Text(p.message),
              ),
          ],
        ],
      ),
    );
  }
}
