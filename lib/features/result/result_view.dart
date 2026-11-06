import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../../core/l10n/labels.dart';
import '../../core/money.dart';
import '../../core/widgets/label_value.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';

/// Shows a computed estimate: headline, breakdown, loan, per sq ft, flags,
/// payment notes, uncertainties and the disclaimer. Used by the wizard result
/// step and the property detail screen.
class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    required this.outcome,
    required this.input,
    required this.profile,
    this.extraFlags = const [],
    this.header = const [],
    this.footer = const [],
    this.flagNotes = const {},
  });

  final EstimateOutcome outcome;
  final PropertyInput input;
  final RateProfile profile;

  /// Flags from outside the engine (e.g. `risk_area`).
  final List<Flag> extraFlags;

  /// Text to show for a flag id (e.g. the area note for `risk_area`).
  final Map<String, String> flagNotes;
  final List<Widget> header;
  final List<Widget> footer;

  @override
  Widget build(BuildContext context) {
    final b = outcome.breakdown;
    final flags = [...b.flags, ...extraFlags]
      ..sort((x, y) => x.severity.index.compareTo(y.severity.index));
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        ...header,
        _Headline(outcome: outcome),
        const SizedBox(height: 16),
        _Breakdown(breakdown: b),
        const SizedBox(height: 16),
        _LoanCard(loan: b.loan),
        const SizedBox(height: 16),
        _PerSqftCard(perSqft: b.perSqft),
        const SizedBox(height: 16),
        _FlagsCard(flags: flags, notes: flagNotes),
        const SizedBox(height: 16),
        _PaymentNotes(breakdown: b),
        _Uncertainties(input: input, profile: profile),
        const SizedBox(height: 16),
        ...footer,
        const _Disclaimer(),
      ],
    );
  }
}

class _Headline extends StatelessWidget {
  const _Headline({required this.outcome});

  final EstimateOutcome outcome;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final b = outcome.breakdown;
    final isBudget = outcome.mode == EstimateMode.budgetToPrice;
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isBudget) ...[
              Text(l.resultMaxPrice, style: t.titleSmall),
              _Amount(outcome.quotedPrice, style: t.displaySmall),
              Text(l.resultMaxPriceHelp(Money.full(b.total))),
            ] else ...[
              Text(l.resultTotal, style: t.titleSmall),
              _Amount(b.total, style: t.displaySmall),
              Text(
                l.resultExtraOverQuoted(
                  Money.compactWithSymbol(b.extraOverQuoted),
                  b.extraPctOfQuoted.toStringAsFixed(1),
                ),
              ),
            ],
            if (outcome.nearGstSlab) ...[
              const SizedBox(height: 8),
              Text(l.resultGstSlabNote, style: t.bodySmall),
            ],
            const Divider(height: 24),
            Text(l.resultOwnFunds, style: t.titleSmall),
            _Amount(b.ownFundsNeeded, style: t.headlineSmall),
            Text(l.resultOwnFundsHelp, style: t.bodySmall),
          ],
        ),
      ),
    );
  }
}

/// A rupee amount with a full-value screen-reader label.
class _Amount extends StatelessWidget {
  const _Amount(this.value, {this.style});

  final int value;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Semantics(
    label: Money.full(value),
    excludeSemantics: true,
    child: Text(Money.full(value), style: style),
  );
}

class _Breakdown extends StatelessWidget {
  const _Breakdown({required this.breakdown});

  final CostBreakdown breakdown;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final reg = CostLineRegistry.standard;
    final byGroup = <CostGroup, List<MapEntry<String, int>>>{};
    for (final e in breakdown.lines.entries) {
      byGroup.putIfAbsent(reg.groupOf(e.key), () => []).add(e);
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Text(l.resultBreakdown, style: t.titleMedium),
            ),
            for (final g in CostGroup.values)
              if (byGroup[g] case final entries?) ...[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: LabelValue(
                    label: l.groupLabel(g),
                    value: Money.full(entries.fold(0, (a, e) => a + e.value)),
                    style: t.labelLarge,
                  ),
                ),
                for (final e in entries)
                  _LineRow(
                    label: l.lineLabel(e.key),
                    value: e.value,
                    onTap: () => showInfoSheet(
                      context,
                      l.lineLabel(e.key),
                      l.lineInfo(e.key),
                    ),
                  ),
              ],
            const Divider(),
            _LineRow(
              label: l.resultTotal,
              value: breakdown.total,
              style: t.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}

/// A line item: label wraps, amount stays on the right. Unlike ListTile's
/// trailing slot this doesn't overflow at large text sizes.
class _LineRow extends StatelessWidget {
  const _LineRow({
    required this.label,
    required this.value,
    this.onTap,
    this.style,
  });

  final String label;
  final int value;
  final VoidCallback? onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 48),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: LabelValue(label: label, value: Money.full(value), style: style),
      ),
    ),
  );
}

