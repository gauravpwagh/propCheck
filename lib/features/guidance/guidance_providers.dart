import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../data/repositories/checklist_repository.dart';
import '../../data/repositories/guidance_repository.dart';
import '../../domain/engine/engine.dart';
import '../../domain/guidance/guidance.dart';
import '../../domain/guidance/guidance_models.dart';
import '../property/property_providers.dart';

part 'guidance_providers.g.dart';

/// Current risk data (DB copy). Invalidate after import or restore.
@Riverpod(keepAlive: true)
Future<RiskData> riskData(Ref ref) async {
  await ref.watch(seededProvider.future);
  final doc = await ref
      .watch(guidanceRepositoryProvider)
      .load(GuidanceKind.risk);
  return RiskData.fromJson(doc.json);
}

@Riverpod(keepAlive: true)
Future<StepsData> stepsData(Ref ref) async {
  await ref.watch(seededProvider.future);
  final doc = await ref
      .watch(guidanceRepositoryProvider)
      .load(GuidanceKind.steps);
  return StepsData.fromJson(doc.json);
}

/// Steps, scam patterns, safety checks and area notes for an input.
@riverpod
Future<PropertyGuidance> guidanceFor(Ref ref, PropertyInput input) async {
  final steps = await ref.watch(stepsDataProvider.future);
  final risk = await ref.watch(riskDataProvider.future);
  return buildGuidance(steps, risk, input, now: DateTime.now());
}

/// Checklist entries the property should have for this guidance.
List<ChecklistKey> checklistKeysFor(PropertyGuidance g) => [
  for (final s in g.steps) (itemId: s.id, source: ChecklistSource.step),
  for (final c in g.safetyChecks)
    (itemId: c.id, source: ChecklistSource.safety),
];

/// A saved property's checklist, first brought in line with the current
/// steps and risk data (progress on unchanged items is kept).
@riverpod
Stream<List<ChecklistEntry>> syncedChecklist(Ref ref, int id) async* {
  final view = await ref.watch(propertyViewProvider(id).future);
  if (view == null) return;
  final g = await ref.watch(guidanceForProvider(view.property.input).future);
  final repo = ref.watch(checklistRepositoryProvider);
  await repo.sync(id, checklistKeysFor(g));
  yield* repo.watch(id);
}
