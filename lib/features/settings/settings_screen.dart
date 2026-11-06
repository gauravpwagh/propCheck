import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../app/providers.dart';
import '../../data/backup/backup_service.dart';
import '../../l10n/gen/app_localizations.dart';
import 'settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  Future<void> _resetRates(BuildContext context, WidgetRef ref) async {
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l.settingsResetRates),
        content: Text(l.settingsResetRatesBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.commonCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.settingsResetRates),
          ),
        ],
      ),
    );
    if (!(ok ?? false)) return;
    await ref.read(settingsControllerProvider.notifier).resetRates();
    messenger.showSnackBar(SnackBar(content: Text(l.settingsResetDone)));
  }

  Future<void> _export(BuildContext context, WidgetRef ref) async {
    final l = AppLocalizations.of(context);
    final path = await ref
        .read(settingsControllerProvider.notifier)
        .exportBackup();
    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(path, mimeType: 'application/json')],
        subject: l.backupShareSubject,
      ),
    );
  }

  Future<void> _import(BuildContext context, WidgetRef ref) async {
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: const ['json'],
    );
    if (file == null) return;
    final bytes = await file.readAsBytes();
    try {
      final n = await ref
          .read(settingsControllerProvider.notifier)
          .importBackup(bytes);
      messenger.showSnackBar(SnackBar(content: Text(l.settingsImported(n))));
    } on BackupException catch (e) {
      messenger.showSnackBar(
        SnackBar(
          content: Text(switch (e.problem) {
            BackupProblem.invalidJson => l.backupInvalidJson,
            BackupProblem.notABackup => l.backupNotABackup,
            BackupProblem.newerVersion => l.backupNewerVersion,
            BackupProblem.damaged => l.backupDamaged,
          }),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final profile = ref.watch(activeProfileProvider).value;
    final risk = ref.watch(riskDocumentProvider).value;
    Widget header(String s) => Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        s,
        style: t.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text(l.settingsTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          header(l.settingsRatesSection),
          if (profile != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                l.settingsProfileSubtitle(
                  profile.city,
                  profile.version,
                  profile.asOf,
                ),
              ),
            ),
          for (final (section, label, icon) in [
            ('rates', l.settingsRates, Icons.percent),
            ('loan', l.settingsLoan, Icons.account_balance_outlined),
            ('defaults', l.settingsDefaults, Icons.tune),
            ('thresholds', l.settingsThresholds, Icons.flag_outlined),
          ])
            ListTile(
              leading: Icon(icon),
              title: Text(label),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.push('/settings/profile/$section'),
            ),
          ListTile(
            leading: const Icon(Icons.restore),
            title: Text(l.settingsResetRates),
            onTap: () => _resetRates(context, ref),
          ),
          header(l.settingsRiskSection),
          if (risk != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                l.settingsRiskSubtitle(
                  risk.version,
                  risk.asOf,
                  risk.isBundled
                      ? l.settingsRiskBundled
                      : l.settingsRiskImported,
                ),
              ),
            ),
          ListTile(
            leading: const Icon(Icons.upload_file),
            title: Text(l.settingsRiskImport),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push('/settings/risk-import'),
          ),
          ListTile(
            leading: const Icon(Icons.restore),
            title: Text(l.settingsRiskRestore),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              await ref.read(settingsControllerProvider.notifier).restoreRisk();
              messenger.showSnackBar(
                SnackBar(content: Text(l.settingsRiskRestored)),
              );
            },
          ),
          header(l.settingsBackupSection),
          ListTile(
            leading: const Icon(Icons.ios_share),
            title: Text(l.settingsExport),
            subtitle: Text(l.settingsExportHelp),
            onTap: () => _export(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.download),
            title: Text(l.settingsImport),
            subtitle: Text(l.settingsImportHelp),
            onTap: () => _import(context, ref),
          ),
          header(l.settingsAboutSection),
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: Text(l.settingsPrivacy),
            subtitle: Text(l.settingsPrivacyBody),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(l.disclaimer, style: t.bodySmall),
          ),
        ],
      ),
    );
  }
}
