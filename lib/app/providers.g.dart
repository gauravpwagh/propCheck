// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The rate profile new estimates use.

@ProviderFor(activeProfile)
final activeProfileProvider = ActiveProfileProvider._();

/// The rate profile new estimates use.

final class ActiveProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<RateProfile>,
          RateProfile,
          FutureOr<RateProfile>
        >
    with $FutureModifier<RateProfile>, $FutureProvider<RateProfile> {
  /// The rate profile new estimates use.
  ActiveProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeProfileProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeProfileHash();

  @$internal
  @override
  $FutureProviderElement<RateProfile> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RateProfile> create(Ref ref) {
    return activeProfile(ref);
  }
}

String _$activeProfileHash() => r'887591a055328f5cc39c6460c1f64a6b7fd990e2';
