import 'package:drift/drift.dart';

/// User inputs for one property. Results are never stored as truth; they are
/// recomputed from these columns and the stored rate profile version.
@DataClassName('PropertyRow')
class Properties extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withDefault(const Constant(''))();
  TextColumn get category =>
      text().withDefault(const Constant('residential_flat'))();
  TextColumn get mode => text()();
  TextColumn get profileId => text()();
  IntColumn get rateVersion => integer()();
  TextColumn get locality => text().nullable()();
  TextColumn get type => text()();
  TextColumn get status => text()();
  IntColumn get quotedPrice => integer()();
  IntColumn get budget => integer().nullable()();
  RealColumn get carpetSqft => real()();
  RealColumn get builtupSqft => real().nullable()();
  IntColumn get readyReckonerValue => integer().nullable()();
  RealColumn get areaReferencePsf => real().nullable()();
  TextColumn get ownership => text()();

  // Inputs beyond SPEC §7's list that the engine needs to recompute.
  IntColumn get corpus => integer().nullable()();
  IntColumn get maintenanceMonths => integer().nullable()();
  RealColumn get maintenanceRatePsf => real().nullable()();
  IntColumn get legalFees => integer().nullable()();
  IntColumn get interiors => integer().nullable()();
  IntColumn get currentYear => integer()();
  BoolColumn get areaInSqm => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isArchived => boolean().withDefault(const Constant(false))();
}

@DataClassName('PropertyExtraRow')
class PropertyExtras extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  IntColumn get position => integer()();
  TextColumn get kind => text()();
  IntColumn get amount => integer()();
  BoolColumn get inAgreement => boolean().withDefault(const Constant(true))();
}

@DataClassName('ResaleDetailsRow')
class ResaleDetails extends Table {
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  IntColumn get buildingYear => integer().nullable()();
  BoolColumn get hasOc => boolean().nullable()();
  IntColumn get sellerLoan => integer().nullable()();
  RealColumn get brokeragePct => real().nullable()();
  IntColumn get transferFee => integer().nullable()();

  @override
  Set<Column> get primaryKey => {propertyId};
}

@DataClassName('UcDetailsRow')
class UcDetails extends Table {
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  TextColumn get reraNumber => text().nullable()();
  IntColumn get monthsToPossession => integer().nullable()();
  IntColumn get monthlyRent => integer().nullable()();

  @override
  Set<Column> get primaryKey => {propertyId};
}

@DataClassName('BuyerFinanceRow')
class BuyerFinance extends Table {
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  BoolColumn get usingLoan => boolean()();
  IntColumn get age => integer()();
  TextColumn get employment => text()();
  IntColumn get netIncome => integer()();
  IntColumn get existingEmi => integer()();
  RealColumn get ratePct => real().nullable()();
  IntColumn get tenureYears => integer().nullable()();
  IntColumn get ownFunds => integer().nullable()();

  @override
  Set<Column> get primaryKey => {propertyId};
}

@DataClassName('ChecklistItemRow')
class ChecklistItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  TextColumn get itemId => text()();

  /// `step` or `safety`.
  TextColumn get source => text()();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get doneAt => dateTime().nullable()();

  @override
  List<Set<Column>> get uniqueKeys => [
    {propertyId, itemId, source},
  ];
}

/// Every version of every profile is kept so saved properties can be
/// recomputed with the version they were calculated with.
@DataClassName('RateProfileRow')
class RateProfiles extends Table {
  TextColumn get id => text()();
  IntColumn get version => integer()();
  TextColumn get asOf => text()();
  TextColumn get json => text()();
  BoolColumn get isBundled => boolean()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id, version};
}

/// Guidance content. `kind` is `risk` (mumbai_risk_data.json) or `steps`
/// (steps_mumbai.json); one current row per kind.
@DataClassName('RiskDataRow')
class RiskData extends Table {
  TextColumn get kind => text()();
  TextColumn get version => text()();
  TextColumn get asOf => text()();
  TextColumn get json => text()();
  BoolColumn get isBundled => boolean()();
  DateTimeColumn get importedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {kind};
}

/// Derived numbers for list sorting and compare. Never the source of truth.
@DataClassName('ResultCacheRow')
class ResultCache extends Table {
  IntColumn get propertyId =>
      integer().references(Properties, #id, onDelete: KeyAction.cascade)();
  IntColumn get rateVersion => integer()();
  IntColumn get quotedPrice => integer()();
  IntColumn get total => integer()();
  IntColumn get ownFundsNeeded => integer()();
  IntColumn get loan => integer()();
  IntColumn get emi => integer()();
  IntColumn get quotedCarpetPsf => integer()();
  IntColumn get allInCarpetPsf => integer()();
  IntColumn get criticalFlags => integer()();
  IntColumn get warningFlags => integer()();
  DateTimeColumn get computedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {propertyId};
}
