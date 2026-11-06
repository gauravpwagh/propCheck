import 'package:drift/drift.dart';

import '../../domain/engine/engine.dart';
import '../../domain/models/saved_property.dart';
import '../db/app_database.dart';

/// One row of the home list: stored inputs plus cached numbers.
class PropertyListItem {
  const PropertyListItem({required this.property, this.cache});

  final SavedProperty property;
  final ResultCacheRow? cache;
}

class PropertyRepository {
  PropertyRepository(this._db);

  final AppDatabase _db;

  /// Inserts or updates [p] with all its detail rows; returns its id.
  Future<int> save(SavedProperty p) => _db.transaction(() async {
    final inp = p.input;
    final companion = PropertiesCompanion(
      name: Value(p.name),
      category: Value(inp.category.key),
      mode: Value(p.mode.key),
      profileId: Value(p.profileId),
      rateVersion: Value(p.rateVersion),
      locality: Value(inp.locality),
      type: Value(inp.type),
      status: Value(inp.status.key),
      quotedPrice: Value(inp.quotedPrice),
      budget: Value(p.budget),
      carpetSqft: Value(inp.carpetSqft),
      builtupSqft: Value(inp.builtupSqft),
      readyReckonerValue: Value(inp.readyReckonerValue),
      areaReferencePsf: Value(inp.areaReferencePsf),
      ownership: Value(inp.ownership.key),
      corpus: Value(inp.corpus),
      maintenanceMonths: Value(inp.maintenanceMonths),
      maintenanceRatePsf: Value(inp.maintenanceRatePsf),
      legalFees: Value(inp.legalFees),
      interiors: Value(inp.interiors),
      currentYear: Value(inp.currentYear),
      areaInSqm: Value(p.areaInSqm),
      createdAt: Value(p.createdAt),
      updatedAt: Value(p.updatedAt),
      isArchived: Value(p.isArchived),
    );
    final int id;
    if (p.id == null) {
      id = await _db.into(_db.properties).insert(companion);
    } else {
      id = p.id!;
      await (_db.update(
        _db.properties,
      )..where((t) => t.id.equals(id))).write(companion);
    }

    await (_db.delete(
      _db.propertyExtras,
    )..where((t) => t.propertyId.equals(id))).go();
    for (var i = 0; i < inp.extras.length; i++) {
      final e = inp.extras[i];
      await _db
          .into(_db.propertyExtras)
          .insert(
            PropertyExtrasCompanion.insert(
              propertyId: id,
              position: i,
              kind: e.kind,
              amount: e.amount,
              inAgreement: Value(e.inAgreement),
            ),
          );
    }

    await _db
        .into(_db.resaleDetails)
        .insertOnConflictUpdate(
          ResaleDetailsCompanion.insert(
            propertyId: Value(id),
            buildingYear: Value(inp.buildingYear),
            hasOc: Value(inp.hasOc),
            sellerLoan: Value(inp.sellerLoan),
            brokeragePct: Value(inp.brokeragePct),
            transferFee: Value(inp.transferFee),
          ),
        );
    await _db
        .into(_db.ucDetails)
        .insertOnConflictUpdate(
          UcDetailsCompanion.insert(
            propertyId: Value(id),
            reraNumber: Value(inp.reraNumber),
            monthsToPossession: Value(inp.monthsToPossession),
            monthlyRent: Value(inp.monthlyRent),
          ),
        );
    final f = inp.finance;
    if (f == null) {
      await (_db.delete(
        _db.buyerFinance,
      )..where((t) => t.propertyId.equals(id))).go();
    } else {
      await _db
          .into(_db.buyerFinance)
          .insertOnConflictUpdate(
            BuyerFinanceCompanion.insert(
              propertyId: Value(id),
              usingLoan: f.usingLoan,
              age: f.age,
              employment: f.employment.key,
              netIncome: f.netIncome,
              existingEmi: f.existingEmi,
              ratePct: Value(f.ratePct),
              tenureYears: Value(f.tenureYears),
              ownFunds: Value(f.ownFunds),
            ),
          );
    }
    return id;
  });

  Future<SavedProperty?> load(int id) async {
    final row = await (_db.select(
      _db.properties,
    )..where((t) => t.id.equals(id))).getSingleOrNull();
    if (row == null) return null;
    return _assemble(row);
  }

  Future<List<SavedProperty>> loadAll() async {
    final rows = await (_db.select(
      _db.properties,
    )..orderBy([(t) => OrderingTerm.asc(t.id)])).get();
    return [for (final r in rows) await _assemble(r)];
  }

