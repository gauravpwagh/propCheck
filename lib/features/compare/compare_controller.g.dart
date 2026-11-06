// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Loads and recomputes the picked properties (missing ones are dropped).
///
/// [ids] is a comma-separated list so the family key compares by value.

@ProviderFor(compareData)
final compareDataProvider = CompareDataFamily._();

/// Loads and recomputes the picked properties (missing ones are dropped).
///
/// [ids] is a comma-separated list so the family key compares by value.

final class CompareDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CompareColumn>>,
          List<CompareColumn>,
          FutureOr<List<CompareColumn>>
        >
    with
        $FutureModifier<List<CompareColumn>>,
        $FutureProvider<List<CompareColumn>> {
  /// Loads and recomputes the picked properties (missing ones are dropped).
  ///
  /// [ids] is a comma-separated list so the family key compares by value.
  CompareDataProvider._({
    required CompareDataFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'compareDataProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$compareDataHash();

  @override
  String toString() {
    return r'compareDataProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CompareColumn>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CompareColumn>> create(Ref ref) {
    final argument = this.argument as String;
    return compareData(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CompareDataProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$compareDataHash() => r'5a7a3119b562b505f0526df482feab9a99689464';

/// Loads and recomputes the picked properties (missing ones are dropped).
///
/// [ids] is a comma-separated list so the family key compares by value.

final class CompareDataFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CompareColumn>>, String> {
  CompareDataFamily._()
    : super(
        retry: null,
        name: r'compareDataProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Loads and recomputes the picked properties (missing ones are dropped).
  ///
  /// [ids] is a comma-separated list so the family key compares by value.

  CompareDataProvider call(String ids) =>
      CompareDataProvider._(argument: ids, from: this);

  @override
  String toString() => r'compareDataProvider';
}
