import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../core/widgets/number_fields.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';
import 'wizard_controller.dart';
import 'wizard_state.dart';

/// Title, "why we ask" line and fields for one wizard screen.
class WizardStepView extends ConsumerWidget {
  const WizardStepView({super.key, required this.step});

  final WizardStep step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final draft = ref.watch(wizardControllerProvider.select((s) => s.draft));
    final (title, why) = _heading(l, step, draft);
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        Text(why, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 24),
        ..._fields(context, ref, l, draft),
      ],
    );
  }

  (String, String) _heading(AppLocalizations l, WizardStep s, WizardDraft d) =>
      switch (s) {
        WizardStep.mode => (l.stepModeTitle, l.stepModeWhy),
        WizardStep.location => (l.stepLocationTitle, l.stepLocationWhy),
        WizardStep.type => (l.stepTypeTitle, l.stepTypeWhy),
        WizardStep.status => (l.stepStatusTitle, l.stepStatusWhy),
        WizardStep.amount =>
          d.mode == EstimateMode.priceToTotal
              ? (l.stepAmountTitlePrice, l.stepAmountWhyPrice)
              : (l.stepAmountTitleBudget, l.stepAmountWhyBudget),
        WizardStep.area => (l.stepAreaTitle, l.stepAreaWhy),
        WizardStep.buyer => (l.stepBuyerTitle, l.stepBuyerWhy),
        WizardStep.builderExtras => (l.stepExtrasTitle, l.stepExtrasWhy),
        WizardStep.maintenance => (
          l.stepMaintenanceTitle,
          l.stepMaintenanceWhy,
        ),
        WizardStep.resaleDetails => (l.stepResaleTitle, l.stepResaleWhy),
        WizardStep.ucDetails => (l.stepUcTitle, l.stepUcWhy),
        WizardStep.financing => (l.stepFinanceTitle, l.stepFinanceWhy),
        WizardStep.oneTime => (l.stepOneTimeTitle, l.stepOneTimeWhy),
        WizardStep.result => (l.resultTitle, ''),
      };

  List<Widget> _fields(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l,
    WizardDraft d,
  ) {
    final c = ref.read(wizardControllerProvider.notifier);
    final p = ref.watch(activeProfileProvider).requireValue;
    final inp = d.input;
    const gap = SizedBox(height: 16);
    switch (step) {
      case WizardStep.mode:
        return [
          ChoiceList<EstimateMode>(
            options: [
              (
                value: EstimateMode.priceToTotal,
                title: l.modePriceToTotal,
                help: l.modePriceToTotalHelp,
              ),
              (
                value: EstimateMode.budgetToPrice,
                title: l.modeBudgetToPrice,
                help: l.modeBudgetToPriceHelp,
              ),
            ],
            selected: d.mode,
            onSelected: (m) => c.updateDraft((d) => d.copyWith(mode: m)),
          ),
        ];
      case WizardStep.location:
        return [
          InputDecorator(
            decoration: InputDecoration(labelText: l.locationProfile),
            child: Text(p.city),
          ),
          gap,
          _TextInput(
            label: l.locationLocality,
            hint: l.locationLocalityHint,
            value: inp.locality ?? '',
            onChanged: (v) => c.updateInput(
              (i) => i.copyWith(locality: v.trim().isEmpty ? null : v.trim()),
            ),
          ),
          gap,
          _TextInput(
            label: l.locationName,
            hint: l.locationNameHint,
            value: d.name,
            onChanged: (v) => c.updateDraft((d) => d.copyWith(name: v.trim())),
          ),
        ];
      case WizardStep.type:
        return [
          ChoiceList<String>(
            options: [
              for (final t in flatTypes) (value: t, title: t, help: null),
            ],
            selected: inp.type,
            onSelected: c.setType,
          ),
        ];
      case WizardStep.status:
        return [
          ChoiceList<PropertyStatus>(
            options: [
              (
                value: PropertyStatus.underConstruction,
                title: l.statusUnderConstruction,
                help: l.statusUnderConstructionHelp,
              ),
              (
                value: PropertyStatus.readyPossession,
                title: l.statusReadyPossession,
                help: l.statusReadyPossessionHelp,
              ),
              (
                value: PropertyStatus.resale,
                title: l.statusResale,
                help: l.statusResaleHelp,
              ),
            ],
            selected: inp.status,
            onSelected: c.setStatus,
          ),
        ];
      case WizardStep.amount:
        final isPrice = d.mode == EstimateMode.priceToTotal;
        return [
          MoneyField(
            key: ValueKey(d.mode),
            label: l.commonAmountLabel,
            required: true,
            value: isPrice
                ? (inp.quotedPrice > 0 ? inp.quotedPrice : null)
                : d.budget,
            onChanged: (v) => isPrice
                ? c.updateInput((i) => i.copyWith(quotedPrice: v ?? 0))
                : c.updateDraft((d) => d.copyWith(budget: v)),
          ),
        ];
      case WizardStep.area:
        return _areaFields(context, l, d, c, p);
      case WizardStep.buyer:
        return [
          ChoiceList<Ownership>(
            options: [
              (value: Ownership.male, title: l.ownershipMale, help: null),
              (value: Ownership.female, title: l.ownershipFemale, help: null),
              (value: Ownership.joint, title: l.ownershipJoint, help: null),
            ],
            selected: inp.ownership,
            onSelected: (o) => c.updateInput((i) => i.copyWith(ownership: o)),
          ),
        ];
      case WizardStep.builderExtras:
        return [
          _ExtrasEditor(
            extras: inp.extras,
            onChanged: (e) => c.updateInput((i) => i.copyWith(extras: e)),
          ),
          gap,
          MoneyField(
            label: l.extrasCorpus,
            value: inp.corpus,
            onChanged: (v) => c.updateInput((i) => i.copyWith(corpus: v)),
          ),
        ];
      case WizardStep.maintenance:
        return [
          NumberField(
            key: ValueKey('mm-${inp.status}'),
            label: l.maintenanceMonths,
            value:
                inp.maintenanceMonths ??
                p.advanceMaintenanceMonthsFor(inp.status),
            suffix: l.commonMonths,
            onChanged: (v) =>
                c.updateInput((i) => i.copyWith(maintenanceMonths: v?.toInt())),
          ),
          gap,
          NumberField(
            label: l.maintenanceRate,
            value: inp.maintenanceRatePsf ?? p.maintenanceRatePsfMonth,
            decimal: true,
            onChanged: (v) => c.updateInput(
              (i) => i.copyWith(maintenanceRatePsf: v?.toDouble()),
            ),
          ),
          if (inp.status == PropertyStatus.resale) ...[
            gap,
            MoneyField(
              label: l.maintenanceTransferFee,
              required: true,
              value: inp.transferFee ?? p.societyTransferFeeInr,
              onChanged: (v) =>
                  c.updateInput((i) => i.copyWith(transferFee: v)),
            ),
          ],
        ];
      case WizardStep.resaleDetails:
        return [
          NumberField(
            label: l.resaleBuildingYear,
            value: inp.buildingYear,
            validator: (v) => v != null && (v < 1900 || v > inp.currentYear)
                ? l.invalidYear(inp.currentYear)
                : null,
            onChanged: (v) =>
                c.updateInput((i) => i.copyWith(buildingYear: v?.toInt())),
          ),
          gap,
          SwitchListTile(
            title: Text(l.resaleHasOc),
            value: inp.hasOc ?? true,
            onChanged: (v) => c.updateInput((i) => i.copyWith(hasOc: v)),
          ),
          gap,
          MoneyField(
            label: l.resaleSellerLoan,
            helper: l.resaleSellerLoanHelp,
            value: inp.sellerLoan,
            onChanged: (v) => c.updateInput((i) => i.copyWith(sellerLoan: v)),
          ),
          gap,
          NumberField(
            label: l.resaleBrokerage,
            value: inp.brokeragePct ?? p.brokeragePctDefault,
            decimal: true,
            suffix: '%',
            onChanged: (v) =>
                c.updateInput((i) => i.copyWith(brokeragePct: v?.toDouble())),
          ),
        ];
      case WizardStep.ucDetails:
        return [
          _TextInput(
            label: l.ucRera,
            hint: l.ucReraHint,
            value: inp.reraNumber ?? '',
            onChanged: (v) => c.updateInput(
              (i) => i.copyWith(reraNumber: v.trim().isEmpty ? null : v.trim()),
            ),
          ),
          gap,
          NumberField(
            label: l.ucMonths,
            value:
                inp.monthsToPossession ?? p.wizardDefaults.monthsToPossession,
            suffix: l.commonMonths,
            onChanged: (v) => c.updateInput(
              (i) => i.copyWith(monthsToPossession: v?.toInt()),
            ),
          ),
          gap,
          MoneyField(
            label: l.ucRent,
            value: inp.monthlyRent,
            onChanged: (v) => c.updateInput((i) => i.copyWith(monthlyRent: v)),
          ),
        ];
      case WizardStep.financing:
        return _financeFields(l, inp.finance ?? const Finance(), c, p);
      case WizardStep.oneTime:
        return [
          MoneyField(
            label: l.oneTimeLegal,
            required: true,
            value: inp.legalFees ?? p.legalFeesInr,
            onChanged: (v) => c.updateInput((i) => i.copyWith(legalFees: v)),
          ),
          gap,
          MoneyField(
            key: ValueKey('int-${inp.type}'),
            label: l.oneTimeInteriors,
            required: true,
            value: inp.interiors ?? p.interiorsFor(inp.type),
            onChanged: (v) => c.updateInput((i) => i.copyWith(interiors: v)),
          ),
        ];
      case WizardStep.result:
        return const [];
    }
  }

  List<Widget> _areaFields(
    BuildContext context,
    AppLocalizations l,
    WizardDraft d,
    WizardController c,
    RateProfile p,
  ) {
    final inp = d.input;
    final sqm = d.areaInSqm;
    final unit = sqm ? l.commonSqm : l.commonSqft;
    double? toUnit(double? sqft) => sqft == null
        ? null
        : (sqm ? double.parse((sqft / sqftPerSqm).toStringAsFixed(2)) : sqft);
    double? fromUnit(num? v) =>
        v == null ? null : (sqm ? v * sqftPerSqm : v.toDouble());
    const gap = SizedBox(height: 16);
    return [
      SegmentedButton<bool>(
        segments: [
          ButtonSegment(value: false, label: Text(l.commonSqft)),
          ButtonSegment(value: true, label: Text(l.commonSqm)),
        ],
        selected: {sqm},
        onSelectionChanged: (s) =>
            c.updateDraft((d) => d.copyWith(areaInSqm: s.first)),
      ),
      gap,
      NumberField(
        key: ValueKey('carpet-$sqm-${inp.type}'),
        label: l.areaCarpet,
        value: toUnit(inp.carpetSqft),
        decimal: true,
        suffix: unit,
        validator: (v) => v != null && v <= 0 ? l.commonMustBePositive : null,
        onChanged: (v) =>
            c.updateInput((i) => i.copyWith(carpetSqft: fromUnit(v) ?? 0)),
      ),
      gap,
      NumberField(
        key: ValueKey('builtup-$sqm'),
        label: '${l.areaBuiltup} (${l.commonOptional.toLowerCase()})',
        helper: l.areaBuiltupHelp(p.builtupToCarpetRatio.toString()),
        value: toUnit(inp.builtupSqft),
        decimal: true,
        suffix: unit,
        onChanged: (v) =>
            c.updateInput((i) => i.copyWith(builtupSqft: fromUnit(v))),
      ),
      gap,
      MoneyField(
        label: l.areaReadyReckoner,
        helper: l.areaReadyReckonerHelp,
        value: inp.readyReckonerValue,
        onChanged: (v) =>
            c.updateInput((i) => i.copyWith(readyReckonerValue: v)),
      ),
      gap,
      NumberField(
        label: '${l.areaReference} (${l.commonOptional.toLowerCase()})',
        helper: l.areaReferenceHelp,
        value: inp.areaReferencePsf,
        decimal: true,
        onChanged: (v) =>
            c.updateInput((i) => i.copyWith(areaReferencePsf: v?.toDouble())),
      ),
    ];
  }

  List<Widget> _financeFields(
    AppLocalizations l,
    Finance f,
    WizardController c,
    RateProfile p,
  ) {
    const gap = SizedBox(height: 16);
    return [
      SwitchListTile(
        title: Text(l.financeUsingLoan),
        value: f.usingLoan,
        onChanged: (v) => c.updateFinance((f) => f.copyWith(usingLoan: v)),
      ),
      if (f.usingLoan) ...[
        gap,
        NumberField(
          label: l.financeAge,
          value: f.age,
          suffix: l.commonYears,
          onChanged: (v) =>
              c.updateFinance((f) => f.copyWith(age: v?.toInt() ?? 0)),
        ),
        gap,
        SegmentedButton<Employment>(
          segments: [
            ButtonSegment(
              value: Employment.salaried,
              label: Text(l.employmentSalaried),
            ),
            ButtonSegment(
              value: Employment.selfEmployed,
              label: Text(l.employmentSelfEmployed),
            ),
          ],
          selected: {f.employment},
          onSelectionChanged: (s) =>
              c.updateFinance((f) => f.copyWith(employment: s.first)),
        ),
        gap,
        MoneyField(
          label: l.financeIncome,
          required: true,
          value: f.netIncome == 0 ? null : f.netIncome,
          onChanged: (v) =>
              c.updateFinance((f) => f.copyWith(netIncome: v ?? 0)),
        ),
        gap,
        MoneyField(
          label: l.financeExistingEmi,
          value: f.existingEmi == 0 ? null : f.existingEmi,
          onChanged: (v) =>
              c.updateFinance((f) => f.copyWith(existingEmi: v ?? 0)),
        ),
        gap,
        NumberField(
          label: l.financeRate,
          value: f.ratePct ?? p.loan.interestPct,
          decimal: true,
          suffix: '%',
          onChanged: (v) =>
              c.updateFinance((f) => f.copyWith(ratePct: v?.toDouble())),
        ),
        gap,
        NumberField(
          label: l.financeTenure,
          value: f.tenureYears ?? p.wizardDefaults.tenureYears,
          suffix: l.commonYears,
          onChanged: (v) =>
              c.updateFinance((f) => f.copyWith(tenureYears: v?.toInt())),
        ),
      ],
      gap,
      MoneyField(
        label: l.financeOwnFunds,
        helper: l.financeOwnFundsHelp,
        value: f.ownFunds,
        onChanged: (v) => c.updateFinance((f) => f.copyWith(ownFunds: v)),
      ),
    ];
  }
}

