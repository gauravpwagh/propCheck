import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/engine/engine.dart';

part 'wizard_state.freezed.dart';

/// Wizard screens in order (SPEC §2).
enum WizardStep {
  mode,
  location,
  type,
  status,
  amount,
  area,
  buyer,
  builderExtras,
  maintenance,
  resaleDetails,
  ucDetails,
  financing,
  oneTime,
  result;

  bool isVisibleFor(PropertyStatus status) => switch (this) {
    builderExtras => status != PropertyStatus.resale,
    resaleDetails => status == PropertyStatus.resale,
    ucDetails => status == PropertyStatus.underConstruction,
    _ => true,
  };

  bool get skippable => this == financing || this == oneTime;

  /// Cost lines this screen affects, explained in its info sheet.
  List<String> get infoLines => switch (this) {
    status => const ['gst'],
    amount => const ['agreement_value', 'stamp_duty', 'registration'],
    buyer => const ['stamp_duty'],
    builderExtras => const ['builder_extras_outside_agreement', 'corpus'],
    maintenance => const ['advance_maintenance', 'society_transfer'],
    resaleDetails => const ['brokerage', 'renovation'],
    ucDetails => const ['pre_emi_interest', 'rent_overlap'],
    financing => const ['loan_processing', 'mortgage_stamp_duty'],
    oneTime => const ['legal', 'interiors'],
    _ => const [],
  };
}

/// Everything the wizard is editing.
@freezed
abstract class WizardDraft with _$WizardDraft {
  const WizardDraft._();

  const factory WizardDraft({
    /// Set when editing a saved property.
    int? propertyId,
    @Default('') String name,
    required String profileId,
    @Default(EstimateMode.priceToTotal) EstimateMode mode,
    int? budget,
    required PropertyInput input,
    @Default(false) bool areaInSqm,
  }) = _WizardDraft;

  List<WizardStep> get visibleSteps => [
    for (final s in WizardStep.values)
      if (s.isVisibleFor(input.status)) s,
  ];

  /// A new draft pre-filled from the profile's defaults.
  factory WizardDraft.initial(RateProfile p, {required int currentYear}) {
    const type = '1BHK';
    return WizardDraft(
      profileId: p.id,
      input: PropertyInput(
        status: PropertyStatus.resale,
        type: type,
        quotedPrice: 0,
        carpetSqft: p.defaultCarpetFor(type),
        ownership: Ownership.male,
        hasOc: true,
        sellerLoan: 0,
        currentYear: currentYear,
        finance: Finance(
          usingLoan: true,
          age: p.wizardDefaults.buyerAge,
          ratePct: p.loan.interestPct,
          tenureYears: p.wizardDefaults.tenureYears,
        ),
      ),
    );
  }
}

@freezed
abstract class WizardState with _$WizardState {
  const WizardState._();

  const factory WizardState({
    required WizardDraft draft,

    /// The profile version this draft is calculated with.
    required RateProfile profile,
    @Default(WizardStep.mode) WizardStep step,
  }) = _WizardState;

  List<WizardStep> get steps => draft.visibleSteps;

  int get index => steps.indexOf(step);

  bool get isFirst => index == 0;

  bool get isResult => step == WizardStep.result;
}
