// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'742ceb6fe06dae282a737a0b1b2766b29e27599d';

@ProviderFor(assetSource)
final assetSourceProvider = AssetSourceProvider._();

final class AssetSourceProvider
    extends $FunctionalProvider<AssetSource, AssetSource, AssetSource>
    with $Provider<AssetSource> {
  AssetSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'assetSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$assetSourceHash();

  @$internal
  @override
  $ProviderElement<AssetSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AssetSource create(Ref ref) {
    return assetSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AssetSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AssetSource>(value),
    );
  }
}

String _$assetSourceHash() => r'64446ddeda90f20736927b20d24bebba15124e1b';

@ProviderFor(rateProfileRepository)
final rateProfileRepositoryProvider = RateProfileRepositoryProvider._();

final class RateProfileRepositoryProvider
    extends
        $FunctionalProvider<
          RateProfileRepository,
          RateProfileRepository,
          RateProfileRepository
        >
    with $Provider<RateProfileRepository> {
  RateProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rateProfileRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rateProfileRepositoryHash();

  @$internal
  @override
  $ProviderElement<RateProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RateProfileRepository create(Ref ref) {
    return rateProfileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RateProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RateProfileRepository>(value),
    );
  }
}

String _$rateProfileRepositoryHash() =>
    r'8f20b4babca421552a8fb493a921dd119594f583';

@ProviderFor(propertyRepository)
final propertyRepositoryProvider = PropertyRepositoryProvider._();

final class PropertyRepositoryProvider
    extends
        $FunctionalProvider<
          PropertyRepository,
          PropertyRepository,
          PropertyRepository
        >
    with $Provider<PropertyRepository> {
  PropertyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'propertyRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$propertyRepositoryHash();

  @$internal
  @override
  $ProviderElement<PropertyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PropertyRepository create(Ref ref) {
    return propertyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PropertyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PropertyRepository>(value),
    );
  }
}

String _$propertyRepositoryHash() =>
    r'b3513c375994b3b2b1236370416b5e66c1752537';

@ProviderFor(guidanceRepository)
final guidanceRepositoryProvider = GuidanceRepositoryProvider._();

final class GuidanceRepositoryProvider
    extends
        $FunctionalProvider<
          GuidanceRepository,
          GuidanceRepository,
          GuidanceRepository
        >
    with $Provider<GuidanceRepository> {
  GuidanceRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'guidanceRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$guidanceRepositoryHash();

  @$internal
  @override
  $ProviderElement<GuidanceRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GuidanceRepository create(Ref ref) {
    return guidanceRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GuidanceRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GuidanceRepository>(value),
    );
  }
}

String _$guidanceRepositoryHash() =>
    r'f27987a9a890eb5eedf619d426f53799b1475f9b';

/// Seeds bundled profile, steps and risk data on first run.

@ProviderFor(seeded)
final seededProvider = SeededProvider._();

/// Seeds bundled profile, steps and risk data on first run.

final class SeededProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// Seeds bundled profile, steps and risk data on first run.
  SeededProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'seededProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$seededHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return seeded(ref);
  }
}

String _$seededHash() => r'75f72f17a32515a70a7c04a41c87a78c152a4e99';

/// The latest version of the profile new estimates use. Invalidate after
/// editing rates.

@ProviderFor(activeProfile)
final activeProfileProvider = ActiveProfileProvider._();

/// The latest version of the profile new estimates use. Invalidate after
/// editing rates.

final class ActiveProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<RateProfile>,
          RateProfile,
          FutureOr<RateProfile>
        >
    with $FutureModifier<RateProfile>, $FutureProvider<RateProfile> {
  /// The latest version of the profile new estimates use. Invalidate after
  /// editing rates.
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

String _$activeProfileHash() => r'4073a7ec1f393e63d35374ade3988ad655fb2a45';

/// A stored profile version; falls back to the latest if it is missing.

@ProviderFor(profileVersion)
final profileVersionProvider = ProfileVersionFamily._();

/// A stored profile version; falls back to the latest if it is missing.

final class ProfileVersionProvider
    extends
        $FunctionalProvider<
          AsyncValue<RateProfile>,
          RateProfile,
          FutureOr<RateProfile>
        >
    with $FutureModifier<RateProfile>, $FutureProvider<RateProfile> {
  /// A stored profile version; falls back to the latest if it is missing.
  ProfileVersionProvider._({
    required ProfileVersionFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'profileVersionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$profileVersionHash();

  @override
  String toString() {
    return r'profileVersionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<RateProfile> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RateProfile> create(Ref ref) {
    final argument = this.argument as (String, int);
    return profileVersion(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileVersionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$profileVersionHash() => r'b036e8ba2f0ac8ec37943d2d729c808cfdb5b1eb';

/// A stored profile version; falls back to the latest if it is missing.

final class ProfileVersionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<RateProfile>, (String, int)> {
  ProfileVersionFamily._()
    : super(
        retry: null,
        name: r'profileVersionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// A stored profile version; falls back to the latest if it is missing.

  ProfileVersionProvider call(String id, int version) =>
      ProfileVersionProvider._(argument: (id, version), from: this);

  @override
  String toString() => r'profileVersionProvider';
}

@ProviderFor(checklistRepository)
final checklistRepositoryProvider = ChecklistRepositoryProvider._();

final class ChecklistRepositoryProvider
    extends
        $FunctionalProvider<
          ChecklistRepository,
          ChecklistRepository,
          ChecklistRepository
        >
    with $Provider<ChecklistRepository> {
  ChecklistRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checklistRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checklistRepositoryHash();

  @$internal
  @override
  $ProviderElement<ChecklistRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChecklistRepository create(Ref ref) {
    return checklistRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChecklistRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChecklistRepository>(value),
    );
  }
}

String _$checklistRepositoryHash() =>
    r'56212ebcdb478b1b8ccfe2b9ed8601faa946420c';