class _TextInput extends StatefulWidget {
  const _TextInput({
    required this.label,
    required this.value,
    required this.onChanged,
    this.hint,
  });

  final String label;
  final String? hint;
  final String value;
  final ValueChanged<String> onChanged;

  @override
  State<_TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<_TextInput> {
  late final _c = TextEditingController(text: widget.value);

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: _c,
    decoration: InputDecoration(labelText: widget.label, hintText: widget.hint),
    onChanged: widget.onChanged,
  );
}

class _ExtrasEditor extends StatelessWidget {
  const _ExtrasEditor({required this.extras, required this.onChanged});

  final List<Extra> extras;
  final ValueChanged<List<Extra>> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    void replace(int i, Extra e) => onChanged([...extras]..[i] = e);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (extras.isEmpty) Text(l.extrasEmpty),
        for (var i = 0; i < extras.length; i++)
          Card(
            key: ValueKey('extra-$i-${extras.length}'),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _TextInput(
                          label: l.extrasKind,
                          hint: l.extrasKindHint,
                          value: extras[i].kind,
                          onChanged: (v) =>
                              replace(i, extras[i].copyWith(kind: v)),
                        ),
                      ),
                      IconButton(
                        tooltip: l.commonRemove,
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () => onChanged([...extras]..removeAt(i)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  MoneyField(
                    label: l.commonAmountLabel,
                    required: true,
                    value: extras[i].amount == 0 ? null : extras[i].amount,
                    onChanged: (v) =>
                        replace(i, extras[i].copyWith(amount: v ?? 0)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(l.extrasInAgreement),
                    value: extras[i].inAgreement,
                    onChanged: (v) =>
                        replace(i, extras[i].copyWith(inAgreement: v)),
                  ),
                ],
              ),
            ),
          ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final k in [
              l.extraKindParking,
              l.extraKindFloorRise,
              l.extraKindPlc,
              l.extraKindClubhouse,
              l.extraKindDevelopment,
            ])
              ActionChip(
                avatar: const Icon(Icons.add, size: 18),
                label: Text(k),
                onPressed: () =>
                    onChanged([...extras, Extra(kind: k, amount: 0)]),
              ),
            ActionChip(
              avatar: const Icon(Icons.add, size: 18),
              label: Text(l.extrasAdd),
              onPressed: () =>
                  onChanged([...extras, const Extra(kind: '', amount: 0)]),
            ),
          ],
        ),
      ],
    );
  }
}
