// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wizard_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WizardController)
final wizardControllerProvider = WizardControllerProvider._();

final class WizardControllerProvider
    extends $NotifierProvider<WizardController, WizardState> {
  WizardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wizardControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wizardControllerHash();

  @$internal
  @override
  WizardController create() => WizardController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WizardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WizardState>(value),
    );
  }
}

String _$wizardControllerHash() => r'3a175757f643fa355905496fa8f40304ecd8c4c2';

abstract class _$WizardController extends $Notifier<WizardState> {
  WizardState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<WizardState, WizardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WizardState, WizardState>,
              WizardState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Live result for the current draft, or null while inputs are incomplete.

@ProviderFor(wizardOutcome)
final wizardOutcomeProvider = WizardOutcomeProvider._();

/// Live result for the current draft, or null while inputs are incomplete.

final class WizardOutcomeProvider
    extends
        $FunctionalProvider<
          EstimateOutcome?,
          EstimateOutcome?,
          EstimateOutcome?
        >
    with $Provider<EstimateOutcome?> {
  /// Live result for the current draft, or null while inputs are incomplete.
  WizardOutcomeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wizardOutcomeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wizardOutcomeHash();

  @$internal
  @override
  $ProviderElement<EstimateOutcome?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EstimateOutcome? create(Ref ref) {
    return wizardOutcome(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EstimateOutcome? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EstimateOutcome?>(value),
    );
  }
}

String _$wizardOutcomeHash() => r'80a5a2e030b2714e54676d6e327b44d7b4121174';
