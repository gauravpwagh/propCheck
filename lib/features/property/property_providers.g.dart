// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Recomputes a saved property from its inputs and stored rate version.
/// Returns null if the property was deleted.

@ProviderFor(propertyView)
final propertyViewProvider = PropertyViewFamily._();

/// Recomputes a saved property from its inputs and stored rate version.
/// Returns null if the property was deleted.

final class PropertyViewProvider
    extends
        $FunctionalProvider<
          AsyncValue<PropertyView?>,
          PropertyView?,
          FutureOr<PropertyView?>
        >
    with $FutureModifier<PropertyView?>, $FutureProvider<PropertyView?> {
  /// Recomputes a saved property from its inputs and stored rate version.
  /// Returns null if the property was deleted.
  PropertyViewProvider._({
    required PropertyViewFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'propertyViewProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$propertyViewHash();

  @override
  String toString() {
    return r'propertyViewProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PropertyView?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PropertyView?> create(Ref ref) {
    final argument = this.argument as int;
    return propertyView(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyViewProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$propertyViewHash() => r'76feb04715a44cc52d846e657076297268c9ec25';

/// Recomputes a saved property from its inputs and stored rate version.
/// Returns null if the property was deleted.

final class PropertyViewFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PropertyView?>, int> {
  PropertyViewFamily._()
    : super(
        retry: null,
        name: r'propertyViewProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Recomputes a saved property from its inputs and stored rate version.
  /// Returns null if the property was deleted.

  PropertyViewProvider call(int id) =>
      PropertyViewProvider._(argument: id, from: this);

  @override
  String toString() => r'propertyViewProvider';
}

@ProviderFor(propertyList)
final propertyListProvider = PropertyListProvider._();

final class PropertyListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PropertyListItem>>,
          List<PropertyListItem>,
          Stream<List<PropertyListItem>>
        >
    with
        $FutureModifier<List<PropertyListItem>>,
        $StreamProvider<List<PropertyListItem>> {
  PropertyListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'propertyListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$propertyListHash();

  @$internal
  @override
  $StreamProviderElement<List<PropertyListItem>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<PropertyListItem>> create(Ref ref) {
    return propertyList(ref);
  }
}

String _$propertyListHash() => r'b16c4ef93309c7b5b44f9df37248c78641180fb0';

@ProviderFor(checklistProgress)
final checklistProgressProvider = ChecklistProgressFamily._();

final class ChecklistProgressProvider
    extends $FunctionalProvider<AsyncValue<double>, double, FutureOr<double>>
    with $FutureModifier<double>, $FutureProvider<double> {
  ChecklistProgressProvider._({
    required ChecklistProgressFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checklistProgressProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checklistProgressHash();

  @override
  String toString() {
    return r'checklistProgressProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<double> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<double> create(Ref ref) {
    final argument = this.argument as int;
    return checklistProgress(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ChecklistProgressProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checklistProgressHash() => r'e716bcd973cce3b11ac70fa7522fb2813edc8597';

final class ChecklistProgressFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<double>, int> {
  ChecklistProgressFamily._()
    : super(
        retry: null,
        name: r'checklistProgressProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChecklistProgressProvider call(int propertyId) =>
      ChecklistProgressProvider._(argument: propertyId, from: this);

  @override
  String toString() => r'checklistProgressProvider';
}

@ProviderFor(checklistItems)
final checklistItemsProvider = ChecklistItemsFamily._();

final class ChecklistItemsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ChecklistEntry>>,
          List<ChecklistEntry>,
          Stream<List<ChecklistEntry>>
        >
    with
        $FutureModifier<List<ChecklistEntry>>,
        $StreamProvider<List<ChecklistEntry>> {
  ChecklistItemsProvider._({
    required ChecklistItemsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checklistItemsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checklistItemsHash();

  @override
  String toString() {
    return r'checklistItemsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<ChecklistEntry>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<ChecklistEntry>> create(Ref ref) {
    final argument = this.argument as int;
    return checklistItems(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ChecklistItemsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checklistItemsHash() => r'3904b5349e59bcfe5ca1c161254681ac4af579ef';

final class ChecklistItemsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<ChecklistEntry>>, int> {
  ChecklistItemsFamily._()
    : super(
        retry: null,
        name: r'checklistItemsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChecklistItemsProvider call(int propertyId) =>
      ChecklistItemsProvider._(argument: propertyId, from: this);

  @override
  String toString() => r'checklistItemsProvider';
}

/// Actions on one saved property (detail screen controller).

@ProviderFor(PropertyDetailController)
final propertyDetailControllerProvider = PropertyDetailControllerFamily._();

/// Actions on one saved property (detail screen controller).
final class PropertyDetailControllerProvider
    extends $NotifierProvider<PropertyDetailController, void> {
  /// Actions on one saved property (detail screen controller).
  PropertyDetailControllerProvider._({
    required PropertyDetailControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'propertyDetailControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$propertyDetailControllerHash();

  @override
  String toString() {
    return r'propertyDetailControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PropertyDetailController create() => PropertyDetailController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyDetailControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$propertyDetailControllerHash() =>
    r'e9f653a2850e12060a478b69a243a4c8ebb2aa25';

/// Actions on one saved property (detail screen controller).

final class PropertyDetailControllerFamily extends $Family
    with $ClassFamilyOverride<PropertyDetailController, void, void, void, int> {
  PropertyDetailControllerFamily._()
    : super(
        retry: null,
        name: r'propertyDetailControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Actions on one saved property (detail screen controller).

  PropertyDetailControllerProvider call(int id) =>
      PropertyDetailControllerProvider._(argument: id, from: this);

  @override
  String toString() => r'propertyDetailControllerProvider';
}

/// Actions on one saved property (detail screen controller).

abstract class _$PropertyDetailController extends $Notifier<void> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  void build(int id);
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
    element.handleCreate(ref, () => build(_$args));
  }
}