  Future<SavedProperty> _assemble(PropertyRow row) async {
    final id = row.id;
    final extras =
        await (_db.select(_db.propertyExtras)
              ..where((t) => t.propertyId.equals(id))
              ..orderBy([(t) => OrderingTerm.asc(t.position)]))
            .get();
    final resale = await (_db.select(
      _db.resaleDetails,
    )..where((t) => t.propertyId.equals(id))).getSingleOrNull();
    final uc = await (_db.select(
      _db.ucDetails,
    )..where((t) => t.propertyId.equals(id))).getSingleOrNull();
    final fin = await (_db.select(
      _db.buyerFinance,
    )..where((t) => t.propertyId.equals(id))).getSingleOrNull();

    return SavedProperty(
      id: id,
      name: row.name,
      mode: EstimateMode.fromKey(row.mode),
      budget: row.budget,
      profileId: row.profileId,
      rateVersion: row.rateVersion,
      areaInSqm: row.areaInSqm,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      isArchived: row.isArchived,
      input: PropertyInput(
        category: PropertyCategory.fromKey(row.category),
        status: PropertyStatus.fromKey(row.status),
        type: row.type,
        quotedPrice: row.quotedPrice,
        carpetSqft: row.carpetSqft,
        builtupSqft: row.builtupSqft,
        ownership: Ownership.fromKey(row.ownership),
        readyReckonerValue: row.readyReckonerValue,
        areaReferencePsf: row.areaReferencePsf,
        extras: [
          for (final e in extras)
            Extra(kind: e.kind, amount: e.amount, inAgreement: e.inAgreement),
        ],
        corpus: row.corpus,
        maintenanceMonths: row.maintenanceMonths,
        maintenanceRatePsf: row.maintenanceRatePsf,
        transferFee: resale?.transferFee,
        brokeragePct: resale?.brokeragePct,
        buildingYear: resale?.buildingYear,
        hasOc: resale?.hasOc,
        sellerLoan: resale?.sellerLoan,
        reraNumber: uc?.reraNumber,
        monthsToPossession: uc?.monthsToPossession,
        monthlyRent: uc?.monthlyRent,
        legalFees: row.legalFees,
        interiors: row.interiors,
        currentYear: row.currentYear,
        locality: row.locality,
        finance: fin == null
            ? null
            : Finance(
                usingLoan: fin.usingLoan,
                age: fin.age,
                employment: Employment.fromKey(fin.employment),
                netIncome: fin.netIncome,
                existingEmi: fin.existingEmi,
                ratePct: fin.ratePct,
                tenureYears: fin.tenureYears,
                ownFunds: fin.ownFunds,
              ),
      ),
    );
  }

  /// Home list with cached numbers; re-emits on any change.
  Stream<List<PropertyListItem>> watchList() {
    final q = _db.select(_db.properties).join([
      leftOuterJoin(
        _db.resultCache,
        _db.resultCache.propertyId.equalsExp(_db.properties.id),
      ),
    ])..orderBy([OrderingTerm.desc(_db.properties.updatedAt)]);
    return q.watch().asyncMap(
      (rows) async => [
        for (final r in rows)
          PropertyListItem(
            property: await _assemble(r.readTable(_db.properties)),
            cache: r.readTableOrNull(_db.resultCache),
          ),
      ],
    );
  }

  Future<void> setArchived(int id, {required bool archived}) =>
      (_db.update(_db.properties)..where((t) => t.id.equals(id))).write(
        PropertiesCompanion(isArchived: Value(archived)),
      );

  Future<void> delete(int id) =>
      (_db.delete(_db.properties)..where((t) => t.id.equals(id))).go();

  /// Copies inputs (not checklist progress) into a new property.
  Future<int> duplicate(int id, {required String nameSuffix}) async {
    final p = await load(id);
    if (p == null) throw StateError('No property $id');
    final now = DateTime.now();
    return save(
      p.copyWith(
        id: null,
        name: '${p.name}$nameSuffix'.trim(),
        createdAt: now,
        updatedAt: now,
        isArchived: false,
      ),
    );
  }

  Future<void> writeCache(int id, int rateVersion, EstimateOutcome o) {
    final b = o.breakdown;
    return _db
        .into(_db.resultCache)
        .insertOnConflictUpdate(
          ResultCacheCompanion.insert(
            propertyId: Value(id),
            rateVersion: rateVersion,
            quotedPrice: o.quotedPrice,
            total: b.total,
            ownFundsNeeded: b.ownFundsNeeded,
            loan: b.loan.loan,
            emi: b.loan.emi,
            quotedCarpetPsf: b.perSqft.quotedCarpet,
            allInCarpetPsf: b.perSqft.allInCarpet,
            criticalFlags: b.flags
                .where((f) => f.severity == FlagSeverity.critical)
                .length,
            warningFlags: b.flags
                .where((f) => f.severity == FlagSeverity.warning)
                .length,
            computedAt: DateTime.now(),
          ),
        );
  }
}
