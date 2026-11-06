// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guidance_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Current risk data (DB copy). Invalidate after import or restore.

@ProviderFor(riskData)
final riskDataProvider = RiskDataProvider._();

/// Current risk data (DB copy). Invalidate after import or restore.

final class RiskDataProvider
    extends
        $FunctionalProvider<AsyncValue<RiskData>, RiskData, FutureOr<RiskData>>
    with $FutureModifier<RiskData>, $FutureProvider<RiskData> {
  /// Current risk data (DB copy). Invalidate after import or restore.
  RiskDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskDataHash();

  @$internal
  @override
  $FutureProviderElement<RiskData> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<RiskData> create(Ref ref) {
    return riskData(ref);
  }
}

String _$riskDataHash() => r'219aa3f0a9ec4765ee60a0b1dcc4e211118d4a7c';

@ProviderFor(stepsData)
final stepsDataProvider = StepsDataProvider._();

final class StepsDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<StepsData>,
          StepsData,
          FutureOr<StepsData>
        >
    with $FutureModifier<StepsData>, $FutureProvider<StepsData> {
  StepsDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stepsDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stepsDataHash();

  @$internal
  @override
  $FutureProviderElement<StepsData> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<StepsData> create(Ref ref) {
    return stepsData(ref);
  }
}

String _$stepsDataHash() => r'ca527f7d99b592d42fe4123fb0ced731aee1d150';

/// Steps, scam patterns, safety checks and area notes for an input.

@ProviderFor(guidanceFor)
final guidanceForProvider = GuidanceForFamily._();

/// Steps, scam patterns, safety checks and area notes for an input.

final class GuidanceForProvider
    extends
        $FunctionalProvider<
          AsyncValue<PropertyGuidance>,
          PropertyGuidance,
          FutureOr<PropertyGuidance>
        >
    with $FutureModifier<PropertyGuidance>, $FutureProvider<PropertyGuidance> {
  /// Steps, scam patterns, safety checks and area notes for an input.
  GuidanceForProvider._({
    required GuidanceForFamily super.from,
    required PropertyInput super.argument,
  }) : super(
         retry: null,
         name: r'guidanceForProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$guidanceForHash();

  @override
  String toString() {
    return r'guidanceForProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PropertyGuidance> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PropertyGuidance> create(Ref ref) {
    final argument = this.argument as PropertyInput;
    return guidanceFor(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GuidanceForProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$guidanceForHash() => r'd17b74061465bacb39516361147266563c5dfdf0';

/// Steps, scam patterns, safety checks and area notes for an input.

final class GuidanceForFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PropertyGuidance>, PropertyInput> {
  GuidanceForFamily._()
    : super(
        retry: null,
        name: r'guidanceForProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Steps, scam patterns, safety checks and area notes for an input.

  GuidanceForProvider call(PropertyInput input) =>
      GuidanceForProvider._(argument: input, from: this);

  @override
  String toString() => r'guidanceForProvider';
}

/// A saved property's checklist, first brought in line with the current
/// steps and risk data (progress on unchanged items is kept).

@ProviderFor(syncedChecklist)
final syncedChecklistProvider = SyncedChecklistFamily._();

/// A saved property's checklist, first brought in line with the current
/// steps and risk data (progress on unchanged items is kept).

final class SyncedChecklistProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ChecklistEntry>>,
          List<ChecklistEntry>,
          Stream<List<ChecklistEntry>>
        >
    with
        $FutureModifier<List<ChecklistEntry>>,
        $StreamProvider<List<ChecklistEntry>> {
  /// A saved property's checklist, first brought in line with the current
  /// steps and risk data (progress on unchanged items is kept).
  SyncedChecklistProvider._({
    required SyncedChecklistFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'syncedChecklistProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$syncedChecklistHash();

  @override
  String toString() {
    return r'syncedChecklistProvider'
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
    return syncedChecklist(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SyncedChecklistProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$syncedChecklistHash() => r'1cf5e1acdc8433825800c99bcf69292897c3a020';

/// A saved property's checklist, first brought in line with the current
/// steps and risk data (progress on unchanged items is kept).

final class SyncedChecklistFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<ChecklistEntry>>, int> {
  SyncedChecklistFamily._()
    : super(
        retry: null,
        name: r'syncedChecklistProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// A saved property's checklist, first brought in line with the current
  /// steps and risk data (progress on unchanged items is kept).

  SyncedChecklistProvider call(int id) =>
      SyncedChecklistProvider._(argument: id, from: this);

  @override
  String toString() => r'syncedChecklistProvider';
}
