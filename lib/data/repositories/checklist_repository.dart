import 'package:drift/drift.dart';

import '../db/app_database.dart';

/// Where a checklist item came from.
abstract final class ChecklistSource {
  static const step = 'step';
  static const safety = 'safety';
}

/// An item that should exist on a property's checklist.
typedef ChecklistKey = ({String itemId, String source});

/// A stored checklist item with its progress.
class ChecklistEntry {
  const ChecklistEntry({
    required this.id,
    required this.itemId,
    required this.source,
    required this.done,
    this.note,
    this.doneAt,
  });

  final int id;
  final String itemId;
  final String source;
  final bool done;
  final String? note;
  final DateTime? doneAt;
}

ChecklistEntry _entry(ChecklistItemRow r) => ChecklistEntry(
  id: r.id,
  itemId: r.itemId,
  source: r.source,
  done: r.done,
  note: r.note,
  doneAt: r.doneAt,
);

class ChecklistRepository {
  ChecklistRepository(this._db);

  final AppDatabase _db;

  Stream<List<ChecklistEntry>> watch(int propertyId) =>
      (_db.select(_db.checklistItems)
            ..where((t) => t.propertyId.equals(propertyId)))
          .watch()
          .map((rows) => rows.map(_entry).toList());

  Future<List<ChecklistEntry>> load(int propertyId) async => (await (_db.select(
    _db.checklistItems,
  )..where((t) => t.propertyId.equals(propertyId))).get()).map(_entry).toList();

  /// Makes the stored checklist match [wanted]: adds missing items, removes
  /// items no longer relevant (for example after a status change), and keeps
  /// progress on the rest.
  Future<void> sync(int propertyId, List<ChecklistKey> wanted) =>
      _db.transaction(() async {
        final existing = await load(propertyId);
        final have = {
          for (final r in existing) (itemId: r.itemId, source: r.source),
        };
        final want = wanted.toSet();
        for (final r in existing) {
          if (!want.contains((itemId: r.itemId, source: r.source))) {
            await (_db.delete(
              _db.checklistItems,
            )..where((t) => t.id.equals(r.id))).go();
          }
        }
        for (final k in wanted) {
          if (!have.contains(k)) {
            await _db
                .into(_db.checklistItems)
                .insert(
                  ChecklistItemsCompanion.insert(
                    propertyId: propertyId,
                    itemId: k.itemId,
                    source: k.source,
                  ),
                );
          }
        }
      });

  Future<void> setDone(int rowId, {required bool done}) =>
      (_db.update(_db.checklistItems)..where((t) => t.id.equals(rowId))).write(
        ChecklistItemsCompanion(
          done: Value(done),
          doneAt: Value(done ? DateTime.now() : null),
        ),
      );

  Future<void> setNote(int rowId, String? note) =>
      (_db.update(_db.checklistItems)..where((t) => t.id.equals(rowId))).write(
        ChecklistItemsCompanion(note: Value(note)),
      );

  /// Fraction of items done (0–1); 0 when there are no items.
  Future<double> progress(int propertyId) async {
    final rows = await load(propertyId);
    if (rows.isEmpty) return 0;
    return rows.where((r) => r.done).length / rows.length;
  }
}
