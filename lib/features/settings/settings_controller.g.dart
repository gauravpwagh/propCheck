// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Stored risk data metadata for the settings screen.

@ProviderFor(riskDocument)
final riskDocumentProvider = RiskDocumentProvider._();

/// Stored risk data metadata for the settings screen.

final class RiskDocumentProvider
    extends
        $FunctionalProvider<
          AsyncValue<GuidanceDocument>,
          GuidanceDocument,
          FutureOr<GuidanceDocument>
        >
    with $FutureModifier<GuidanceDocument>, $FutureProvider<GuidanceDocument> {
  /// Stored risk data metadata for the settings screen.
  RiskDocumentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskDocumentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskDocumentHash();

  @$internal
  @override
  $FutureProviderElement<GuidanceDocument> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GuidanceDocument> create(Ref ref) {
    return riskDocument(ref);
  }
}

String _$riskDocumentHash() => r'9b65306084a01403b9828ea27d6f986cd07946ee';

@ProviderFor(SettingsController)
final settingsControllerProvider = SettingsControllerProvider._();

final class SettingsControllerProvider
    extends $NotifierProvider<SettingsController, void> {
  SettingsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsControllerHash();

  @$internal
  @override
  SettingsController create() => SettingsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$settingsControllerHash() =>
    r'27c3813f417d81c26210904213e3749532135fd1';

abstract class _$SettingsController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