class _LoanCard extends StatelessWidget {
  const _LoanCard({required this.loan});

  final LoanResult loan;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    final none = loan.binding == 'no_loan';
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.resultLoanCard, style: t.titleMedium),
            const SizedBox(height: 8),
            if (none)
              Text(l.resultLoanNone)
            else ...[
              _Amount(loan.loan, style: t.headlineSmall),
              if (loan.emi > 0) ...[
                Text(l.resultLoanEmi(Money.full(loan.emi))),
                Text(l.resultLoanTenure(loan.tenureYears)),
              ],
              const SizedBox(height: 8),
              Text(l.bindingLabel(loan.binding)),
              const SizedBox(height: 8),
              _row(l.resultLoanByIncome, Money.full(loan.loanByIncome)),
              _row(l.resultLoanByLtv, Money.full(loan.loanByLtv)),
            ],
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: LabelValue(label: label, value: value),
  );
}

class _PerSqftCard extends StatelessWidget {
  const _PerSqftCard({required this.perSqft});

  final PerSqft perSqft;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final t = Theme.of(context).textTheme;
    String psf(int v) => l.resultPerSqftValue(Money.full(v));
    final rows = [
      (l.resultQuotedCarpet, psf(perSqft.quotedCarpet)),
      (l.resultQuotedBuiltup, psf(perSqft.quotedBuiltup)),
      (l.resultAllInCarpet, psf(perSqft.allInCarpet)),
      (l.resultAllInBuiltup, psf(perSqft.allInBuiltup)),
      (l.resultLoading, '${perSqft.loadingPct.toStringAsFixed(1)}%'),
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.resultPerSqft, style: t.titleMedium),
            const SizedBox(height: 8),
            for (final (label, value) in rows)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: LabelValue(label: label, value: value),
              ),
          ],
        ),
      ),
    );
  }
}

class _FlagsCard extends StatelessWidget {
  const _FlagsCard({required this.flags, required this.notes});

  final List<Flag> flags;
  final Map<String, String> notes;

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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(l.resultFlags, style: t.titleMedium),
            ),
            if (flags.isEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(l.resultNoFlags),
              ),
            for (final f in flags) FlagTile(flag: f, note: notes[f.id] ?? ''),
          ],
        ),
      ),
    );
  }
}

/// One flag with severity icon; tap for the explanation.
class FlagTile extends StatelessWidget {
  const FlagTile({super.key, required this.flag, this.note = ''});

  final Flag flag;
  final String note;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final (icon, color) = switch (flag.severity) {
      FlagSeverity.critical => (Icons.error, scheme.critical),
      FlagSeverity.warning => (Icons.warning_amber, scheme.warning),
      FlagSeverity.info => (Icons.info_outline, scheme.info),
    };
    final action = l.flagAction(flag.id, note: note);
    return ListTile(
      leading: Icon(
        icon,
        color: color,
        semanticLabel: l.severityLabel(flag.severity),
      ),
      title: Text(l.flagTitle(flag.id)),
      subtitle: Text(action, maxLines: 2, overflow: TextOverflow.ellipsis),
      onTap: () => showInfoSheet(context, l.flagTitle(flag.id), action),
    );
  }
}

class _PaymentNotes extends StatelessWidget {
  const _PaymentNotes({required this.breakdown});

  final CostBreakdown breakdown;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final notes = [
      if (breakdown.tdsApplicable) l.resultTds(Money.full(breakdown.tdsAmount)),
      if (breakdown.sellerBankPayoff > 0)
        l.resultSellerPayoff(Money.full(breakdown.sellerBankPayoff)),
    ];
    if (notes.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l.resultPayments,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              for (final n in notes)
                Padding(padding: const EdgeInsets.only(top: 8), child: Text(n)),
            ],
          ),
        ),
      ),
    );
  }
}

class _Uncertainties extends StatelessWidget {
  const _Uncertainties({required this.input, required this.profile});

  final PropertyInput input;
  final RateProfile profile;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final items = [
      l.uncertaintyRates(profile.asOf),
      l.uncertaintyValuation,
      l.uncertaintyCharges,
      if (input.status == PropertyStatus.underConstruction)
        l.uncertaintyUcDelay,
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l.resultUncertainties,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            for (final i in items)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('• $i'),
              ),
          ],
        ),
      ),
    );
  }
}

class _Disclaimer extends StatelessWidget {
  const _Disclaimer();

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Text(
      AppLocalizations.of(context).disclaimer,
      style: Theme.of(context).textTheme.bodySmall,
    ),
  );
}

/// Bottom sheet explaining a cost item or flag.
Future<void> showInfoSheet(BuildContext context, String title, String body) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            Text(body),
          ],
        ),
      ),
    ),
  );
}
