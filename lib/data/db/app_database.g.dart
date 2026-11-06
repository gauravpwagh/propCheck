// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PropertiesTable extends Properties
    with TableInfo<$PropertiesTable, PropertyRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PropertiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('residential_flat'),
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _profileIdMeta = const VerificationMeta(
    'profileId',
  );
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
    'profile_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rateVersionMeta = const VerificationMeta(
    'rateVersion',
  );
  @override
  late final GeneratedColumn<int> rateVersion = GeneratedColumn<int>(
    'rate_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _localityMeta = const VerificationMeta(
    'locality',
  );
  @override
  late final GeneratedColumn<String> locality = GeneratedColumn<String>(
    'locality',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quotedPriceMeta = const VerificationMeta(
    'quotedPrice',
  );
  @override
  late final GeneratedColumn<int> quotedPrice = GeneratedColumn<int>(
    'quoted_price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _budgetMeta = const VerificationMeta('budget');
  @override
  late final GeneratedColumn<int> budget = GeneratedColumn<int>(
    'budget',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _carpetSqftMeta = const VerificationMeta(
    'carpetSqft',
  );
  @override
  late final GeneratedColumn<double> carpetSqft = GeneratedColumn<double>(
    'carpet_sqft',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _builtupSqftMeta = const VerificationMeta(
    'builtupSqft',
  );
  @override
  late final GeneratedColumn<double> builtupSqft = GeneratedColumn<double>(
    'builtup_sqft',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _readyReckonerValueMeta =
      const VerificationMeta('readyReckonerValue');
  @override
  late final GeneratedColumn<int> readyReckonerValue = GeneratedColumn<int>(
    'ready_reckoner_value',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _areaReferencePsfMeta = const VerificationMeta(
    'areaReferencePsf',
  );
  @override
  late final GeneratedColumn<double> areaReferencePsf = GeneratedColumn<double>(
    'area_reference_psf',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ownershipMeta = const VerificationMeta(
    'ownership',
  );
  @override
  late final GeneratedColumn<String> ownership = GeneratedColumn<String>(
    'ownership',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _corpusMeta = const VerificationMeta('corpus');
  @override
  late final GeneratedColumn<int> corpus = GeneratedColumn<int>(
    'corpus',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maintenanceMonthsMeta = const VerificationMeta(
    'maintenanceMonths',
  );
  @override
  late final GeneratedColumn<int> maintenanceMonths = GeneratedColumn<int>(
    'maintenance_months',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maintenanceRatePsfMeta =
      const VerificationMeta('maintenanceRatePsf');
  @override
  late final GeneratedColumn<double> maintenanceRatePsf =
      GeneratedColumn<double>(
        'maintenance_rate_psf',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _legalFeesMeta = const VerificationMeta(
    'legalFees',
  );
  @override
  late final GeneratedColumn<int> legalFees = GeneratedColumn<int>(
    'legal_fees',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _interiorsMeta = const VerificationMeta(
    'interiors',
  );
  @override
  late final GeneratedColumn<int> interiors = GeneratedColumn<int>(
    'interiors',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currentYearMeta = const VerificationMeta(
    'currentYear',
  );
  @override
  late final GeneratedColumn<int> currentYear = GeneratedColumn<int>(
    'current_year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _areaInSqmMeta = const VerificationMeta(
    'areaInSqm',
  );
  @override
  late final GeneratedColumn<bool> areaInSqm = GeneratedColumn<bool>(
    'area_in_sqm',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("area_in_sqm" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isArchivedMeta = const VerificationMeta(
    'isArchived',
  );
  @override
  late final GeneratedColumn<bool> isArchived = GeneratedColumn<bool>(
    'is_archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_archived" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    category,
    mode,
    profileId,
    rateVersion,
    locality,
    type,
    status,
    quotedPrice,
    budget,
    carpetSqft,
    builtupSqft,
    readyReckonerValue,
    areaReferencePsf,
    ownership,
    corpus,
    maintenanceMonths,
    maintenanceRatePsf,
    legalFees,
    interiors,
    currentYear,
    areaInSqm,
    createdAt,
    updatedAt,
    isArchived,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'properties';
  @override
  VerificationContext validateIntegrity(
    Insertable<PropertyRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('profile_id')) {
      context.handle(
        _profileIdMeta,
        profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta),
      );
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('rate_version')) {
      context.handle(
        _rateVersionMeta,
        rateVersion.isAcceptableOrUnknown(
          data['rate_version']!,
          _rateVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rateVersionMeta);
    }
    if (data.containsKey('locality')) {
      context.handle(
        _localityMeta,
        locality.isAcceptableOrUnknown(data['locality']!, _localityMeta),
      );
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('quoted_price')) {
      context.handle(
        _quotedPriceMeta,
        quotedPrice.isAcceptableOrUnknown(
          data['quoted_price']!,
          _quotedPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quotedPriceMeta);
    }
    if (data.containsKey('budget')) {
      context.handle(
        _budgetMeta,
        budget.isAcceptableOrUnknown(data['budget']!, _budgetMeta),
      );
    }
    if (data.containsKey('carpet_sqft')) {
      context.handle(
        _carpetSqftMeta,
        carpetSqft.isAcceptableOrUnknown(data['carpet_sqft']!, _carpetSqftMeta),
      );
    } else if (isInserting) {
      context.missing(_carpetSqftMeta);
    }
    if (data.containsKey('builtup_sqft')) {
      context.handle(
        _builtupSqftMeta,
        builtupSqft.isAcceptableOrUnknown(
          data['builtup_sqft']!,
          _builtupSqftMeta,
        ),
      );
    }
    if (data.containsKey('ready_reckoner_value')) {
      context.handle(
        _readyReckonerValueMeta,
        readyReckonerValue.isAcceptableOrUnknown(
          data['ready_reckoner_value']!,
          _readyReckonerValueMeta,
        ),
      );
    }
    if (data.containsKey('area_reference_psf')) {
      context.handle(
        _areaReferencePsfMeta,
        areaReferencePsf.isAcceptableOrUnknown(
          data['area_reference_psf']!,
          _areaReferencePsfMeta,
        ),
      );
    }
    if (data.containsKey('ownership')) {
      context.handle(
        _ownershipMeta,
        ownership.isAcceptableOrUnknown(data['ownership']!, _ownershipMeta),
      );
    } else if (isInserting) {
      context.missing(_ownershipMeta);
    }
    if (data.containsKey('corpus')) {
      context.handle(
        _corpusMeta,
        corpus.isAcceptableOrUnknown(data['corpus']!, _corpusMeta),
      );
    }
    if (data.containsKey('maintenance_months')) {
      context.handle(
        _maintenanceMonthsMeta,
        maintenanceMonths.isAcceptableOrUnknown(
          data['maintenance_months']!,
          _maintenanceMonthsMeta,
        ),
      );
    }
    if (data.containsKey('maintenance_rate_psf')) {
      context.handle(
        _maintenanceRatePsfMeta,
        maintenanceRatePsf.isAcceptableOrUnknown(
          data['maintenance_rate_psf']!,
          _maintenanceRatePsfMeta,
        ),
      );
    }
    if (data.containsKey('legal_fees')) {
      context.handle(
        _legalFeesMeta,
        legalFees.isAcceptableOrUnknown(data['legal_fees']!, _legalFeesMeta),
      );
    }
    if (data.containsKey('interiors')) {
      context.handle(
        _interiorsMeta,
        interiors.isAcceptableOrUnknown(data['interiors']!, _interiorsMeta),
      );
    }
    if (data.containsKey('current_year')) {
      context.handle(
        _currentYearMeta,
        currentYear.isAcceptableOrUnknown(
          data['current_year']!,
          _currentYearMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentYearMeta);
    }
    if (data.containsKey('area_in_sqm')) {
      context.handle(
        _areaInSqmMeta,
        areaInSqm.isAcceptableOrUnknown(data['area_in_sqm']!, _areaInSqmMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_archived')) {
      context.handle(
        _isArchivedMeta,
        isArchived.isAcceptableOrUnknown(data['is_archived']!, _isArchivedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PropertyRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PropertyRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      profileId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}profile_id'],
      )!,
      rateVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rate_version'],
      )!,
      locality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}locality'],
      ),
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      quotedPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quoted_price'],
      )!,
      budget: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}budget'],
      ),
      carpetSqft: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}carpet_sqft'],
      )!,
      builtupSqft: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}builtup_sqft'],
      ),
      readyReckonerValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ready_reckoner_value'],
      ),
      areaReferencePsf: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}area_reference_psf'],
      ),
      ownership: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ownership'],
      )!,
      corpus: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}corpus'],
      ),
      maintenanceMonths: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}maintenance_months'],
      ),
      maintenanceRatePsf: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}maintenance_rate_psf'],
      ),
      legalFees: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}legal_fees'],
      ),
      interiors: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}interiors'],
      ),
      currentYear: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_year'],
      )!,
      areaInSqm: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}area_in_sqm'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isArchived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_archived'],
      )!,
    );
  }

  @override
  $PropertiesTable createAlias(String alias) {
    return $PropertiesTable(attachedDatabase, alias);
  }
}

class PropertyRow extends DataClass implements Insertable<PropertyRow> {
  final int id;
  final String name;
  final String category;
  final String mode;
  final String profileId;
  final int rateVersion;
  final String? locality;
  final String type;
  final String status;
  final int quotedPrice;
  final int? budget;
  final double carpetSqft;
  final double? builtupSqft;
  final int? readyReckonerValue;
  final double? areaReferencePsf;
  final String ownership;
  final int? corpus;
  final int? maintenanceMonths;
  final double? maintenanceRatePsf;
  final int? legalFees;
  final int? interiors;
  final int currentYear;
  final bool areaInSqm;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isArchived;
  const PropertyRow({
    required this.id,
    required this.name,
    required this.category,
    required this.mode,
    required this.profileId,
    required this.rateVersion,
    this.locality,
    required this.type,
    required this.status,
    required this.quotedPrice,
    this.budget,
    required this.carpetSqft,
    this.builtupSqft,
    this.readyReckonerValue,
    this.areaReferencePsf,
    required this.ownership,
    this.corpus,
    this.maintenanceMonths,
    this.maintenanceRatePsf,
    this.legalFees,
    this.interiors,
    required this.currentYear,
    required this.areaInSqm,
    required this.createdAt,
    required this.updatedAt,
    required this.isArchived,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['category'] = Variable<String>(category);
    map['mode'] = Variable<String>(mode);
    map['profile_id'] = Variable<String>(profileId);
    map['rate_version'] = Variable<int>(rateVersion);
    if (!nullToAbsent || locality != null) {
      map['locality'] = Variable<String>(locality);
    }
    map['type'] = Variable<String>(type);
    map['status'] = Variable<String>(status);
    map['quoted_price'] = Variable<int>(quotedPrice);
    if (!nullToAbsent || budget != null) {
      map['budget'] = Variable<int>(budget);
    }
    map['carpet_sqft'] = Variable<double>(carpetSqft);
    if (!nullToAbsent || builtupSqft != null) {
      map['builtup_sqft'] = Variable<double>(builtupSqft);
    }
    if (!nullToAbsent || readyReckonerValue != null) {
      map['ready_reckoner_value'] = Variable<int>(readyReckonerValue);
    }
    if (!nullToAbsent || areaReferencePsf != null) {
      map['area_reference_psf'] = Variable<double>(areaReferencePsf);
    }
    map['ownership'] = Variable<String>(ownership);
    if (!nullToAbsent || corpus != null) {
      map['corpus'] = Variable<int>(corpus);
    }
    if (!nullToAbsent || maintenanceMonths != null) {
      map['maintenance_months'] = Variable<int>(maintenanceMonths);
    }
    if (!nullToAbsent || maintenanceRatePsf != null) {
      map['maintenance_rate_psf'] = Variable<double>(maintenanceRatePsf);
    }
    if (!nullToAbsent || legalFees != null) {
      map['legal_fees'] = Variable<int>(legalFees);
    }
    if (!nullToAbsent || interiors != null) {
      map['interiors'] = Variable<int>(interiors);
    }
    map['current_year'] = Variable<int>(currentYear);
    map['area_in_sqm'] = Variable<bool>(areaInSqm);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_archived'] = Variable<bool>(isArchived);
    return map;
  }

  PropertiesCompanion toCompanion(bool nullToAbsent) {
    return PropertiesCompanion(
      id: Value(id),
      name: Value(name),
      category: Value(category),
      mode: Value(mode),
      profileId: Value(profileId),
      rateVersion: Value(rateVersion),
      locality: locality == null && nullToAbsent
          ? const Value.absent()
          : Value(locality),
      type: Value(type),
      status: Value(status),
      quotedPrice: Value(quotedPrice),
      budget: budget == null && nullToAbsent
          ? const Value.absent()
          : Value(budget),
      carpetSqft: Value(carpetSqft),
      builtupSqft: builtupSqft == null && nullToAbsent
          ? const Value.absent()
          : Value(builtupSqft),
      readyReckonerValue: readyReckonerValue == null && nullToAbsent
          ? const Value.absent()
          : Value(readyReckonerValue),
      areaReferencePsf: areaReferencePsf == null && nullToAbsent
          ? const Value.absent()
          : Value(areaReferencePsf),
      ownership: Value(ownership),
      corpus: corpus == null && nullToAbsent
          ? const Value.absent()
          : Value(corpus),
      maintenanceMonths: maintenanceMonths == null && nullToAbsent
          ? const Value.absent()
          : Value(maintenanceMonths),
      maintenanceRatePsf: maintenanceRatePsf == null && nullToAbsent
          ? const Value.absent()
          : Value(maintenanceRatePsf),
      legalFees: legalFees == null && nullToAbsent
          ? const Value.absent()
          : Value(legalFees),
      interiors: interiors == null && nullToAbsent
          ? const Value.absent()
          : Value(interiors),
      currentYear: Value(currentYear),
      areaInSqm: Value(areaInSqm),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isArchived: Value(isArchived),
    );
  }

  factory PropertyRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PropertyRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      category: serializer.fromJson<String>(json['category']),
      mode: serializer.fromJson<String>(json['mode']),
      profileId: serializer.fromJson<String>(json['profileId']),
      rateVersion: serializer.fromJson<int>(json['rateVersion']),
      locality: serializer.fromJson<String?>(json['locality']),
      type: serializer.fromJson<String>(json['type']),
      status: serializer.fromJson<String>(json['status']),
      quotedPrice: serializer.fromJson<int>(json['quotedPrice']),
      budget: serializer.fromJson<int?>(json['budget']),
      carpetSqft: serializer.fromJson<double>(json['carpetSqft']),
      builtupSqft: serializer.fromJson<double?>(json['builtupSqft']),
      readyReckonerValue: serializer.fromJson<int?>(json['readyReckonerValue']),
      areaReferencePsf: serializer.fromJson<double?>(json['areaReferencePsf']),
      ownership: serializer.fromJson<String>(json['ownership']),
      corpus: serializer.fromJson<int?>(json['corpus']),
      maintenanceMonths: serializer.fromJson<int?>(json['maintenanceMonths']),
      maintenanceRatePsf: serializer.fromJson<double?>(
        json['maintenanceRatePsf'],
      ),
      legalFees: serializer.fromJson<int?>(json['legalFees']),
      interiors: serializer.fromJson<int?>(json['interiors']),
      currentYear: serializer.fromJson<int>(json['currentYear']),
      areaInSqm: serializer.fromJson<bool>(json['areaInSqm']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'category': serializer.toJson<String>(category),
      'mode': serializer.toJson<String>(mode),
      'profileId': serializer.toJson<String>(profileId),
      'rateVersion': serializer.toJson<int>(rateVersion),
      'locality': serializer.toJson<String?>(locality),
      'type': serializer.toJson<String>(type),
      'status': serializer.toJson<String>(status),
      'quotedPrice': serializer.toJson<int>(quotedPrice),
      'budget': serializer.toJson<int?>(budget),
      'carpetSqft': serializer.toJson<double>(carpetSqft),
      'builtupSqft': serializer.toJson<double?>(builtupSqft),
      'readyReckonerValue': serializer.toJson<int?>(readyReckonerValue),
      'areaReferencePsf': serializer.toJson<double?>(areaReferencePsf),
      'ownership': serializer.toJson<String>(ownership),
      'corpus': serializer.toJson<int?>(corpus),
      'maintenanceMonths': serializer.toJson<int?>(maintenanceMonths),
      'maintenanceRatePsf': serializer.toJson<double?>(maintenanceRatePsf),
      'legalFees': serializer.toJson<int?>(legalFees),
      'interiors': serializer.toJson<int?>(interiors),
      'currentYear': serializer.toJson<int>(currentYear),
      'areaInSqm': serializer.toJson<bool>(areaInSqm),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isArchived': serializer.toJson<bool>(isArchived),
    };
  }

  PropertyRow copyWith({
    int? id,
    String? name,
    String? category,
    String? mode,
    String? profileId,
    int? rateVersion,
    Value<String?> locality = const Value.absent(),
    String? type,
    String? status,
    int? quotedPrice,
    Value<int?> budget = const Value.absent(),
    double? carpetSqft,
    Value<double?> builtupSqft = const Value.absent(),
    Value<int?> readyReckonerValue = const Value.absent(),
    Value<double?> areaReferencePsf = const Value.absent(),
    String? ownership,
    Value<int?> corpus = const Value.absent(),
    Value<int?> maintenanceMonths = const Value.absent(),
    Value<double?> maintenanceRatePsf = const Value.absent(),
    Value<int?> legalFees = const Value.absent(),
    Value<int?> interiors = const Value.absent(),
    int? currentYear,
    bool? areaInSqm,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isArchived,
  }) => PropertyRow(
    id: id ?? this.id,
    name: name ?? this.name,
    category: category ?? this.category,
    mode: mode ?? this.mode,
    profileId: profileId ?? this.profileId,
    rateVersion: rateVersion ?? this.rateVersion,
    locality: locality.present ? locality.value : this.locality,
    type: type ?? this.type,
    status: status ?? this.status,
    quotedPrice: quotedPrice ?? this.quotedPrice,
    budget: budget.present ? budget.value : this.budget,
    carpetSqft: carpetSqft ?? this.carpetSqft,
    builtupSqft: builtupSqft.present ? builtupSqft.value : this.builtupSqft,
    readyReckonerValue: readyReckonerValue.present
        ? readyReckonerValue.value
        : this.readyReckonerValue,
    areaReferencePsf: areaReferencePsf.present
        ? areaReferencePsf.value
        : this.areaReferencePsf,
    ownership: ownership ?? this.ownership,
    corpus: corpus.present ? corpus.value : this.corpus,
    maintenanceMonths: maintenanceMonths.present
        ? maintenanceMonths.value
        : this.maintenanceMonths,
    maintenanceRatePsf: maintenanceRatePsf.present
        ? maintenanceRatePsf.value
        : this.maintenanceRatePsf,
    legalFees: legalFees.present ? legalFees.value : this.legalFees,
    interiors: interiors.present ? interiors.value : this.interiors,
    currentYear: currentYear ?? this.currentYear,
    areaInSqm: areaInSqm ?? this.areaInSqm,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isArchived: isArchived ?? this.isArchived,
  );
  PropertyRow copyWithCompanion(PropertiesCompanion data) {
    return PropertyRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      category: data.category.present ? data.category.value : this.category,
      mode: data.mode.present ? data.mode.value : this.mode,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      rateVersion: data.rateVersion.present
          ? data.rateVersion.value
          : this.rateVersion,
      locality: data.locality.present ? data.locality.value : this.locality,
      type: data.type.present ? data.type.value : this.type,
      status: data.status.present ? data.status.value : this.status,
      quotedPrice: data.quotedPrice.present
          ? data.quotedPrice.value
          : this.quotedPrice,
      budget: data.budget.present ? data.budget.value : this.budget,
      carpetSqft: data.carpetSqft.present
          ? data.carpetSqft.value
          : this.carpetSqft,
      builtupSqft: data.builtupSqft.present
          ? data.builtupSqft.value
          : this.builtupSqft,
      readyReckonerValue: data.readyReckonerValue.present
          ? data.readyReckonerValue.value
          : this.readyReckonerValue,
      areaReferencePsf: data.areaReferencePsf.present
          ? data.areaReferencePsf.value
          : this.areaReferencePsf,
      ownership: data.ownership.present ? data.ownership.value : this.ownership,
      corpus: data.corpus.present ? data.corpus.value : this.corpus,
      maintenanceMonths: data.maintenanceMonths.present
          ? data.maintenanceMonths.value
          : this.maintenanceMonths,
      maintenanceRatePsf: data.maintenanceRatePsf.present
          ? data.maintenanceRatePsf.value
          : this.maintenanceRatePsf,
      legalFees: data.legalFees.present ? data.legalFees.value : this.legalFees,
      interiors: data.interiors.present ? data.interiors.value : this.interiors,
      currentYear: data.currentYear.present
          ? data.currentYear.value
          : this.currentYear,
      areaInSqm: data.areaInSqm.present ? data.areaInSqm.value : this.areaInSqm,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isArchived: data.isArchived.present
          ? data.isArchived.value
          : this.isArchived,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PropertyRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('mode: $mode, ')
          ..write('profileId: $profileId, ')
          ..write('rateVersion: $rateVersion, ')
          ..write('locality: $locality, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('quotedPrice: $quotedPrice, ')
          ..write('budget: $budget, ')
          ..write('carpetSqft: $carpetSqft, ')
          ..write('builtupSqft: $builtupSqft, ')
          ..write('readyReckonerValue: $readyReckonerValue, ')
          ..write('areaReferencePsf: $areaReferencePsf, ')
          ..write('ownership: $ownership, ')
          ..write('corpus: $corpus, ')
          ..write('maintenanceMonths: $maintenanceMonths, ')
          ..write('maintenanceRatePsf: $maintenanceRatePsf, ')
          ..write('legalFees: $legalFees, ')
          ..write('interiors: $interiors, ')
          ..write('currentYear: $currentYear, ')
          ..write('areaInSqm: $areaInSqm, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isArchived: $isArchived')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    category,
    mode,
    profileId,
    rateVersion,
    locality,
    type,
    status,
    quotedPrice,
    budget,
    carpetSqft,
    builtupSqft,
    readyReckonerValue,
    areaReferencePsf,
    ownership,
    corpus,
    maintenanceMonths,
    maintenanceRatePsf,
    legalFees,
    interiors,
    currentYear,
    areaInSqm,
    createdAt,
    updatedAt,
    isArchived,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PropertyRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.category == this.category &&
          other.mode == this.mode &&
          other.profileId == this.profileId &&
          other.rateVersion == this.rateVersion &&
          other.locality == this.locality &&
          other.type == this.type &&
          other.status == this.status &&
          other.quotedPrice == this.quotedPrice &&
          other.budget == this.budget &&
          other.carpetSqft == this.carpetSqft &&
          other.builtupSqft == this.builtupSqft &&
          other.readyReckonerValue == this.readyReckonerValue &&
          other.areaReferencePsf == this.areaReferencePsf &&
          other.ownership == this.ownership &&
          other.corpus == this.corpus &&
          other.maintenanceMonths == this.maintenanceMonths &&
          other.maintenanceRatePsf == this.maintenanceRatePsf &&
          other.legalFees == this.legalFees &&
          other.interiors == this.interiors &&
          other.currentYear == this.currentYear &&
          other.areaInSqm == this.areaInSqm &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isArchived == this.isArchived);
}

class PropertiesCompanion extends UpdateCompanion<PropertyRow> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> category;
  final Value<String> mode;
  final Value<String> profileId;
  final Value<int> rateVersion;
  final Value<String?> locality;
  final Value<String> type;
  final Value<String> status;
  final Value<int> quotedPrice;
  final Value<int?> budget;
  final Value<double> carpetSqft;
  final Value<double?> builtupSqft;
  final Value<int?> readyReckonerValue;
  final Value<double?> areaReferencePsf;
  final Value<String> ownership;
  final Value<int?> corpus;
  final Value<int?> maintenanceMonths;
  final Value<double?> maintenanceRatePsf;
  final Value<int?> legalFees;
  final Value<int?> interiors;
  final Value<int> currentYear;
  final Value<bool> areaInSqm;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isArchived;
  const PropertiesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.category = const Value.absent(),
    this.mode = const Value.absent(),
    this.profileId = const Value.absent(),
    this.rateVersion = const Value.absent(),
    this.locality = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
    this.quotedPrice = const Value.absent(),
    this.budget = const Value.absent(),
    this.carpetSqft = const Value.absent(),
    this.builtupSqft = const Value.absent(),
    this.readyReckonerValue = const Value.absent(),
    this.areaReferencePsf = const Value.absent(),
    this.ownership = const Value.absent(),
    this.corpus = const Value.absent(),
    this.maintenanceMonths = const Value.absent(),
    this.maintenanceRatePsf = const Value.absent(),
    this.legalFees = const Value.absent(),
    this.interiors = const Value.absent(),
    this.currentYear = const Value.absent(),
    this.areaInSqm = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isArchived = const Value.absent(),
  });
  PropertiesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.category = const Value.absent(),
    required String mode,
    required String profileId,
    required int rateVersion,
    this.locality = const Value.absent(),
    required String type,
    required String status,
    required int quotedPrice,
    this.budget = const Value.absent(),
    required double carpetSqft,
    this.builtupSqft = const Value.absent(),
    this.readyReckonerValue = const Value.absent(),
    this.areaReferencePsf = const Value.absent(),
    required String ownership,
    this.corpus = const Value.absent(),
    this.maintenanceMonths = const Value.absent(),
    this.maintenanceRatePsf = const Value.absent(),
    this.legalFees = const Value.absent(),
    this.interiors = const Value.absent(),
    required int currentYear,
    this.areaInSqm = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.isArchived = const Value.absent(),
  }) : mode = Value(mode),
       profileId = Value(profileId),
       rateVersion = Value(rateVersion),
       type = Value(type),
       status = Value(status),
       quotedPrice = Value(quotedPrice),
       carpetSqft = Value(carpetSqft),
       ownership = Value(ownership),
       currentYear = Value(currentYear),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<PropertyRow> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? category,
    Expression<String>? mode,
    Expression<String>? profileId,
    Expression<int>? rateVersion,
    Expression<String>? locality,
    Expression<String>? type,
    Expression<String>? status,
    Expression<int>? quotedPrice,
    Expression<int>? budget,
    Expression<double>? carpetSqft,
    Expression<double>? builtupSqft,
    Expression<int>? readyReckonerValue,
    Expression<double>? areaReferencePsf,
    Expression<String>? ownership,
    Expression<int>? corpus,
    Expression<int>? maintenanceMonths,
    Expression<double>? maintenanceRatePsf,
    Expression<int>? legalFees,
    Expression<int>? interiors,
    Expression<int>? currentYear,
    Expression<bool>? areaInSqm,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isArchived,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (category != null) 'category': category,
      if (mode != null) 'mode': mode,
      if (profileId != null) 'profile_id': profileId,
      if (rateVersion != null) 'rate_version': rateVersion,
      if (locality != null) 'locality': locality,
      if (type != null) 'type': type,
      if (status != null) 'status': status,
      if (quotedPrice != null) 'quoted_price': quotedPrice,
      if (budget != null) 'budget': budget,
      if (carpetSqft != null) 'carpet_sqft': carpetSqft,
      if (builtupSqft != null) 'builtup_sqft': builtupSqft,
      if (readyReckonerValue != null)
        'ready_reckoner_value': readyReckonerValue,
      if (areaReferencePsf != null) 'area_reference_psf': areaReferencePsf,
      if (ownership != null) 'ownership': ownership,
      if (corpus != null) 'corpus': corpus,
      if (maintenanceMonths != null) 'maintenance_months': maintenanceMonths,
      if (maintenanceRatePsf != null)
        'maintenance_rate_psf': maintenanceRatePsf,
      if (legalFees != null) 'legal_fees': legalFees,
      if (interiors != null) 'interiors': interiors,
      if (currentYear != null) 'current_year': currentYear,
      if (areaInSqm != null) 'area_in_sqm': areaInSqm,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isArchived != null) 'is_archived': isArchived,
    });
  }

  PropertiesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? category,
    Value<String>? mode,
    Value<String>? profileId,
    Value<int>? rateVersion,
    Value<String?>? locality,
    Value<String>? type,
    Value<String>? status,
    Value<int>? quotedPrice,
    Value<int?>? budget,
    Value<double>? carpetSqft,
    Value<double?>? builtupSqft,
    Value<int?>? readyReckonerValue,
    Value<double?>? areaReferencePsf,
    Value<String>? ownership,
    Value<int?>? corpus,
    Value<int?>? maintenanceMonths,
    Value<double?>? maintenanceRatePsf,
    Value<int?>? legalFees,
    Value<int?>? interiors,
    Value<int>? currentYear,
    Value<bool>? areaInSqm,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isArchived,
  }) {
    return PropertiesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      mode: mode ?? this.mode,
      profileId: profileId ?? this.profileId,
      rateVersion: rateVersion ?? this.rateVersion,
      locality: locality ?? this.locality,
      type: type ?? this.type,
      status: status ?? this.status,
      quotedPrice: quotedPrice ?? this.quotedPrice,
      budget: budget ?? this.budget,
      carpetSqft: carpetSqft ?? this.carpetSqft,
      builtupSqft: builtupSqft ?? this.builtupSqft,
      readyReckonerValue: readyReckonerValue ?? this.readyReckonerValue,
      areaReferencePsf: areaReferencePsf ?? this.areaReferencePsf,
      ownership: ownership ?? this.ownership,
      corpus: corpus ?? this.corpus,
      maintenanceMonths: maintenanceMonths ?? this.maintenanceMonths,
      maintenanceRatePsf: maintenanceRatePsf ?? this.maintenanceRatePsf,
      legalFees: legalFees ?? this.legalFees,
      interiors: interiors ?? this.interiors,
      currentYear: currentYear ?? this.currentYear,
      areaInSqm: areaInSqm ?? this.areaInSqm,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isArchived: isArchived ?? this.isArchived,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (rateVersion.present) {
      map['rate_version'] = Variable<int>(rateVersion.value);
    }
    if (locality.present) {
      map['locality'] = Variable<String>(locality.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (quotedPrice.present) {
      map['quoted_price'] = Variable<int>(quotedPrice.value);
    }
    if (budget.present) {
      map['budget'] = Variable<int>(budget.value);
    }
    if (carpetSqft.present) {
      map['carpet_sqft'] = Variable<double>(carpetSqft.value);
    }
    if (builtupSqft.present) {
      map['builtup_sqft'] = Variable<double>(builtupSqft.value);
    }
    if (readyReckonerValue.present) {
      map['ready_reckoner_value'] = Variable<int>(readyReckonerValue.value);
    }
    if (areaReferencePsf.present) {
      map['area_reference_psf'] = Variable<double>(areaReferencePsf.value);
    }
    if (ownership.present) {
      map['ownership'] = Variable<String>(ownership.value);
    }
    if (corpus.present) {
      map['corpus'] = Variable<int>(corpus.value);
    }
    if (maintenanceMonths.present) {
      map['maintenance_months'] = Variable<int>(maintenanceMonths.value);
    }
    if (maintenanceRatePsf.present) {
      map['maintenance_rate_psf'] = Variable<double>(maintenanceRatePsf.value);
    }
    if (legalFees.present) {
      map['legal_fees'] = Variable<int>(legalFees.value);
    }
    if (interiors.present) {
      map['interiors'] = Variable<int>(interiors.value);
    }
    if (currentYear.present) {
      map['current_year'] = Variable<int>(currentYear.value);
    }
    if (areaInSqm.present) {
      map['area_in_sqm'] = Variable<bool>(areaInSqm.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PropertiesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('mode: $mode, ')
          ..write('profileId: $profileId, ')
          ..write('rateVersion: $rateVersion, ')
          ..write('locality: $locality, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('quotedPrice: $quotedPrice, ')
          ..write('budget: $budget, ')
          ..write('carpetSqft: $carpetSqft, ')
          ..write('builtupSqft: $builtupSqft, ')
          ..write('readyReckonerValue: $readyReckonerValue, ')
          ..write('areaReferencePsf: $areaReferencePsf, ')
          ..write('ownership: $ownership, ')
          ..write('corpus: $corpus, ')
          ..write('maintenanceMonths: $maintenanceMonths, ')
          ..write('maintenanceRatePsf: $maintenanceRatePsf, ')
          ..write('legalFees: $legalFees, ')
          ..write('interiors: $interiors, ')
          ..write('currentYear: $currentYear, ')
          ..write('areaInSqm: $areaInSqm, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isArchived: $isArchived')
          ..write(')'))
        .toString();
  }
}

class $PropertyExtrasTable extends PropertyExtras
    with TableInfo<$PropertyExtrasTable, PropertyExtraRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PropertyExtrasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _positionMeta = const VerificationMeta(
    'position',
  );
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
    'position',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _inAgreementMeta = const VerificationMeta(
    'inAgreement',
  );
  @override
  late final GeneratedColumn<bool> inAgreement = GeneratedColumn<bool>(
    'in_agreement',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("in_agreement" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    propertyId,
    position,
    kind,
    amount,
    inAgreement,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'property_extras';
  @override
  VerificationContext validateIntegrity(
    Insertable<PropertyExtraRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_propertyIdMeta);
    }
    if (data.containsKey('position')) {
      context.handle(
        _positionMeta,
        position.isAcceptableOrUnknown(data['position']!, _positionMeta),
      );
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('in_agreement')) {
      context.handle(
        _inAgreementMeta,
        inAgreement.isAcceptableOrUnknown(
          data['in_agreement']!,
          _inAgreementMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PropertyExtraRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PropertyExtraRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      position: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}position'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      inAgreement: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}in_agreement'],
      )!,
    );
  }

  @override
  $PropertyExtrasTable createAlias(String alias) {
    return $PropertyExtrasTable(attachedDatabase, alias);
  }
}

class PropertyExtraRow extends DataClass
    implements Insertable<PropertyExtraRow> {
  final int id;
  final int propertyId;
  final int position;
  final String kind;
  final int amount;
  final bool inAgreement;
  const PropertyExtraRow({
    required this.id,
    required this.propertyId,
    required this.position,
    required this.kind,
    required this.amount,
    required this.inAgreement,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['property_id'] = Variable<int>(propertyId);
    map['position'] = Variable<int>(position);
    map['kind'] = Variable<String>(kind);
    map['amount'] = Variable<int>(amount);
    map['in_agreement'] = Variable<bool>(inAgreement);
    return map;
  }

  PropertyExtrasCompanion toCompanion(bool nullToAbsent) {
    return PropertyExtrasCompanion(
      id: Value(id),
      propertyId: Value(propertyId),
      position: Value(position),
      kind: Value(kind),
      amount: Value(amount),
      inAgreement: Value(inAgreement),
    );
  }

  factory PropertyExtraRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PropertyExtraRow(
      id: serializer.fromJson<int>(json['id']),
      propertyId: serializer.fromJson<int>(json['propertyId']),
      position: serializer.fromJson<int>(json['position']),
      kind: serializer.fromJson<String>(json['kind']),
      amount: serializer.fromJson<int>(json['amount']),
      inAgreement: serializer.fromJson<bool>(json['inAgreement']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'propertyId': serializer.toJson<int>(propertyId),
      'position': serializer.toJson<int>(position),
      'kind': serializer.toJson<String>(kind),
      'amount': serializer.toJson<int>(amount),
      'inAgreement': serializer.toJson<bool>(inAgreement),
    };
  }

  PropertyExtraRow copyWith({
    int? id,
    int? propertyId,
    int? position,
    String? kind,
    int? amount,
    bool? inAgreement,
  }) => PropertyExtraRow(
    id: id ?? this.id,
    propertyId: propertyId ?? this.propertyId,
    position: position ?? this.position,
    kind: kind ?? this.kind,
    amount: amount ?? this.amount,
    inAgreement: inAgreement ?? this.inAgreement,
  );
  PropertyExtraRow copyWithCompanion(PropertyExtrasCompanion data) {
    return PropertyExtraRow(
      id: data.id.present ? data.id.value : this.id,
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      position: data.position.present ? data.position.value : this.position,
      kind: data.kind.present ? data.kind.value : this.kind,
      amount: data.amount.present ? data.amount.value : this.amount,
      inAgreement: data.inAgreement.present
          ? data.inAgreement.value
          : this.inAgreement,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PropertyExtraRow(')
          ..write('id: $id, ')
          ..write('propertyId: $propertyId, ')
          ..write('position: $position, ')
          ..write('kind: $kind, ')
          ..write('amount: $amount, ')
          ..write('inAgreement: $inAgreement')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, propertyId, position, kind, amount, inAgreement);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PropertyExtraRow &&
          other.id == this.id &&
          other.propertyId == this.propertyId &&
          other.position == this.position &&
          other.kind == this.kind &&
          other.amount == this.amount &&
          other.inAgreement == this.inAgreement);
}

class PropertyExtrasCompanion extends UpdateCompanion<PropertyExtraRow> {
  final Value<int> id;
  final Value<int> propertyId;
  final Value<int> position;
  final Value<String> kind;
  final Value<int> amount;
  final Value<bool> inAgreement;
  const PropertyExtrasCompanion({
    this.id = const Value.absent(),
    this.propertyId = const Value.absent(),
    this.position = const Value.absent(),
    this.kind = const Value.absent(),
    this.amount = const Value.absent(),
    this.inAgreement = const Value.absent(),
  });
  PropertyExtrasCompanion.insert({
    this.id = const Value.absent(),
    required int propertyId,
    required int position,
    required String kind,
    required int amount,
    this.inAgreement = const Value.absent(),
  }) : propertyId = Value(propertyId),
       position = Value(position),
       kind = Value(kind),
       amount = Value(amount);
  static Insertable<PropertyExtraRow> custom({
    Expression<int>? id,
    Expression<int>? propertyId,
    Expression<int>? position,
    Expression<String>? kind,
    Expression<int>? amount,
    Expression<bool>? inAgreement,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (propertyId != null) 'property_id': propertyId,
      if (position != null) 'position': position,
      if (kind != null) 'kind': kind,
      if (amount != null) 'amount': amount,
      if (inAgreement != null) 'in_agreement': inAgreement,
    });
  }

  PropertyExtrasCompanion copyWith({
    Value<int>? id,
    Value<int>? propertyId,
    Value<int>? position,
    Value<String>? kind,
    Value<int>? amount,
    Value<bool>? inAgreement,
  }) {
    return PropertyExtrasCompanion(
      id: id ?? this.id,
      propertyId: propertyId ?? this.propertyId,
      position: position ?? this.position,
      kind: kind ?? this.kind,
      amount: amount ?? this.amount,
      inAgreement: inAgreement ?? this.inAgreement,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (inAgreement.present) {
      map['in_agreement'] = Variable<bool>(inAgreement.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PropertyExtrasCompanion(')
          ..write('id: $id, ')
          ..write('propertyId: $propertyId, ')
          ..write('position: $position, ')
          ..write('kind: $kind, ')
          ..write('amount: $amount, ')
          ..write('inAgreement: $inAgreement')
          ..write(')'))
        .toString();
  }
}

class $ResaleDetailsTable extends ResaleDetails
    with TableInfo<$ResaleDetailsTable, ResaleDetailsRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResaleDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _buildingYearMeta = const VerificationMeta(
    'buildingYear',
  );
  @override
  late final GeneratedColumn<int> buildingYear = GeneratedColumn<int>(
    'building_year',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hasOcMeta = const VerificationMeta('hasOc');
  @override
  late final GeneratedColumn<bool> hasOc = GeneratedColumn<bool>(
    'has_oc',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_oc" IN (0, 1))',
    ),
  );
  static const VerificationMeta _sellerLoanMeta = const VerificationMeta(
    'sellerLoan',
  );
  @override
  late final GeneratedColumn<int> sellerLoan = GeneratedColumn<int>(
    'seller_loan',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _brokeragePctMeta = const VerificationMeta(
    'brokeragePct',
  );
  @override
  late final GeneratedColumn<double> brokeragePct = GeneratedColumn<double>(
    'brokerage_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _transferFeeMeta = const VerificationMeta(
    'transferFee',
  );
  @override
  late final GeneratedColumn<int> transferFee = GeneratedColumn<int>(
    'transfer_fee',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    propertyId,
    buildingYear,
    hasOc,
    sellerLoan,
    brokeragePct,
    transferFee,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resale_details';
  @override
  VerificationContext validateIntegrity(
    Insertable<ResaleDetailsRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    }
    if (data.containsKey('building_year')) {
      context.handle(
        _buildingYearMeta,
        buildingYear.isAcceptableOrUnknown(
          data['building_year']!,
          _buildingYearMeta,
        ),
      );
    }
    if (data.containsKey('has_oc')) {
      context.handle(
        _hasOcMeta,
        hasOc.isAcceptableOrUnknown(data['has_oc']!, _hasOcMeta),
      );
    }
    if (data.containsKey('seller_loan')) {
      context.handle(
        _sellerLoanMeta,
        sellerLoan.isAcceptableOrUnknown(data['seller_loan']!, _sellerLoanMeta),
      );
    }
    if (data.containsKey('brokerage_pct')) {
      context.handle(
        _brokeragePctMeta,
        brokeragePct.isAcceptableOrUnknown(
          data['brokerage_pct']!,
          _brokeragePctMeta,
        ),
      );
    }
    if (data.containsKey('transfer_fee')) {
      context.handle(
        _transferFeeMeta,
        transferFee.isAcceptableOrUnknown(
          data['transfer_fee']!,
          _transferFeeMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {propertyId};
  @override
  ResaleDetailsRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResaleDetailsRow(
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      buildingYear: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}building_year'],
      ),
      hasOc: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_oc'],
      ),
      sellerLoan: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}seller_loan'],
      ),
      brokeragePct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}brokerage_pct'],
      ),
      transferFee: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}transfer_fee'],
      ),
    );
  }

  @override
  $ResaleDetailsTable createAlias(String alias) {
    return $ResaleDetailsTable(attachedDatabase, alias);
  }
}

class ResaleDetailsRow extends DataClass
    implements Insertable<ResaleDetailsRow> {
  final int propertyId;
  final int? buildingYear;
  final bool? hasOc;
  final int? sellerLoan;
  final double? brokeragePct;
  final int? transferFee;
  const ResaleDetailsRow({
    required this.propertyId,
    this.buildingYear,
    this.hasOc,
    this.sellerLoan,
    this.brokeragePct,
    this.transferFee,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['property_id'] = Variable<int>(propertyId);
    if (!nullToAbsent || buildingYear != null) {
      map['building_year'] = Variable<int>(buildingYear);
    }
    if (!nullToAbsent || hasOc != null) {
      map['has_oc'] = Variable<bool>(hasOc);
    }
    if (!nullToAbsent || sellerLoan != null) {
      map['seller_loan'] = Variable<int>(sellerLoan);
    }
    if (!nullToAbsent || brokeragePct != null) {
      map['brokerage_pct'] = Variable<double>(brokeragePct);
    }
    if (!nullToAbsent || transferFee != null) {
      map['transfer_fee'] = Variable<int>(transferFee);
    }
    return map;
  }

  ResaleDetailsCompanion toCompanion(bool nullToAbsent) {
    return ResaleDetailsCompanion(
      propertyId: Value(propertyId),
      buildingYear: buildingYear == null && nullToAbsent
          ? const Value.absent()
          : Value(buildingYear),
      hasOc: hasOc == null && nullToAbsent
          ? const Value.absent()
          : Value(hasOc),
      sellerLoan: sellerLoan == null && nullToAbsent
          ? const Value.absent()
          : Value(sellerLoan),
      brokeragePct: brokeragePct == null && nullToAbsent
          ? const Value.absent()
          : Value(brokeragePct),
      transferFee: transferFee == null && nullToAbsent
          ? const Value.absent()
          : Value(transferFee),
    );
  }

  factory ResaleDetailsRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResaleDetailsRow(
      propertyId: serializer.fromJson<int>(json['propertyId']),
      buildingYear: serializer.fromJson<int?>(json['buildingYear']),
      hasOc: serializer.fromJson<bool?>(json['hasOc']),
      sellerLoan: serializer.fromJson<int?>(json['sellerLoan']),
      brokeragePct: serializer.fromJson<double?>(json['brokeragePct']),
      transferFee: serializer.fromJson<int?>(json['transferFee']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'propertyId': serializer.toJson<int>(propertyId),
      'buildingYear': serializer.toJson<int?>(buildingYear),
      'hasOc': serializer.toJson<bool?>(hasOc),
      'sellerLoan': serializer.toJson<int?>(sellerLoan),
      'brokeragePct': serializer.toJson<double?>(brokeragePct),
      'transferFee': serializer.toJson<int?>(transferFee),
    };
  }

  ResaleDetailsRow copyWith({
    int? propertyId,
    Value<int?> buildingYear = const Value.absent(),
    Value<bool?> hasOc = const Value.absent(),
    Value<int?> sellerLoan = const Value.absent(),
    Value<double?> brokeragePct = const Value.absent(),
    Value<int?> transferFee = const Value.absent(),
  }) => ResaleDetailsRow(
    propertyId: propertyId ?? this.propertyId,
    buildingYear: buildingYear.present ? buildingYear.value : this.buildingYear,
    hasOc: hasOc.present ? hasOc.value : this.hasOc,
    sellerLoan: sellerLoan.present ? sellerLoan.value : this.sellerLoan,
    brokeragePct: brokeragePct.present ? brokeragePct.value : this.brokeragePct,
    transferFee: transferFee.present ? transferFee.value : this.transferFee,
  );
  ResaleDetailsRow copyWithCompanion(ResaleDetailsCompanion data) {
    return ResaleDetailsRow(
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      buildingYear: data.buildingYear.present
          ? data.buildingYear.value
          : this.buildingYear,
      hasOc: data.hasOc.present ? data.hasOc.value : this.hasOc,
      sellerLoan: data.sellerLoan.present
          ? data.sellerLoan.value
          : this.sellerLoan,
      brokeragePct: data.brokeragePct.present
          ? data.brokeragePct.value
          : this.brokeragePct,
      transferFee: data.transferFee.present
          ? data.transferFee.value
          : this.transferFee,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResaleDetailsRow(')
          ..write('propertyId: $propertyId, ')
          ..write('buildingYear: $buildingYear, ')
          ..write('hasOc: $hasOc, ')
          ..write('sellerLoan: $sellerLoan, ')
          ..write('brokeragePct: $brokeragePct, ')
          ..write('transferFee: $transferFee')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    propertyId,
    buildingYear,
    hasOc,
    sellerLoan,
    brokeragePct,
    transferFee,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResaleDetailsRow &&
          other.propertyId == this.propertyId &&
          other.buildingYear == this.buildingYear &&
          other.hasOc == this.hasOc &&
          other.sellerLoan == this.sellerLoan &&
          other.brokeragePct == this.brokeragePct &&
          other.transferFee == this.transferFee);
}

class ResaleDetailsCompanion extends UpdateCompanion<ResaleDetailsRow> {
  final Value<int> propertyId;
  final Value<int?> buildingYear;
  final Value<bool?> hasOc;
  final Value<int?> sellerLoan;
  final Value<double?> brokeragePct;
  final Value<int?> transferFee;
  const ResaleDetailsCompanion({
    this.propertyId = const Value.absent(),
    this.buildingYear = const Value.absent(),
    this.hasOc = const Value.absent(),
    this.sellerLoan = const Value.absent(),
    this.brokeragePct = const Value.absent(),
    this.transferFee = const Value.absent(),
  });
  ResaleDetailsCompanion.insert({
    this.propertyId = const Value.absent(),
    this.buildingYear = const Value.absent(),
    this.hasOc = const Value.absent(),
    this.sellerLoan = const Value.absent(),
    this.brokeragePct = const Value.absent(),
    this.transferFee = const Value.absent(),
  });
  static Insertable<ResaleDetailsRow> custom({
    Expression<int>? propertyId,
    Expression<int>? buildingYear,
    Expression<bool>? hasOc,
    Expression<int>? sellerLoan,
    Expression<double>? brokeragePct,
    Expression<int>? transferFee,
  }) {
    return RawValuesInsertable({
      if (propertyId != null) 'property_id': propertyId,
      if (buildingYear != null) 'building_year': buildingYear,
      if (hasOc != null) 'has_oc': hasOc,
      if (sellerLoan != null) 'seller_loan': sellerLoan,
      if (brokeragePct != null) 'brokerage_pct': brokeragePct,
      if (transferFee != null) 'transfer_fee': transferFee,
    });
  }

  ResaleDetailsCompanion copyWith({
    Value<int>? propertyId,
    Value<int?>? buildingYear,
    Value<bool?>? hasOc,
    Value<int?>? sellerLoan,
    Value<double?>? brokeragePct,
    Value<int?>? transferFee,
  }) {
    return ResaleDetailsCompanion(
      propertyId: propertyId ?? this.propertyId,
      buildingYear: buildingYear ?? this.buildingYear,
      hasOc: hasOc ?? this.hasOc,
      sellerLoan: sellerLoan ?? this.sellerLoan,
      brokeragePct: brokeragePct ?? this.brokeragePct,
      transferFee: transferFee ?? this.transferFee,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (buildingYear.present) {
      map['building_year'] = Variable<int>(buildingYear.value);
    }
    if (hasOc.present) {
      map['has_oc'] = Variable<bool>(hasOc.value);
    }
    if (sellerLoan.present) {
      map['seller_loan'] = Variable<int>(sellerLoan.value);
    }
    if (brokeragePct.present) {
      map['brokerage_pct'] = Variable<double>(brokeragePct.value);
    }
    if (transferFee.present) {
      map['transfer_fee'] = Variable<int>(transferFee.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResaleDetailsCompanion(')
          ..write('propertyId: $propertyId, ')
          ..write('buildingYear: $buildingYear, ')
          ..write('hasOc: $hasOc, ')
          ..write('sellerLoan: $sellerLoan, ')
          ..write('brokeragePct: $brokeragePct, ')
          ..write('transferFee: $transferFee')
          ..write(')'))
        .toString();
  }
}

class $UcDetailsTable extends UcDetails
    with TableInfo<$UcDetailsTable, UcDetailsRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UcDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _reraNumberMeta = const VerificationMeta(
    'reraNumber',
  );
  @override
  late final GeneratedColumn<String> reraNumber = GeneratedColumn<String>(
    'rera_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _monthsToPossessionMeta =
      const VerificationMeta('monthsToPossession');
  @override
  late final GeneratedColumn<int> monthsToPossession = GeneratedColumn<int>(
    'months_to_possession',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _monthlyRentMeta = const VerificationMeta(
    'monthlyRent',
  );
  @override
  late final GeneratedColumn<int> monthlyRent = GeneratedColumn<int>(
    'monthly_rent',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    propertyId,
    reraNumber,
    monthsToPossession,
    monthlyRent,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'uc_details';
  @override
  VerificationContext validateIntegrity(
    Insertable<UcDetailsRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    }
    if (data.containsKey('rera_number')) {
      context.handle(
        _reraNumberMeta,
        reraNumber.isAcceptableOrUnknown(data['rera_number']!, _reraNumberMeta),
      );
    }
    if (data.containsKey('months_to_possession')) {
      context.handle(
        _monthsToPossessionMeta,
        monthsToPossession.isAcceptableOrUnknown(
          data['months_to_possession']!,
          _monthsToPossessionMeta,
        ),
      );
    }
    if (data.containsKey('monthly_rent')) {
      context.handle(
        _monthlyRentMeta,
        monthlyRent.isAcceptableOrUnknown(
          data['monthly_rent']!,
          _monthlyRentMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {propertyId};
  @override
  UcDetailsRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UcDetailsRow(
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      reraNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rera_number'],
      ),
      monthsToPossession: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}months_to_possession'],
      ),
      monthlyRent: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}monthly_rent'],
      ),
    );
  }

  @override
  $UcDetailsTable createAlias(String alias) {
    return $UcDetailsTable(attachedDatabase, alias);
  }
}

class UcDetailsRow extends DataClass implements Insertable<UcDetailsRow> {
  final int propertyId;
  final String? reraNumber;
  final int? monthsToPossession;
  final int? monthlyRent;
  const UcDetailsRow({
    required this.propertyId,
    this.reraNumber,
    this.monthsToPossession,
    this.monthlyRent,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['property_id'] = Variable<int>(propertyId);
    if (!nullToAbsent || reraNumber != null) {
      map['rera_number'] = Variable<String>(reraNumber);
    }
    if (!nullToAbsent || monthsToPossession != null) {
      map['months_to_possession'] = Variable<int>(monthsToPossession);
    }
    if (!nullToAbsent || monthlyRent != null) {
      map['monthly_rent'] = Variable<int>(monthlyRent);
    }
    return map;
  }

  UcDetailsCompanion toCompanion(bool nullToAbsent) {
    return UcDetailsCompanion(
      propertyId: Value(propertyId),
      reraNumber: reraNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(reraNumber),
      monthsToPossession: monthsToPossession == null && nullToAbsent
          ? const Value.absent()
          : Value(monthsToPossession),
      monthlyRent: monthlyRent == null && nullToAbsent
          ? const Value.absent()
          : Value(monthlyRent),
    );
  }

  factory UcDetailsRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UcDetailsRow(
      propertyId: serializer.fromJson<int>(json['propertyId']),
      reraNumber: serializer.fromJson<String?>(json['reraNumber']),
      monthsToPossession: serializer.fromJson<int?>(json['monthsToPossession']),
      monthlyRent: serializer.fromJson<int?>(json['monthlyRent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'propertyId': serializer.toJson<int>(propertyId),
      'reraNumber': serializer.toJson<String?>(reraNumber),
      'monthsToPossession': serializer.toJson<int?>(monthsToPossession),
      'monthlyRent': serializer.toJson<int?>(monthlyRent),
    };
  }

  UcDetailsRow copyWith({
    int? propertyId,
    Value<String?> reraNumber = const Value.absent(),
    Value<int?> monthsToPossession = const Value.absent(),
    Value<int?> monthlyRent = const Value.absent(),
  }) => UcDetailsRow(
    propertyId: propertyId ?? this.propertyId,
    reraNumber: reraNumber.present ? reraNumber.value : this.reraNumber,
    monthsToPossession: monthsToPossession.present
        ? monthsToPossession.value
        : this.monthsToPossession,
    monthlyRent: monthlyRent.present ? monthlyRent.value : this.monthlyRent,
  );
  UcDetailsRow copyWithCompanion(UcDetailsCompanion data) {
    return UcDetailsRow(
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      reraNumber: data.reraNumber.present
          ? data.reraNumber.value
          : this.reraNumber,
      monthsToPossession: data.monthsToPossession.present
          ? data.monthsToPossession.value
          : this.monthsToPossession,
      monthlyRent: data.monthlyRent.present
          ? data.monthlyRent.value
          : this.monthlyRent,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UcDetailsRow(')
          ..write('propertyId: $propertyId, ')
          ..write('reraNumber: $reraNumber, ')
          ..write('monthsToPossession: $monthsToPossession, ')
          ..write('monthlyRent: $monthlyRent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(propertyId, reraNumber, monthsToPossession, monthlyRent);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UcDetailsRow &&
          other.propertyId == this.propertyId &&
          other.reraNumber == this.reraNumber &&
          other.monthsToPossession == this.monthsToPossession &&
          other.monthlyRent == this.monthlyRent);
}

class UcDetailsCompanion extends UpdateCompanion<UcDetailsRow> {
  final Value<int> propertyId;
  final Value<String?> reraNumber;
  final Value<int?> monthsToPossession;
  final Value<int?> monthlyRent;
  const UcDetailsCompanion({
    this.propertyId = const Value.absent(),
    this.reraNumber = const Value.absent(),
    this.monthsToPossession = const Value.absent(),
    this.monthlyRent = const Value.absent(),
  });
  UcDetailsCompanion.insert({
    this.propertyId = const Value.absent(),
    this.reraNumber = const Value.absent(),
    this.monthsToPossession = const Value.absent(),
    this.monthlyRent = const Value.absent(),
  });
  static Insertable<UcDetailsRow> custom({
    Expression<int>? propertyId,
    Expression<String>? reraNumber,
    Expression<int>? monthsToPossession,
    Expression<int>? monthlyRent,
  }) {
    return RawValuesInsertable({
      if (propertyId != null) 'property_id': propertyId,
      if (reraNumber != null) 'rera_number': reraNumber,
      if (monthsToPossession != null)
        'months_to_possession': monthsToPossession,
      if (monthlyRent != null) 'monthly_rent': monthlyRent,
    });
  }

  UcDetailsCompanion copyWith({
    Value<int>? propertyId,
    Value<String?>? reraNumber,
    Value<int?>? monthsToPossession,
    Value<int?>? monthlyRent,
  }) {
    return UcDetailsCompanion(
      propertyId: propertyId ?? this.propertyId,
      reraNumber: reraNumber ?? this.reraNumber,
      monthsToPossession: monthsToPossession ?? this.monthsToPossession,
      monthlyRent: monthlyRent ?? this.monthlyRent,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (reraNumber.present) {
      map['rera_number'] = Variable<String>(reraNumber.value);
    }
    if (monthsToPossession.present) {
      map['months_to_possession'] = Variable<int>(monthsToPossession.value);
    }
    if (monthlyRent.present) {
      map['monthly_rent'] = Variable<int>(monthlyRent.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UcDetailsCompanion(')
          ..write('propertyId: $propertyId, ')
          ..write('reraNumber: $reraNumber, ')
          ..write('monthsToPossession: $monthsToPossession, ')
          ..write('monthlyRent: $monthlyRent')
          ..write(')'))
        .toString();
  }
}

class $BuyerFinanceTable extends BuyerFinance
    with TableInfo<$BuyerFinanceTable, BuyerFinanceRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BuyerFinanceTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _usingLoanMeta = const VerificationMeta(
    'usingLoan',
  );
  @override
  late final GeneratedColumn<bool> usingLoan = GeneratedColumn<bool>(
    'using_loan',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("using_loan" IN (0, 1))',
    ),
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _employmentMeta = const VerificationMeta(
    'employment',
  );
  @override
  late final GeneratedColumn<String> employment = GeneratedColumn<String>(
    'employment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _netIncomeMeta = const VerificationMeta(
    'netIncome',
  );
  @override
  late final GeneratedColumn<int> netIncome = GeneratedColumn<int>(
    'net_income',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _existingEmiMeta = const VerificationMeta(
    'existingEmi',
  );
  @override
  late final GeneratedColumn<int> existingEmi = GeneratedColumn<int>(
    'existing_emi',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratePctMeta = const VerificationMeta(
    'ratePct',
  );
  @override
  late final GeneratedColumn<double> ratePct = GeneratedColumn<double>(
    'rate_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tenureYearsMeta = const VerificationMeta(
    'tenureYears',
  );
  @override
  late final GeneratedColumn<int> tenureYears = GeneratedColumn<int>(
    'tenure_years',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ownFundsMeta = const VerificationMeta(
    'ownFunds',
  );
  @override
  late final GeneratedColumn<int> ownFunds = GeneratedColumn<int>(
    'own_funds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    propertyId,
    usingLoan,
    age,
    employment,
    netIncome,
    existingEmi,
    ratePct,
    tenureYears,
    ownFunds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'buyer_finance';
  @override
  VerificationContext validateIntegrity(
    Insertable<BuyerFinanceRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    }
    if (data.containsKey('using_loan')) {
      context.handle(
        _usingLoanMeta,
        usingLoan.isAcceptableOrUnknown(data['using_loan']!, _usingLoanMeta),
      );
    } else if (isInserting) {
      context.missing(_usingLoanMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('employment')) {
      context.handle(
        _employmentMeta,
        employment.isAcceptableOrUnknown(data['employment']!, _employmentMeta),
      );
    } else if (isInserting) {
      context.missing(_employmentMeta);
    }
    if (data.containsKey('net_income')) {
      context.handle(
        _netIncomeMeta,
        netIncome.isAcceptableOrUnknown(data['net_income']!, _netIncomeMeta),
      );
    } else if (isInserting) {
      context.missing(_netIncomeMeta);
    }
    if (data.containsKey('existing_emi')) {
      context.handle(
        _existingEmiMeta,
        existingEmi.isAcceptableOrUnknown(
          data['existing_emi']!,
          _existingEmiMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_existingEmiMeta);
    }
    if (data.containsKey('rate_pct')) {
      context.handle(
        _ratePctMeta,
        ratePct.isAcceptableOrUnknown(data['rate_pct']!, _ratePctMeta),
      );
    }
    if (data.containsKey('tenure_years')) {
      context.handle(
        _tenureYearsMeta,
        tenureYears.isAcceptableOrUnknown(
          data['tenure_years']!,
          _tenureYearsMeta,
        ),
      );
    }
    if (data.containsKey('own_funds')) {
      context.handle(
        _ownFundsMeta,
        ownFunds.isAcceptableOrUnknown(data['own_funds']!, _ownFundsMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {propertyId};
  @override
  BuyerFinanceRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BuyerFinanceRow(
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      usingLoan: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}using_loan'],
      )!,
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      )!,
      employment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employment'],
      )!,
      netIncome: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}net_income'],
      )!,
      existingEmi: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}existing_emi'],
      )!,
      ratePct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rate_pct'],
      ),
      tenureYears: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tenure_years'],
      ),
      ownFunds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}own_funds'],
      ),
    );
  }

  @override
  $BuyerFinanceTable createAlias(String alias) {
    return $BuyerFinanceTable(attachedDatabase, alias);
  }
}

class BuyerFinanceRow extends DataClass implements Insertable<BuyerFinanceRow> {
  final int propertyId;
  final bool usingLoan;
  final int age;
  final String employment;
  final int netIncome;
  final int existingEmi;
  final double? ratePct;
  final int? tenureYears;
  final int? ownFunds;
  const BuyerFinanceRow({
    required this.propertyId,
    required this.usingLoan,
    required this.age,
    required this.employment,
    required this.netIncome,
    required this.existingEmi,
    this.ratePct,
    this.tenureYears,
    this.ownFunds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['property_id'] = Variable<int>(propertyId);
    map['using_loan'] = Variable<bool>(usingLoan);
    map['age'] = Variable<int>(age);
    map['employment'] = Variable<String>(employment);
    map['net_income'] = Variable<int>(netIncome);
    map['existing_emi'] = Variable<int>(existingEmi);
    if (!nullToAbsent || ratePct != null) {
      map['rate_pct'] = Variable<double>(ratePct);
    }
    if (!nullToAbsent || tenureYears != null) {
      map['tenure_years'] = Variable<int>(tenureYears);
    }
    if (!nullToAbsent || ownFunds != null) {
      map['own_funds'] = Variable<int>(ownFunds);
    }
    return map;
  }

  BuyerFinanceCompanion toCompanion(bool nullToAbsent) {
    return BuyerFinanceCompanion(
      propertyId: Value(propertyId),
      usingLoan: Value(usingLoan),
      age: Value(age),
      employment: Value(employment),
      netIncome: Value(netIncome),
      existingEmi: Value(existingEmi),
      ratePct: ratePct == null && nullToAbsent
          ? const Value.absent()
          : Value(ratePct),
      tenureYears: tenureYears == null && nullToAbsent
          ? const Value.absent()
          : Value(tenureYears),
      ownFunds: ownFunds == null && nullToAbsent
          ? const Value.absent()
          : Value(ownFunds),
    );
  }

  factory BuyerFinanceRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BuyerFinanceRow(
      propertyId: serializer.fromJson<int>(json['propertyId']),
      usingLoan: serializer.fromJson<bool>(json['usingLoan']),
      age: serializer.fromJson<int>(json['age']),
      employment: serializer.fromJson<String>(json['employment']),
      netIncome: serializer.fromJson<int>(json['netIncome']),
      existingEmi: serializer.fromJson<int>(json['existingEmi']),
      ratePct: serializer.fromJson<double?>(json['ratePct']),
      tenureYears: serializer.fromJson<int?>(json['tenureYears']),
      ownFunds: serializer.fromJson<int?>(json['ownFunds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'propertyId': serializer.toJson<int>(propertyId),
      'usingLoan': serializer.toJson<bool>(usingLoan),
      'age': serializer.toJson<int>(age),
      'employment': serializer.toJson<String>(employment),
      'netIncome': serializer.toJson<int>(netIncome),
      'existingEmi': serializer.toJson<int>(existingEmi),
      'ratePct': serializer.toJson<double?>(ratePct),
      'tenureYears': serializer.toJson<int?>(tenureYears),
      'ownFunds': serializer.toJson<int?>(ownFunds),
    };
  }

  BuyerFinanceRow copyWith({
    int? propertyId,
    bool? usingLoan,
    int? age,
    String? employment,
    int? netIncome,
    int? existingEmi,
    Value<double?> ratePct = const Value.absent(),
    Value<int?> tenureYears = const Value.absent(),
    Value<int?> ownFunds = const Value.absent(),
  }) => BuyerFinanceRow(
    propertyId: propertyId ?? this.propertyId,
    usingLoan: usingLoan ?? this.usingLoan,
    age: age ?? this.age,
    employment: employment ?? this.employment,
    netIncome: netIncome ?? this.netIncome,
    existingEmi: existingEmi ?? this.existingEmi,
    ratePct: ratePct.present ? ratePct.value : this.ratePct,
    tenureYears: tenureYears.present ? tenureYears.value : this.tenureYears,
    ownFunds: ownFunds.present ? ownFunds.value : this.ownFunds,
  );
  BuyerFinanceRow copyWithCompanion(BuyerFinanceCompanion data) {
    return BuyerFinanceRow(
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      usingLoan: data.usingLoan.present ? data.usingLoan.value : this.usingLoan,
      age: data.age.present ? data.age.value : this.age,
      employment: data.employment.present
          ? data.employment.value
          : this.employment,
      netIncome: data.netIncome.present ? data.netIncome.value : this.netIncome,
      existingEmi: data.existingEmi.present
          ? data.existingEmi.value
          : this.existingEmi,
      ratePct: data.ratePct.present ? data.ratePct.value : this.ratePct,
      tenureYears: data.tenureYears.present
          ? data.tenureYears.value
          : this.tenureYears,
      ownFunds: data.ownFunds.present ? data.ownFunds.value : this.ownFunds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BuyerFinanceRow(')
          ..write('propertyId: $propertyId, ')
          ..write('usingLoan: $usingLoan, ')
          ..write('age: $age, ')
          ..write('employment: $employment, ')
          ..write('netIncome: $netIncome, ')
          ..write('existingEmi: $existingEmi, ')
          ..write('ratePct: $ratePct, ')
          ..write('tenureYears: $tenureYears, ')
          ..write('ownFunds: $ownFunds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    propertyId,
    usingLoan,
    age,
    employment,
    netIncome,
    existingEmi,
    ratePct,
    tenureYears,
    ownFunds,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BuyerFinanceRow &&
          other.propertyId == this.propertyId &&
          other.usingLoan == this.usingLoan &&
          other.age == this.age &&
          other.employment == this.employment &&
          other.netIncome == this.netIncome &&
          other.existingEmi == this.existingEmi &&
          other.ratePct == this.ratePct &&
          other.tenureYears == this.tenureYears &&
          other.ownFunds == this.ownFunds);
}

class BuyerFinanceCompanion extends UpdateCompanion<BuyerFinanceRow> {
  final Value<int> propertyId;
  final Value<bool> usingLoan;
  final Value<int> age;
  final Value<String> employment;
  final Value<int> netIncome;
  final Value<int> existingEmi;
  final Value<double?> ratePct;
  final Value<int?> tenureYears;
  final Value<int?> ownFunds;
  const BuyerFinanceCompanion({
    this.propertyId = const Value.absent(),
    this.usingLoan = const Value.absent(),
    this.age = const Value.absent(),
    this.employment = const Value.absent(),
    this.netIncome = const Value.absent(),
    this.existingEmi = const Value.absent(),
    this.ratePct = const Value.absent(),
    this.tenureYears = const Value.absent(),
    this.ownFunds = const Value.absent(),
  });
  BuyerFinanceCompanion.insert({
    this.propertyId = const Value.absent(),
    required bool usingLoan,
    required int age,
    required String employment,
    required int netIncome,
    required int existingEmi,
    this.ratePct = const Value.absent(),
    this.tenureYears = const Value.absent(),
    this.ownFunds = const Value.absent(),
  }) : usingLoan = Value(usingLoan),
       age = Value(age),
       employment = Value(employment),
       netIncome = Value(netIncome),
       existingEmi = Value(existingEmi);
  static Insertable<BuyerFinanceRow> custom({
    Expression<int>? propertyId,
    Expression<bool>? usingLoan,
    Expression<int>? age,
    Expression<String>? employment,
    Expression<int>? netIncome,
    Expression<int>? existingEmi,
    Expression<double>? ratePct,
    Expression<int>? tenureYears,
    Expression<int>? ownFunds,
  }) {
    return RawValuesInsertable({
      if (propertyId != null) 'property_id': propertyId,
      if (usingLoan != null) 'using_loan': usingLoan,
      if (age != null) 'age': age,
      if (employment != null) 'employment': employment,
      if (netIncome != null) 'net_income': netIncome,
      if (existingEmi != null) 'existing_emi': existingEmi,
      if (ratePct != null) 'rate_pct': ratePct,
      if (tenureYears != null) 'tenure_years': tenureYears,
      if (ownFunds != null) 'own_funds': ownFunds,
    });
  }

  BuyerFinanceCompanion copyWith({
    Value<int>? propertyId,
    Value<bool>? usingLoan,
    Value<int>? age,
    Value<String>? employment,
    Value<int>? netIncome,
    Value<int>? existingEmi,
    Value<double?>? ratePct,
    Value<int?>? tenureYears,
    Value<int?>? ownFunds,
  }) {
    return BuyerFinanceCompanion(
      propertyId: propertyId ?? this.propertyId,
      usingLoan: usingLoan ?? this.usingLoan,
      age: age ?? this.age,
      employment: employment ?? this.employment,
      netIncome: netIncome ?? this.netIncome,
      existingEmi: existingEmi ?? this.existingEmi,
      ratePct: ratePct ?? this.ratePct,
      tenureYears: tenureYears ?? this.tenureYears,
      ownFunds: ownFunds ?? this.ownFunds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (usingLoan.present) {
      map['using_loan'] = Variable<bool>(usingLoan.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (employment.present) {
      map['employment'] = Variable<String>(employment.value);
    }
    if (netIncome.present) {
      map['net_income'] = Variable<int>(netIncome.value);
    }
    if (existingEmi.present) {
      map['existing_emi'] = Variable<int>(existingEmi.value);
    }
    if (ratePct.present) {
      map['rate_pct'] = Variable<double>(ratePct.value);
    }
    if (tenureYears.present) {
      map['tenure_years'] = Variable<int>(tenureYears.value);
    }
    if (ownFunds.present) {
      map['own_funds'] = Variable<int>(ownFunds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BuyerFinanceCompanion(')
          ..write('propertyId: $propertyId, ')
          ..write('usingLoan: $usingLoan, ')
          ..write('age: $age, ')
          ..write('employment: $employment, ')
          ..write('netIncome: $netIncome, ')
          ..write('existingEmi: $existingEmi, ')
          ..write('ratePct: $ratePct, ')
          ..write('tenureYears: $tenureYears, ')
          ..write('ownFunds: $ownFunds')
          ..write(')'))
        .toString();
  }
}

class $ChecklistItemsTable extends ChecklistItems
    with TableInfo<$ChecklistItemsTable, ChecklistItemRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChecklistItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
    'done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _doneAtMeta = const VerificationMeta('doneAt');
  @override
  late final GeneratedColumn<DateTime> doneAt = GeneratedColumn<DateTime>(
    'done_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    propertyId,
    itemId,
    source,
    done,
    note,
    doneAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'checklist_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChecklistItemRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_propertyIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('done')) {
      context.handle(
        _doneMeta,
        done.isAcceptableOrUnknown(data['done']!, _doneMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('done_at')) {
      context.handle(
        _doneAtMeta,
        doneAt.isAcceptableOrUnknown(data['done_at']!, _doneAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {propertyId, itemId, source},
  ];
  @override
  ChecklistItemRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChecklistItemRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      )!,
      done: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}done'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      doneAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}done_at'],
      ),
    );
  }

  @override
  $ChecklistItemsTable createAlias(String alias) {
    return $ChecklistItemsTable(attachedDatabase, alias);
  }
}

class ChecklistItemRow extends DataClass
    implements Insertable<ChecklistItemRow> {
  final int id;
  final int propertyId;
  final String itemId;

  /// `step` or `safety`.
  final String source;
  final bool done;
  final String? note;
  final DateTime? doneAt;
  const ChecklistItemRow({
    required this.id,
    required this.propertyId,
    required this.itemId,
    required this.source,
    required this.done,
    this.note,
    this.doneAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['property_id'] = Variable<int>(propertyId);
    map['item_id'] = Variable<String>(itemId);
    map['source'] = Variable<String>(source);
    map['done'] = Variable<bool>(done);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || doneAt != null) {
      map['done_at'] = Variable<DateTime>(doneAt);
    }
    return map;
  }

  ChecklistItemsCompanion toCompanion(bool nullToAbsent) {
    return ChecklistItemsCompanion(
      id: Value(id),
      propertyId: Value(propertyId),
      itemId: Value(itemId),
      source: Value(source),
      done: Value(done),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      doneAt: doneAt == null && nullToAbsent
          ? const Value.absent()
          : Value(doneAt),
    );
  }

  factory ChecklistItemRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChecklistItemRow(
      id: serializer.fromJson<int>(json['id']),
      propertyId: serializer.fromJson<int>(json['propertyId']),
      itemId: serializer.fromJson<String>(json['itemId']),
      source: serializer.fromJson<String>(json['source']),
      done: serializer.fromJson<bool>(json['done']),
      note: serializer.fromJson<String?>(json['note']),
      doneAt: serializer.fromJson<DateTime?>(json['doneAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'propertyId': serializer.toJson<int>(propertyId),
      'itemId': serializer.toJson<String>(itemId),
      'source': serializer.toJson<String>(source),
      'done': serializer.toJson<bool>(done),
      'note': serializer.toJson<String?>(note),
      'doneAt': serializer.toJson<DateTime?>(doneAt),
    };
  }

  ChecklistItemRow copyWith({
    int? id,
    int? propertyId,
    String? itemId,
    String? source,
    bool? done,
    Value<String?> note = const Value.absent(),
    Value<DateTime?> doneAt = const Value.absent(),
  }) => ChecklistItemRow(
    id: id ?? this.id,
    propertyId: propertyId ?? this.propertyId,
    itemId: itemId ?? this.itemId,
    source: source ?? this.source,
    done: done ?? this.done,
    note: note.present ? note.value : this.note,
    doneAt: doneAt.present ? doneAt.value : this.doneAt,
  );
  ChecklistItemRow copyWithCompanion(ChecklistItemsCompanion data) {
    return ChecklistItemRow(
      id: data.id.present ? data.id.value : this.id,
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      source: data.source.present ? data.source.value : this.source,
      done: data.done.present ? data.done.value : this.done,
      note: data.note.present ? data.note.value : this.note,
      doneAt: data.doneAt.present ? data.doneAt.value : this.doneAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistItemRow(')
          ..write('id: $id, ')
          ..write('propertyId: $propertyId, ')
          ..write('itemId: $itemId, ')
          ..write('source: $source, ')
          ..write('done: $done, ')
          ..write('note: $note, ')
          ..write('doneAt: $doneAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, propertyId, itemId, source, done, note, doneAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChecklistItemRow &&
          other.id == this.id &&
          other.propertyId == this.propertyId &&
          other.itemId == this.itemId &&
          other.source == this.source &&
          other.done == this.done &&
          other.note == this.note &&
          other.doneAt == this.doneAt);
}

class ChecklistItemsCompanion extends UpdateCompanion<ChecklistItemRow> {
  final Value<int> id;
  final Value<int> propertyId;
  final Value<String> itemId;
  final Value<String> source;
  final Value<bool> done;
  final Value<String?> note;
  final Value<DateTime?> doneAt;
  const ChecklistItemsCompanion({
    this.id = const Value.absent(),
    this.propertyId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.source = const Value.absent(),
    this.done = const Value.absent(),
    this.note = const Value.absent(),
    this.doneAt = const Value.absent(),
  });
  ChecklistItemsCompanion.insert({
    this.id = const Value.absent(),
    required int propertyId,
    required String itemId,
    required String source,
    this.done = const Value.absent(),
    this.note = const Value.absent(),
    this.doneAt = const Value.absent(),
  }) : propertyId = Value(propertyId),
       itemId = Value(itemId),
       source = Value(source);
  static Insertable<ChecklistItemRow> custom({
    Expression<int>? id,
    Expression<int>? propertyId,
    Expression<String>? itemId,
    Expression<String>? source,
    Expression<bool>? done,
    Expression<String>? note,
    Expression<DateTime>? doneAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (propertyId != null) 'property_id': propertyId,
      if (itemId != null) 'item_id': itemId,
      if (source != null) 'source': source,
      if (done != null) 'done': done,
      if (note != null) 'note': note,
      if (doneAt != null) 'done_at': doneAt,
    });
  }

  ChecklistItemsCompanion copyWith({
    Value<int>? id,
    Value<int>? propertyId,
    Value<String>? itemId,
    Value<String>? source,
    Value<bool>? done,
    Value<String?>? note,
    Value<DateTime?>? doneAt,
  }) {
    return ChecklistItemsCompanion(
      id: id ?? this.id,
      propertyId: propertyId ?? this.propertyId,
      itemId: itemId ?? this.itemId,
      source: source ?? this.source,
      done: done ?? this.done,
      note: note ?? this.note,
      doneAt: doneAt ?? this.doneAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (doneAt.present) {
      map['done_at'] = Variable<DateTime>(doneAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistItemsCompanion(')
          ..write('id: $id, ')
          ..write('propertyId: $propertyId, ')
          ..write('itemId: $itemId, ')
          ..write('source: $source, ')
          ..write('done: $done, ')
          ..write('note: $note, ')
          ..write('doneAt: $doneAt')
          ..write(')'))
        .toString();
  }
}

class $RateProfilesTable extends RateProfiles
    with TableInfo<$RateProfilesTable, RateProfileRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RateProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _asOfMeta = const VerificationMeta('asOf');
  @override
  late final GeneratedColumn<String> asOf = GeneratedColumn<String>(
    'as_of',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jsonMeta = const VerificationMeta('json');
  @override
  late final GeneratedColumn<String> json = GeneratedColumn<String>(
    'json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isBundledMeta = const VerificationMeta(
    'isBundled',
  );
  @override
  late final GeneratedColumn<bool> isBundled = GeneratedColumn<bool>(
    'is_bundled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_bundled" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    version,
    asOf,
    json,
    isBundled,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rate_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<RateProfileRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('as_of')) {
      context.handle(
        _asOfMeta,
        asOf.isAcceptableOrUnknown(data['as_of']!, _asOfMeta),
      );
    } else if (isInserting) {
      context.missing(_asOfMeta);
    }
    if (data.containsKey('json')) {
      context.handle(
        _jsonMeta,
        json.isAcceptableOrUnknown(data['json']!, _jsonMeta),
      );
    } else if (isInserting) {
      context.missing(_jsonMeta);
    }
    if (data.containsKey('is_bundled')) {
      context.handle(
        _isBundledMeta,
        isBundled.isAcceptableOrUnknown(data['is_bundled']!, _isBundledMeta),
      );
    } else if (isInserting) {
      context.missing(_isBundledMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, version};
  @override
  RateProfileRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RateProfileRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version'],
      )!,
      asOf: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}as_of'],
      )!,
      json: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}json'],
      )!,
      isBundled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_bundled'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RateProfilesTable createAlias(String alias) {
    return $RateProfilesTable(attachedDatabase, alias);
  }
}

class RateProfileRow extends DataClass implements Insertable<RateProfileRow> {
  final String id;
  final int version;
  final String asOf;
  final String json;
  final bool isBundled;
  final DateTime createdAt;
  const RateProfileRow({
    required this.id,
    required this.version,
    required this.asOf,
    required this.json,
    required this.isBundled,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['version'] = Variable<int>(version);
    map['as_of'] = Variable<String>(asOf);
    map['json'] = Variable<String>(json);
    map['is_bundled'] = Variable<bool>(isBundled);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RateProfilesCompanion toCompanion(bool nullToAbsent) {
    return RateProfilesCompanion(
      id: Value(id),
      version: Value(version),
      asOf: Value(asOf),
      json: Value(json),
      isBundled: Value(isBundled),
      createdAt: Value(createdAt),
    );
  }

  factory RateProfileRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RateProfileRow(
      id: serializer.fromJson<String>(json['id']),
      version: serializer.fromJson<int>(json['version']),
      asOf: serializer.fromJson<String>(json['asOf']),
      json: serializer.fromJson<String>(json['json']),
      isBundled: serializer.fromJson<bool>(json['isBundled']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'version': serializer.toJson<int>(version),
      'asOf': serializer.toJson<String>(asOf),
      'json': serializer.toJson<String>(json),
      'isBundled': serializer.toJson<bool>(isBundled),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RateProfileRow copyWith({
    String? id,
    int? version,
    String? asOf,
    String? json,
    bool? isBundled,
    DateTime? createdAt,
  }) => RateProfileRow(
    id: id ?? this.id,
    version: version ?? this.version,
    asOf: asOf ?? this.asOf,
    json: json ?? this.json,
    isBundled: isBundled ?? this.isBundled,
    createdAt: createdAt ?? this.createdAt,
  );
  RateProfileRow copyWithCompanion(RateProfilesCompanion data) {
    return RateProfileRow(
      id: data.id.present ? data.id.value : this.id,
      version: data.version.present ? data.version.value : this.version,
      asOf: data.asOf.present ? data.asOf.value : this.asOf,
      json: data.json.present ? data.json.value : this.json,
      isBundled: data.isBundled.present ? data.isBundled.value : this.isBundled,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RateProfileRow(')
          ..write('id: $id, ')
          ..write('version: $version, ')
          ..write('asOf: $asOf, ')
          ..write('json: $json, ')
          ..write('isBundled: $isBundled, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, version, asOf, json, isBundled, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RateProfileRow &&
          other.id == this.id &&
          other.version == this.version &&
          other.asOf == this.asOf &&
          other.json == this.json &&
          other.isBundled == this.isBundled &&
          other.createdAt == this.createdAt);
}

class RateProfilesCompanion extends UpdateCompanion<RateProfileRow> {
  final Value<String> id;
  final Value<int> version;
  final Value<String> asOf;
  final Value<String> json;
  final Value<bool> isBundled;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const RateProfilesCompanion({
    this.id = const Value.absent(),
    this.version = const Value.absent(),
    this.asOf = const Value.absent(),
    this.json = const Value.absent(),
    this.isBundled = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RateProfilesCompanion.insert({
    required String id,
    required int version,
    required String asOf,
    required String json,
    required bool isBundled,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       version = Value(version),
       asOf = Value(asOf),
       json = Value(json),
       isBundled = Value(isBundled),
       createdAt = Value(createdAt);
  static Insertable<RateProfileRow> custom({
    Expression<String>? id,
    Expression<int>? version,
    Expression<String>? asOf,
    Expression<String>? json,
    Expression<bool>? isBundled,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (version != null) 'version': version,
      if (asOf != null) 'as_of': asOf,
      if (json != null) 'json': json,
      if (isBundled != null) 'is_bundled': isBundled,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RateProfilesCompanion copyWith({
    Value<String>? id,
    Value<int>? version,
    Value<String>? asOf,
    Value<String>? json,
    Value<bool>? isBundled,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return RateProfilesCompanion(
      id: id ?? this.id,
      version: version ?? this.version,
      asOf: asOf ?? this.asOf,
      json: json ?? this.json,
      isBundled: isBundled ?? this.isBundled,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (asOf.present) {
      map['as_of'] = Variable<String>(asOf.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(json.value);
    }
    if (isBundled.present) {
      map['is_bundled'] = Variable<bool>(isBundled.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RateProfilesCompanion(')
          ..write('id: $id, ')
          ..write('version: $version, ')
          ..write('asOf: $asOf, ')
          ..write('json: $json, ')
          ..write('isBundled: $isBundled, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RiskDataTable extends RiskData
    with TableInfo<$RiskDataTable, RiskDataRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RiskDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _asOfMeta = const VerificationMeta('asOf');
  @override
  late final GeneratedColumn<String> asOf = GeneratedColumn<String>(
    'as_of',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jsonMeta = const VerificationMeta('json');
  @override
  late final GeneratedColumn<String> json = GeneratedColumn<String>(
    'json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isBundledMeta = const VerificationMeta(
    'isBundled',
  );
  @override
  late final GeneratedColumn<bool> isBundled = GeneratedColumn<bool>(
    'is_bundled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_bundled" IN (0, 1))',
    ),
  );
  static const VerificationMeta _importedAtMeta = const VerificationMeta(
    'importedAt',
  );
  @override
  late final GeneratedColumn<DateTime> importedAt = GeneratedColumn<DateTime>(
    'imported_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    kind,
    version,
    asOf,
    json,
    isBundled,
    importedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'risk_data';
  @override
  VerificationContext validateIntegrity(
    Insertable<RiskDataRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('as_of')) {
      context.handle(
        _asOfMeta,
        asOf.isAcceptableOrUnknown(data['as_of']!, _asOfMeta),
      );
    } else if (isInserting) {
      context.missing(_asOfMeta);
    }
    if (data.containsKey('json')) {
      context.handle(
        _jsonMeta,
        json.isAcceptableOrUnknown(data['json']!, _jsonMeta),
      );
    } else if (isInserting) {
      context.missing(_jsonMeta);
    }
    if (data.containsKey('is_bundled')) {
      context.handle(
        _isBundledMeta,
        isBundled.isAcceptableOrUnknown(data['is_bundled']!, _isBundledMeta),
      );
    } else if (isInserting) {
      context.missing(_isBundledMeta);
    }
    if (data.containsKey('imported_at')) {
      context.handle(
        _importedAtMeta,
        importedAt.isAcceptableOrUnknown(data['imported_at']!, _importedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_importedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kind};
  @override
  RiskDataRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RiskDataRow(
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
      asOf: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}as_of'],
      )!,
      json: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}json'],
      )!,
      isBundled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_bundled'],
      )!,
      importedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}imported_at'],
      )!,
    );
  }

  @override
  $RiskDataTable createAlias(String alias) {
    return $RiskDataTable(attachedDatabase, alias);
  }
}

class RiskDataRow extends DataClass implements Insertable<RiskDataRow> {
  final String kind;
  final String version;
  final String asOf;
  final String json;
  final bool isBundled;
  final DateTime importedAt;
  const RiskDataRow({
    required this.kind,
    required this.version,
    required this.asOf,
    required this.json,
    required this.isBundled,
    required this.importedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kind'] = Variable<String>(kind);
    map['version'] = Variable<String>(version);
    map['as_of'] = Variable<String>(asOf);
    map['json'] = Variable<String>(json);
    map['is_bundled'] = Variable<bool>(isBundled);
    map['imported_at'] = Variable<DateTime>(importedAt);
    return map;
  }

  RiskDataCompanion toCompanion(bool nullToAbsent) {
    return RiskDataCompanion(
      kind: Value(kind),
      version: Value(version),
      asOf: Value(asOf),
      json: Value(json),
      isBundled: Value(isBundled),
      importedAt: Value(importedAt),
    );
  }

  factory RiskDataRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RiskDataRow(
      kind: serializer.fromJson<String>(json['kind']),
      version: serializer.fromJson<String>(json['version']),
      asOf: serializer.fromJson<String>(json['asOf']),
      json: serializer.fromJson<String>(json['json']),
      isBundled: serializer.fromJson<bool>(json['isBundled']),
      importedAt: serializer.fromJson<DateTime>(json['importedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kind': serializer.toJson<String>(kind),
      'version': serializer.toJson<String>(version),
      'asOf': serializer.toJson<String>(asOf),
      'json': serializer.toJson<String>(json),
      'isBundled': serializer.toJson<bool>(isBundled),
      'importedAt': serializer.toJson<DateTime>(importedAt),
    };
  }

  RiskDataRow copyWith({
    String? kind,
    String? version,
    String? asOf,
    String? json,
    bool? isBundled,
    DateTime? importedAt,
  }) => RiskDataRow(
    kind: kind ?? this.kind,
    version: version ?? this.version,
    asOf: asOf ?? this.asOf,
    json: json ?? this.json,
    isBundled: isBundled ?? this.isBundled,
    importedAt: importedAt ?? this.importedAt,
  );
  RiskDataRow copyWithCompanion(RiskDataCompanion data) {
    return RiskDataRow(
      kind: data.kind.present ? data.kind.value : this.kind,
      version: data.version.present ? data.version.value : this.version,
      asOf: data.asOf.present ? data.asOf.value : this.asOf,
      json: data.json.present ? data.json.value : this.json,
      isBundled: data.isBundled.present ? data.isBundled.value : this.isBundled,
      importedAt: data.importedAt.present
          ? data.importedAt.value
          : this.importedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RiskDataRow(')
          ..write('kind: $kind, ')
          ..write('version: $version, ')
          ..write('asOf: $asOf, ')
          ..write('json: $json, ')
          ..write('isBundled: $isBundled, ')
          ..write('importedAt: $importedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(kind, version, asOf, json, isBundled, importedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RiskDataRow &&
          other.kind == this.kind &&
          other.version == this.version &&
          other.asOf == this.asOf &&
          other.json == this.json &&
          other.isBundled == this.isBundled &&
          other.importedAt == this.importedAt);
}

class RiskDataCompanion extends UpdateCompanion<RiskDataRow> {
  final Value<String> kind;
  final Value<String> version;
  final Value<String> asOf;
  final Value<String> json;
  final Value<bool> isBundled;
  final Value<DateTime> importedAt;
  final Value<int> rowid;
  const RiskDataCompanion({
    this.kind = const Value.absent(),
    this.version = const Value.absent(),
    this.asOf = const Value.absent(),
    this.json = const Value.absent(),
    this.isBundled = const Value.absent(),
    this.importedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RiskDataCompanion.insert({
    required String kind,
    required String version,
    required String asOf,
    required String json,
    required bool isBundled,
    required DateTime importedAt,
    this.rowid = const Value.absent(),
  }) : kind = Value(kind),
       version = Value(version),
       asOf = Value(asOf),
       json = Value(json),
       isBundled = Value(isBundled),
       importedAt = Value(importedAt);
  static Insertable<RiskDataRow> custom({
    Expression<String>? kind,
    Expression<String>? version,
    Expression<String>? asOf,
    Expression<String>? json,
    Expression<bool>? isBundled,
    Expression<DateTime>? importedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (kind != null) 'kind': kind,
      if (version != null) 'version': version,
      if (asOf != null) 'as_of': asOf,
      if (json != null) 'json': json,
      if (isBundled != null) 'is_bundled': isBundled,
      if (importedAt != null) 'imported_at': importedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RiskDataCompanion copyWith({
    Value<String>? kind,
    Value<String>? version,
    Value<String>? asOf,
    Value<String>? json,
    Value<bool>? isBundled,
    Value<DateTime>? importedAt,
    Value<int>? rowid,
  }) {
    return RiskDataCompanion(
      kind: kind ?? this.kind,
      version: version ?? this.version,
      asOf: asOf ?? this.asOf,
      json: json ?? this.json,
      isBundled: isBundled ?? this.isBundled,
      importedAt: importedAt ?? this.importedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (asOf.present) {
      map['as_of'] = Variable<String>(asOf.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(json.value);
    }
    if (isBundled.present) {
      map['is_bundled'] = Variable<bool>(isBundled.value);
    }
    if (importedAt.present) {
      map['imported_at'] = Variable<DateTime>(importedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RiskDataCompanion(')
          ..write('kind: $kind, ')
          ..write('version: $version, ')
          ..write('asOf: $asOf, ')
          ..write('json: $json, ')
          ..write('isBundled: $isBundled, ')
          ..write('importedAt: $importedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ResultCacheTable extends ResultCache
    with TableInfo<$ResultCacheTable, ResultCacheRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResultCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _propertyIdMeta = const VerificationMeta(
    'propertyId',
  );
  @override
  late final GeneratedColumn<int> propertyId = GeneratedColumn<int>(
    'property_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES properties (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _rateVersionMeta = const VerificationMeta(
    'rateVersion',
  );
  @override
  late final GeneratedColumn<int> rateVersion = GeneratedColumn<int>(
    'rate_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quotedPriceMeta = const VerificationMeta(
    'quotedPrice',
  );
  @override
  late final GeneratedColumn<int> quotedPrice = GeneratedColumn<int>(
    'quoted_price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<int> total = GeneratedColumn<int>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ownFundsNeededMeta = const VerificationMeta(
    'ownFundsNeeded',
  );
  @override
  late final GeneratedColumn<int> ownFundsNeeded = GeneratedColumn<int>(
    'own_funds_needed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanMeta = const VerificationMeta('loan');
  @override
  late final GeneratedColumn<int> loan = GeneratedColumn<int>(
    'loan',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emiMeta = const VerificationMeta('emi');
  @override
  late final GeneratedColumn<int> emi = GeneratedColumn<int>(
    'emi',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quotedCarpetPsfMeta = const VerificationMeta(
    'quotedCarpetPsf',
  );
  @override
  late final GeneratedColumn<int> quotedCarpetPsf = GeneratedColumn<int>(
    'quoted_carpet_psf',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _allInCarpetPsfMeta = const VerificationMeta(
    'allInCarpetPsf',
  );
  @override
  late final GeneratedColumn<int> allInCarpetPsf = GeneratedColumn<int>(
    'all_in_carpet_psf',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criticalFlagsMeta = const VerificationMeta(
    'criticalFlags',
  );
  @override
  late final GeneratedColumn<int> criticalFlags = GeneratedColumn<int>(
    'critical_flags',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _warningFlagsMeta = const VerificationMeta(
    'warningFlags',
  );
  @override
  late final GeneratedColumn<int> warningFlags = GeneratedColumn<int>(
    'warning_flags',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _computedAtMeta = const VerificationMeta(
    'computedAt',
  );
  @override
  late final GeneratedColumn<DateTime> computedAt = GeneratedColumn<DateTime>(
    'computed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    propertyId,
    rateVersion,
    quotedPrice,
    total,
    ownFundsNeeded,
    loan,
    emi,
    quotedCarpetPsf,
    allInCarpetPsf,
    criticalFlags,
    warningFlags,
    computedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'result_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<ResultCacheRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('property_id')) {
      context.handle(
        _propertyIdMeta,
        propertyId.isAcceptableOrUnknown(data['property_id']!, _propertyIdMeta),
      );
    }
    if (data.containsKey('rate_version')) {
      context.handle(
        _rateVersionMeta,
        rateVersion.isAcceptableOrUnknown(
          data['rate_version']!,
          _rateVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rateVersionMeta);
    }
    if (data.containsKey('quoted_price')) {
      context.handle(
        _quotedPriceMeta,
        quotedPrice.isAcceptableOrUnknown(
          data['quoted_price']!,
          _quotedPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quotedPriceMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('own_funds_needed')) {
      context.handle(
        _ownFundsNeededMeta,
        ownFundsNeeded.isAcceptableOrUnknown(
          data['own_funds_needed']!,
          _ownFundsNeededMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ownFundsNeededMeta);
    }
    if (data.containsKey('loan')) {
      context.handle(
        _loanMeta,
        loan.isAcceptableOrUnknown(data['loan']!, _loanMeta),
      );
    } else if (isInserting) {
      context.missing(_loanMeta);
    }
    if (data.containsKey('emi')) {
      context.handle(
        _emiMeta,
        emi.isAcceptableOrUnknown(data['emi']!, _emiMeta),
      );
    } else if (isInserting) {
      context.missing(_emiMeta);
    }
    if (data.containsKey('quoted_carpet_psf')) {
      context.handle(
        _quotedCarpetPsfMeta,
        quotedCarpetPsf.isAcceptableOrUnknown(
          data['quoted_carpet_psf']!,
          _quotedCarpetPsfMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quotedCarpetPsfMeta);
    }
    if (data.containsKey('all_in_carpet_psf')) {
      context.handle(
        _allInCarpetPsfMeta,
        allInCarpetPsf.isAcceptableOrUnknown(
          data['all_in_carpet_psf']!,
          _allInCarpetPsfMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_allInCarpetPsfMeta);
    }
    if (data.containsKey('critical_flags')) {
      context.handle(
        _criticalFlagsMeta,
        criticalFlags.isAcceptableOrUnknown(
          data['critical_flags']!,
          _criticalFlagsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_criticalFlagsMeta);
    }
    if (data.containsKey('warning_flags')) {
      context.handle(
        _warningFlagsMeta,
        warningFlags.isAcceptableOrUnknown(
          data['warning_flags']!,
          _warningFlagsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_warningFlagsMeta);
    }
    if (data.containsKey('computed_at')) {
      context.handle(
        _computedAtMeta,
        computedAt.isAcceptableOrUnknown(data['computed_at']!, _computedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_computedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {propertyId};
  @override
  ResultCacheRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResultCacheRow(
      propertyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}property_id'],
      )!,
      rateVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rate_version'],
      )!,
      quotedPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quoted_price'],
      )!,
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total'],
      )!,
      ownFundsNeeded: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}own_funds_needed'],
      )!,
      loan: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}loan'],
      )!,
      emi: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}emi'],
      )!,
      quotedCarpetPsf: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quoted_carpet_psf'],
      )!,
      allInCarpetPsf: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}all_in_carpet_psf'],
      )!,
      criticalFlags: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}critical_flags'],
      )!,
      warningFlags: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}warning_flags'],
      )!,
      computedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}computed_at'],
      )!,
    );
  }

  @override
  $ResultCacheTable createAlias(String alias) {
    return $ResultCacheTable(attachedDatabase, alias);
  }
}

class ResultCacheRow extends DataClass implements Insertable<ResultCacheRow> {
  final int propertyId;
  final int rateVersion;
  final int quotedPrice;
  final int total;
  final int ownFundsNeeded;
  final int loan;
  final int emi;
  final int quotedCarpetPsf;
  final int allInCarpetPsf;
  final int criticalFlags;
  final int warningFlags;
  final DateTime computedAt;
  const ResultCacheRow({
    required this.propertyId,
    required this.rateVersion,
    required this.quotedPrice,
    required this.total,
    required this.ownFundsNeeded,
    required this.loan,
    required this.emi,
    required this.quotedCarpetPsf,
    required this.allInCarpetPsf,
    required this.criticalFlags,
    required this.warningFlags,
    required this.computedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['property_id'] = Variable<int>(propertyId);
    map['rate_version'] = Variable<int>(rateVersion);
    map['quoted_price'] = Variable<int>(quotedPrice);
    map['total'] = Variable<int>(total);
    map['own_funds_needed'] = Variable<int>(ownFundsNeeded);
    map['loan'] = Variable<int>(loan);
    map['emi'] = Variable<int>(emi);
    map['quoted_carpet_psf'] = Variable<int>(quotedCarpetPsf);
    map['all_in_carpet_psf'] = Variable<int>(allInCarpetPsf);
    map['critical_flags'] = Variable<int>(criticalFlags);
    map['warning_flags'] = Variable<int>(warningFlags);
    map['computed_at'] = Variable<DateTime>(computedAt);
    return map;
  }

  ResultCacheCompanion toCompanion(bool nullToAbsent) {
    return ResultCacheCompanion(
      propertyId: Value(propertyId),
      rateVersion: Value(rateVersion),
      quotedPrice: Value(quotedPrice),
      total: Value(total),
      ownFundsNeeded: Value(ownFundsNeeded),
      loan: Value(loan),
      emi: Value(emi),
      quotedCarpetPsf: Value(quotedCarpetPsf),
      allInCarpetPsf: Value(allInCarpetPsf),
      criticalFlags: Value(criticalFlags),
      warningFlags: Value(warningFlags),
      computedAt: Value(computedAt),
    );
  }

  factory ResultCacheRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResultCacheRow(
      propertyId: serializer.fromJson<int>(json['propertyId']),
      rateVersion: serializer.fromJson<int>(json['rateVersion']),
      quotedPrice: serializer.fromJson<int>(json['quotedPrice']),
      total: serializer.fromJson<int>(json['total']),
      ownFundsNeeded: serializer.fromJson<int>(json['ownFundsNeeded']),
      loan: serializer.fromJson<int>(json['loan']),
      emi: serializer.fromJson<int>(json['emi']),
      quotedCarpetPsf: serializer.fromJson<int>(json['quotedCarpetPsf']),
      allInCarpetPsf: serializer.fromJson<int>(json['allInCarpetPsf']),
      criticalFlags: serializer.fromJson<int>(json['criticalFlags']),
      warningFlags: serializer.fromJson<int>(json['warningFlags']),
      computedAt: serializer.fromJson<DateTime>(json['computedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'propertyId': serializer.toJson<int>(propertyId),
      'rateVersion': serializer.toJson<int>(rateVersion),
      'quotedPrice': serializer.toJson<int>(quotedPrice),
      'total': serializer.toJson<int>(total),
      'ownFundsNeeded': serializer.toJson<int>(ownFundsNeeded),
      'loan': serializer.toJson<int>(loan),
      'emi': serializer.toJson<int>(emi),
      'quotedCarpetPsf': serializer.toJson<int>(quotedCarpetPsf),
      'allInCarpetPsf': serializer.toJson<int>(allInCarpetPsf),
      'criticalFlags': serializer.toJson<int>(criticalFlags),
      'warningFlags': serializer.toJson<int>(warningFlags),
      'computedAt': serializer.toJson<DateTime>(computedAt),
    };
  }

  ResultCacheRow copyWith({
    int? propertyId,
    int? rateVersion,
    int? quotedPrice,
    int? total,
    int? ownFundsNeeded,
    int? loan,
    int? emi,
    int? quotedCarpetPsf,
    int? allInCarpetPsf,
    int? criticalFlags,
    int? warningFlags,
    DateTime? computedAt,
  }) => ResultCacheRow(
    propertyId: propertyId ?? this.propertyId,
    rateVersion: rateVersion ?? this.rateVersion,
    quotedPrice: quotedPrice ?? this.quotedPrice,
    total: total ?? this.total,
    ownFundsNeeded: ownFundsNeeded ?? this.ownFundsNeeded,
    loan: loan ?? this.loan,
    emi: emi ?? this.emi,
    quotedCarpetPsf: quotedCarpetPsf ?? this.quotedCarpetPsf,
    allInCarpetPsf: allInCarpetPsf ?? this.allInCarpetPsf,
    criticalFlags: criticalFlags ?? this.criticalFlags,
    warningFlags: warningFlags ?? this.warningFlags,
    computedAt: computedAt ?? this.computedAt,
  );
  ResultCacheRow copyWithCompanion(ResultCacheCompanion data) {
    return ResultCacheRow(
      propertyId: data.propertyId.present
          ? data.propertyId.value
          : this.propertyId,
      rateVersion: data.rateVersion.present
          ? data.rateVersion.value
          : this.rateVersion,
      quotedPrice: data.quotedPrice.present
          ? data.quotedPrice.value
          : this.quotedPrice,
      total: data.total.present ? data.total.value : this.total,
      ownFundsNeeded: data.ownFundsNeeded.present
          ? data.ownFundsNeeded.value
          : this.ownFundsNeeded,
      loan: data.loan.present ? data.loan.value : this.loan,
      emi: data.emi.present ? data.emi.value : this.emi,
      quotedCarpetPsf: data.quotedCarpetPsf.present
          ? data.quotedCarpetPsf.value
          : this.quotedCarpetPsf,
      allInCarpetPsf: data.allInCarpetPsf.present
          ? data.allInCarpetPsf.value
          : this.allInCarpetPsf,
      criticalFlags: data.criticalFlags.present
          ? data.criticalFlags.value
          : this.criticalFlags,
      warningFlags: data.warningFlags.present
          ? data.warningFlags.value
          : this.warningFlags,
      computedAt: data.computedAt.present
          ? data.computedAt.value
          : this.computedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResultCacheRow(')
          ..write('propertyId: $propertyId, ')
          ..write('rateVersion: $rateVersion, ')
          ..write('quotedPrice: $quotedPrice, ')
          ..write('total: $total, ')
          ..write('ownFundsNeeded: $ownFundsNeeded, ')
          ..write('loan: $loan, ')
          ..write('emi: $emi, ')
          ..write('quotedCarpetPsf: $quotedCarpetPsf, ')
          ..write('allInCarpetPsf: $allInCarpetPsf, ')
          ..write('criticalFlags: $criticalFlags, ')
          ..write('warningFlags: $warningFlags, ')
          ..write('computedAt: $computedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    propertyId,
    rateVersion,
    quotedPrice,
    total,
    ownFundsNeeded,
    loan,
    emi,
    quotedCarpetPsf,
    allInCarpetPsf,
    criticalFlags,
    warningFlags,
    computedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResultCacheRow &&
          other.propertyId == this.propertyId &&
          other.rateVersion == this.rateVersion &&
          other.quotedPrice == this.quotedPrice &&
          other.total == this.total &&
          other.ownFundsNeeded == this.ownFundsNeeded &&
          other.loan == this.loan &&
          other.emi == this.emi &&
          other.quotedCarpetPsf == this.quotedCarpetPsf &&
          other.allInCarpetPsf == this.allInCarpetPsf &&
          other.criticalFlags == this.criticalFlags &&
          other.warningFlags == this.warningFlags &&
          other.computedAt == this.computedAt);
}

class ResultCacheCompanion extends UpdateCompanion<ResultCacheRow> {
  final Value<int> propertyId;
  final Value<int> rateVersion;
  final Value<int> quotedPrice;
  final Value<int> total;
  final Value<int> ownFundsNeeded;
  final Value<int> loan;
  final Value<int> emi;
  final Value<int> quotedCarpetPsf;
  final Value<int> allInCarpetPsf;
  final Value<int> criticalFlags;
  final Value<int> warningFlags;
  final Value<DateTime> computedAt;
  const ResultCacheCompanion({
    this.propertyId = const Value.absent(),
    this.rateVersion = const Value.absent(),
    this.quotedPrice = const Value.absent(),
    this.total = const Value.absent(),
    this.ownFundsNeeded = const Value.absent(),
    this.loan = const Value.absent(),
    this.emi = const Value.absent(),
    this.quotedCarpetPsf = const Value.absent(),
    this.allInCarpetPsf = const Value.absent(),
    this.criticalFlags = const Value.absent(),
    this.warningFlags = const Value.absent(),
    this.computedAt = const Value.absent(),
  });
  ResultCacheCompanion.insert({
    this.propertyId = const Value.absent(),
    required int rateVersion,
    required int quotedPrice,
    required int total,
    required int ownFundsNeeded,
    required int loan,
    required int emi,
    required int quotedCarpetPsf,
    required int allInCarpetPsf,
    required int criticalFlags,
    required int warningFlags,
    required DateTime computedAt,
  }) : rateVersion = Value(rateVersion),
       quotedPrice = Value(quotedPrice),
       total = Value(total),
       ownFundsNeeded = Value(ownFundsNeeded),
       loan = Value(loan),
       emi = Value(emi),
       quotedCarpetPsf = Value(quotedCarpetPsf),
       allInCarpetPsf = Value(allInCarpetPsf),
       criticalFlags = Value(criticalFlags),
       warningFlags = Value(warningFlags),
       computedAt = Value(computedAt);
  static Insertable<ResultCacheRow> custom({
    Expression<int>? propertyId,
    Expression<int>? rateVersion,
    Expression<int>? quotedPrice,
    Expression<int>? total,
    Expression<int>? ownFundsNeeded,
    Expression<int>? loan,
    Expression<int>? emi,
    Expression<int>? quotedCarpetPsf,
    Expression<int>? allInCarpetPsf,
    Expression<int>? criticalFlags,
    Expression<int>? warningFlags,
    Expression<DateTime>? computedAt,
  }) {
    return RawValuesInsertable({
      if (propertyId != null) 'property_id': propertyId,
      if (rateVersion != null) 'rate_version': rateVersion,
      if (quotedPrice != null) 'quoted_price': quotedPrice,
      if (total != null) 'total': total,
      if (ownFundsNeeded != null) 'own_funds_needed': ownFundsNeeded,
      if (loan != null) 'loan': loan,
      if (emi != null) 'emi': emi,
      if (quotedCarpetPsf != null) 'quoted_carpet_psf': quotedCarpetPsf,
      if (allInCarpetPsf != null) 'all_in_carpet_psf': allInCarpetPsf,
      if (criticalFlags != null) 'critical_flags': criticalFlags,
      if (warningFlags != null) 'warning_flags': warningFlags,
      if (computedAt != null) 'computed_at': computedAt,
    });
  }

  ResultCacheCompanion copyWith({
    Value<int>? propertyId,
    Value<int>? rateVersion,
    Value<int>? quotedPrice,
    Value<int>? total,
    Value<int>? ownFundsNeeded,
    Value<int>? loan,
    Value<int>? emi,
    Value<int>? quotedCarpetPsf,
    Value<int>? allInCarpetPsf,
    Value<int>? criticalFlags,
    Value<int>? warningFlags,
    Value<DateTime>? computedAt,
  }) {
    return ResultCacheCompanion(
      propertyId: propertyId ?? this.propertyId,
      rateVersion: rateVersion ?? this.rateVersion,
      quotedPrice: quotedPrice ?? this.quotedPrice,
      total: total ?? this.total,
      ownFundsNeeded: ownFundsNeeded ?? this.ownFundsNeeded,
      loan: loan ?? this.loan,
      emi: emi ?? this.emi,
      quotedCarpetPsf: quotedCarpetPsf ?? this.quotedCarpetPsf,
      allInCarpetPsf: allInCarpetPsf ?? this.allInCarpetPsf,
      criticalFlags: criticalFlags ?? this.criticalFlags,
      warningFlags: warningFlags ?? this.warningFlags,
      computedAt: computedAt ?? this.computedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (propertyId.present) {
      map['property_id'] = Variable<int>(propertyId.value);
    }
    if (rateVersion.present) {
      map['rate_version'] = Variable<int>(rateVersion.value);
    }
    if (quotedPrice.present) {
      map['quoted_price'] = Variable<int>(quotedPrice.value);
    }
    if (total.present) {
      map['total'] = Variable<int>(total.value);
    }
    if (ownFundsNeeded.present) {
      map['own_funds_needed'] = Variable<int>(ownFundsNeeded.value);
    }
    if (loan.present) {
      map['loan'] = Variable<int>(loan.value);
    }
    if (emi.present) {
      map['emi'] = Variable<int>(emi.value);
    }
    if (quotedCarpetPsf.present) {
      map['quoted_carpet_psf'] = Variable<int>(quotedCarpetPsf.value);
    }
    if (allInCarpetPsf.present) {
      map['all_in_carpet_psf'] = Variable<int>(allInCarpetPsf.value);
    }
    if (criticalFlags.present) {
      map['critical_flags'] = Variable<int>(criticalFlags.value);
    }
    if (warningFlags.present) {
      map['warning_flags'] = Variable<int>(warningFlags.value);
    }
    if (computedAt.present) {
      map['computed_at'] = Variable<DateTime>(computedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResultCacheCompanion(')
          ..write('propertyId: $propertyId, ')
          ..write('rateVersion: $rateVersion, ')
          ..write('quotedPrice: $quotedPrice, ')
          ..write('total: $total, ')
          ..write('ownFundsNeeded: $ownFundsNeeded, ')
          ..write('loan: $loan, ')
          ..write('emi: $emi, ')
          ..write('quotedCarpetPsf: $quotedCarpetPsf, ')
          ..write('allInCarpetPsf: $allInCarpetPsf, ')
          ..write('criticalFlags: $criticalFlags, ')
          ..write('warningFlags: $warningFlags, ')
          ..write('computedAt: $computedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PropertiesTable properties = $PropertiesTable(this);
  late final $PropertyExtrasTable propertyExtras = $PropertyExtrasTable(this);
  late final $ResaleDetailsTable resaleDetails = $ResaleDetailsTable(this);
  late final $UcDetailsTable ucDetails = $UcDetailsTable(this);
  late final $BuyerFinanceTable buyerFinance = $BuyerFinanceTable(this);
  late final $ChecklistItemsTable checklistItems = $ChecklistItemsTable(this);
  late final $RateProfilesTable rateProfiles = $RateProfilesTable(this);
  late final $RiskDataTable riskData = $RiskDataTable(this);
  late final $ResultCacheTable resultCache = $ResultCacheTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    properties,
    propertyExtras,
    resaleDetails,
    ucDetails,
    buyerFinance,
    checklistItems,
    rateProfiles,
    riskData,
    resultCache,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('property_extras', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('resale_details', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('uc_details', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('buyer_finance', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('checklist_items', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'properties',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('result_cache', kind: UpdateKind.delete)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$PropertiesTableCreateCompanionBuilder =
    PropertiesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> category,
      required String mode,
      required String profileId,
      required int rateVersion,
      Value<String?> locality,
      required String type,
      required String status,
      required int quotedPrice,
      Value<int?> budget,
      required double carpetSqft,
      Value<double?> builtupSqft,
      Value<int?> readyReckonerValue,
      Value<double?> areaReferencePsf,
      required String ownership,
      Value<int?> corpus,
      Value<int?> maintenanceMonths,
      Value<double?> maintenanceRatePsf,
      Value<int?> legalFees,
      Value<int?> interiors,
      required int currentYear,
      Value<bool> areaInSqm,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<bool> isArchived,
    });
typedef $$PropertiesTableUpdateCompanionBuilder =
    PropertiesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> category,
      Value<String> mode,
      Value<String> profileId,
      Value<int> rateVersion,
      Value<String?> locality,
      Value<String> type,
      Value<String> status,
      Value<int> quotedPrice,
      Value<int?> budget,
      Value<double> carpetSqft,
      Value<double?> builtupSqft,
      Value<int?> readyReckonerValue,
      Value<double?> areaReferencePsf,
      Value<String> ownership,
      Value<int?> corpus,
      Value<int?> maintenanceMonths,
      Value<double?> maintenanceRatePsf,
      Value<int?> legalFees,
      Value<int?> interiors,
      Value<int> currentYear,
      Value<bool> areaInSqm,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isArchived,
    });

final class $$PropertiesTableReferences
    extends BaseReferences<_$AppDatabase, $PropertiesTable, PropertyRow> {
  $$PropertiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PropertyExtrasTable, List<PropertyExtraRow>>
  _propertyExtrasRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.propertyExtras,
    aliasName: $_aliasNameGenerator(
      db.properties.id,
      db.propertyExtras.propertyId,
    ),
  );

  $$PropertyExtrasTableProcessedTableManager get propertyExtrasRefs {
    final manager = $$PropertyExtrasTableTableManager(
      $_db,
      $_db.propertyExtras,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_propertyExtrasRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ResaleDetailsTable, List<ResaleDetailsRow>>
  _resaleDetailsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.resaleDetails,
    aliasName: $_aliasNameGenerator(
      db.properties.id,
      db.resaleDetails.propertyId,
    ),
  );

  $$ResaleDetailsTableProcessedTableManager get resaleDetailsRefs {
    final manager = $$ResaleDetailsTableTableManager(
      $_db,
      $_db.resaleDetails,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_resaleDetailsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$UcDetailsTable, List<UcDetailsRow>>
  _ucDetailsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.ucDetails,
    aliasName: $_aliasNameGenerator(db.properties.id, db.ucDetails.propertyId),
  );

  $$UcDetailsTableProcessedTableManager get ucDetailsRefs {
    final manager = $$UcDetailsTableTableManager(
      $_db,
      $_db.ucDetails,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_ucDetailsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$BuyerFinanceTable, List<BuyerFinanceRow>>
  _buyerFinanceRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.buyerFinance,
    aliasName: $_aliasNameGenerator(
      db.properties.id,
      db.buyerFinance.propertyId,
    ),
  );

  $$BuyerFinanceTableProcessedTableManager get buyerFinanceRefs {
    final manager = $$BuyerFinanceTableTableManager(
      $_db,
      $_db.buyerFinance,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_buyerFinanceRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ChecklistItemsTable, List<ChecklistItemRow>>
  _checklistItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.checklistItems,
    aliasName: $_aliasNameGenerator(
      db.properties.id,
      db.checklistItems.propertyId,
    ),
  );

  $$ChecklistItemsTableProcessedTableManager get checklistItemsRefs {
    final manager = $$ChecklistItemsTableTableManager(
      $_db,
      $_db.checklistItems,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_checklistItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ResultCacheTable, List<ResultCacheRow>>
  _resultCacheRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.resultCache,
    aliasName: $_aliasNameGenerator(
      db.properties.id,
      db.resultCache.propertyId,
    ),
  );

  $$ResultCacheTableProcessedTableManager get resultCacheRefs {
    final manager = $$ResultCacheTableTableManager(
      $_db,
      $_db.resultCache,
    ).filter((f) => f.propertyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_resultCacheRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PropertiesTableFilterComposer
    extends Composer<_$AppDatabase, $PropertiesTable> {
  $$PropertiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locality => $composableBuilder(
    column: $table.locality,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get carpetSqft => $composableBuilder(
    column: $table.carpetSqft,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get builtupSqft => $composableBuilder(
    column: $table.builtupSqft,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get readyReckonerValue => $composableBuilder(
    column: $table.readyReckonerValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get areaReferencePsf => $composableBuilder(
    column: $table.areaReferencePsf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ownership => $composableBuilder(
    column: $table.ownership,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get corpus => $composableBuilder(
    column: $table.corpus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maintenanceMonths => $composableBuilder(
    column: $table.maintenanceMonths,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maintenanceRatePsf => $composableBuilder(
    column: $table.maintenanceRatePsf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get legalFees => $composableBuilder(
    column: $table.legalFees,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get interiors => $composableBuilder(
    column: $table.interiors,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentYear => $composableBuilder(
    column: $table.currentYear,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get areaInSqm => $composableBuilder(
    column: $table.areaInSqm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> propertyExtrasRefs(
    Expression<bool> Function($$PropertyExtrasTableFilterComposer f) f,
  ) {
    final $$PropertyExtrasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.propertyExtras,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertyExtrasTableFilterComposer(
            $db: $db,
            $table: $db.propertyExtras,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> resaleDetailsRefs(
    Expression<bool> Function($$ResaleDetailsTableFilterComposer f) f,
  ) {
    final $$ResaleDetailsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.resaleDetails,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ResaleDetailsTableFilterComposer(
            $db: $db,
            $table: $db.resaleDetails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> ucDetailsRefs(
    Expression<bool> Function($$UcDetailsTableFilterComposer f) f,
  ) {
    final $$UcDetailsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ucDetails,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UcDetailsTableFilterComposer(
            $db: $db,
            $table: $db.ucDetails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> buyerFinanceRefs(
    Expression<bool> Function($$BuyerFinanceTableFilterComposer f) f,
  ) {
    final $$BuyerFinanceTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.buyerFinance,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BuyerFinanceTableFilterComposer(
            $db: $db,
            $table: $db.buyerFinance,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> checklistItemsRefs(
    Expression<bool> Function($$ChecklistItemsTableFilterComposer f) f,
  ) {
    final $$ChecklistItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.checklistItems,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChecklistItemsTableFilterComposer(
            $db: $db,
            $table: $db.checklistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> resultCacheRefs(
    Expression<bool> Function($$ResultCacheTableFilterComposer f) f,
  ) {
    final $$ResultCacheTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.resultCache,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ResultCacheTableFilterComposer(
            $db: $db,
            $table: $db.resultCache,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PropertiesTableOrderingComposer
    extends Composer<_$AppDatabase, $PropertiesTable> {
  $$PropertiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locality => $composableBuilder(
    column: $table.locality,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get carpetSqft => $composableBuilder(
    column: $table.carpetSqft,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get builtupSqft => $composableBuilder(
    column: $table.builtupSqft,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get readyReckonerValue => $composableBuilder(
    column: $table.readyReckonerValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get areaReferencePsf => $composableBuilder(
    column: $table.areaReferencePsf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ownership => $composableBuilder(
    column: $table.ownership,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get corpus => $composableBuilder(
    column: $table.corpus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maintenanceMonths => $composableBuilder(
    column: $table.maintenanceMonths,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maintenanceRatePsf => $composableBuilder(
    column: $table.maintenanceRatePsf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get legalFees => $composableBuilder(
    column: $table.legalFees,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get interiors => $composableBuilder(
    column: $table.interiors,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentYear => $composableBuilder(
    column: $table.currentYear,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get areaInSqm => $composableBuilder(
    column: $table.areaInSqm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PropertiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PropertiesTable> {
  $$PropertiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get profileId =>
      $composableBuilder(column: $table.profileId, builder: (column) => column);

  GeneratedColumn<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locality =>
      $composableBuilder(column: $table.locality, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => column,
  );

  GeneratedColumn<int> get budget =>
      $composableBuilder(column: $table.budget, builder: (column) => column);

  GeneratedColumn<double> get carpetSqft => $composableBuilder(
    column: $table.carpetSqft,
    builder: (column) => column,
  );

  GeneratedColumn<double> get builtupSqft => $composableBuilder(
    column: $table.builtupSqft,
    builder: (column) => column,
  );

  GeneratedColumn<int> get readyReckonerValue => $composableBuilder(
    column: $table.readyReckonerValue,
    builder: (column) => column,
  );

  GeneratedColumn<double> get areaReferencePsf => $composableBuilder(
    column: $table.areaReferencePsf,
    builder: (column) => column,
  );

  GeneratedColumn<String> get ownership =>
      $composableBuilder(column: $table.ownership, builder: (column) => column);

  GeneratedColumn<int> get corpus =>
      $composableBuilder(column: $table.corpus, builder: (column) => column);

  GeneratedColumn<int> get maintenanceMonths => $composableBuilder(
    column: $table.maintenanceMonths,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maintenanceRatePsf => $composableBuilder(
    column: $table.maintenanceRatePsf,
    builder: (column) => column,
  );

  GeneratedColumn<int> get legalFees =>
      $composableBuilder(column: $table.legalFees, builder: (column) => column);

  GeneratedColumn<int> get interiors =>
      $composableBuilder(column: $table.interiors, builder: (column) => column);

  GeneratedColumn<int> get currentYear => $composableBuilder(
    column: $table.currentYear,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get areaInSqm =>
      $composableBuilder(column: $table.areaInSqm, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => column,
  );

  Expression<T> propertyExtrasRefs<T extends Object>(
    Expression<T> Function($$PropertyExtrasTableAnnotationComposer a) f,
  ) {
    final $$PropertyExtrasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.propertyExtras,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertyExtrasTableAnnotationComposer(
            $db: $db,
            $table: $db.propertyExtras,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> resaleDetailsRefs<T extends Object>(
    Expression<T> Function($$ResaleDetailsTableAnnotationComposer a) f,
  ) {
    final $$ResaleDetailsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.resaleDetails,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ResaleDetailsTableAnnotationComposer(
            $db: $db,
            $table: $db.resaleDetails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> ucDetailsRefs<T extends Object>(
    Expression<T> Function($$UcDetailsTableAnnotationComposer a) f,
  ) {
    final $$UcDetailsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ucDetails,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UcDetailsTableAnnotationComposer(
            $db: $db,
            $table: $db.ucDetails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> buyerFinanceRefs<T extends Object>(
    Expression<T> Function($$BuyerFinanceTableAnnotationComposer a) f,
  ) {
    final $$BuyerFinanceTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.buyerFinance,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BuyerFinanceTableAnnotationComposer(
            $db: $db,
            $table: $db.buyerFinance,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> checklistItemsRefs<T extends Object>(
    Expression<T> Function($$ChecklistItemsTableAnnotationComposer a) f,
  ) {
    final $$ChecklistItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.checklistItems,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChecklistItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.checklistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> resultCacheRefs<T extends Object>(
    Expression<T> Function($$ResultCacheTableAnnotationComposer a) f,
  ) {
    final $$ResultCacheTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.resultCache,
      getReferencedColumn: (t) => t.propertyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ResultCacheTableAnnotationComposer(
            $db: $db,
            $table: $db.resultCache,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PropertiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PropertiesTable,
          PropertyRow,
          $$PropertiesTableFilterComposer,
          $$PropertiesTableOrderingComposer,
          $$PropertiesTableAnnotationComposer,
          $$PropertiesTableCreateCompanionBuilder,
          $$PropertiesTableUpdateCompanionBuilder,
          (PropertyRow, $$PropertiesTableReferences),
          PropertyRow,
          PrefetchHooks Function({
            bool propertyExtrasRefs,
            bool resaleDetailsRefs,
            bool ucDetailsRefs,
            bool buyerFinanceRefs,
            bool checklistItemsRefs,
            bool resultCacheRefs,
          })
        > {
  $$PropertiesTableTableManager(_$AppDatabase db, $PropertiesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PropertiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PropertiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PropertiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> profileId = const Value.absent(),
                Value<int> rateVersion = const Value.absent(),
                Value<String?> locality = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> quotedPrice = const Value.absent(),
                Value<int?> budget = const Value.absent(),
                Value<double> carpetSqft = const Value.absent(),
                Value<double?> builtupSqft = const Value.absent(),
                Value<int?> readyReckonerValue = const Value.absent(),
                Value<double?> areaReferencePsf = const Value.absent(),
                Value<String> ownership = const Value.absent(),
                Value<int?> corpus = const Value.absent(),
                Value<int?> maintenanceMonths = const Value.absent(),
                Value<double?> maintenanceRatePsf = const Value.absent(),
                Value<int?> legalFees = const Value.absent(),
                Value<int?> interiors = const Value.absent(),
                Value<int> currentYear = const Value.absent(),
                Value<bool> areaInSqm = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isArchived = const Value.absent(),
              }) => PropertiesCompanion(
                id: id,
                name: name,
                category: category,
                mode: mode,
                profileId: profileId,
                rateVersion: rateVersion,
                locality: locality,
                type: type,
                status: status,
                quotedPrice: quotedPrice,
                budget: budget,
                carpetSqft: carpetSqft,
                builtupSqft: builtupSqft,
                readyReckonerValue: readyReckonerValue,
                areaReferencePsf: areaReferencePsf,
                ownership: ownership,
                corpus: corpus,
                maintenanceMonths: maintenanceMonths,
                maintenanceRatePsf: maintenanceRatePsf,
                legalFees: legalFees,
                interiors: interiors,
                currentYear: currentYear,
                areaInSqm: areaInSqm,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isArchived: isArchived,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> category = const Value.absent(),
                required String mode,
                required String profileId,
                required int rateVersion,
                Value<String?> locality = const Value.absent(),
                required String type,
                required String status,
                required int quotedPrice,
                Value<int?> budget = const Value.absent(),
                required double carpetSqft,
                Value<double?> builtupSqft = const Value.absent(),
                Value<int?> readyReckonerValue = const Value.absent(),
                Value<double?> areaReferencePsf = const Value.absent(),
                required String ownership,
                Value<int?> corpus = const Value.absent(),
                Value<int?> maintenanceMonths = const Value.absent(),
                Value<double?> maintenanceRatePsf = const Value.absent(),
                Value<int?> legalFees = const Value.absent(),
                Value<int?> interiors = const Value.absent(),
                required int currentYear,
                Value<bool> areaInSqm = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<bool> isArchived = const Value.absent(),
              }) => PropertiesCompanion.insert(
                id: id,
                name: name,
                category: category,
                mode: mode,
                profileId: profileId,
                rateVersion: rateVersion,
                locality: locality,
                type: type,
                status: status,
                quotedPrice: quotedPrice,
                budget: budget,
                carpetSqft: carpetSqft,
                builtupSqft: builtupSqft,
                readyReckonerValue: readyReckonerValue,
                areaReferencePsf: areaReferencePsf,
                ownership: ownership,
                corpus: corpus,
                maintenanceMonths: maintenanceMonths,
                maintenanceRatePsf: maintenanceRatePsf,
                legalFees: legalFees,
                interiors: interiors,
                currentYear: currentYear,
                areaInSqm: areaInSqm,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isArchived: isArchived,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PropertiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                propertyExtrasRefs = false,
                resaleDetailsRefs = false,
                ucDetailsRefs = false,
                buyerFinanceRefs = false,
                checklistItemsRefs = false,
                resultCacheRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (propertyExtrasRefs) db.propertyExtras,
                    if (resaleDetailsRefs) db.resaleDetails,
                    if (ucDetailsRefs) db.ucDetails,
                    if (buyerFinanceRefs) db.buyerFinance,
                    if (checklistItemsRefs) db.checklistItems,
                    if (resultCacheRefs) db.resultCache,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (propertyExtrasRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          PropertyExtraRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._propertyExtrasRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).propertyExtrasRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (resaleDetailsRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          ResaleDetailsRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._resaleDetailsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).resaleDetailsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (ucDetailsRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          UcDetailsRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._ucDetailsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).ucDetailsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (buyerFinanceRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          BuyerFinanceRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._buyerFinanceRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).buyerFinanceRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (checklistItemsRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          ChecklistItemRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._checklistItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).checklistItemsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (resultCacheRefs)
                        await $_getPrefetchedData<
                          PropertyRow,
                          $PropertiesTable,
                          ResultCacheRow
                        >(
                          currentTable: table,
                          referencedTable: $$PropertiesTableReferences
                              ._resultCacheRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PropertiesTableReferences(
                                db,
                                table,
                                p0,
                              ).resultCacheRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.propertyId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PropertiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PropertiesTable,
      PropertyRow,
      $$PropertiesTableFilterComposer,
      $$PropertiesTableOrderingComposer,
      $$PropertiesTableAnnotationComposer,
      $$PropertiesTableCreateCompanionBuilder,
      $$PropertiesTableUpdateCompanionBuilder,
      (PropertyRow, $$PropertiesTableReferences),
      PropertyRow,
      PrefetchHooks Function({
        bool propertyExtrasRefs,
        bool resaleDetailsRefs,
        bool ucDetailsRefs,
        bool buyerFinanceRefs,
        bool checklistItemsRefs,
        bool resultCacheRefs,
      })
    >;
typedef $$PropertyExtrasTableCreateCompanionBuilder =
    PropertyExtrasCompanion Function({
      Value<int> id,
      required int propertyId,
      required int position,
      required String kind,
      required int amount,
      Value<bool> inAgreement,
    });
typedef $$PropertyExtrasTableUpdateCompanionBuilder =
    PropertyExtrasCompanion Function({
      Value<int> id,
      Value<int> propertyId,
      Value<int> position,
      Value<String> kind,
      Value<int> amount,
      Value<bool> inAgreement,
    });

final class $$PropertyExtrasTableReferences
    extends
        BaseReferences<_$AppDatabase, $PropertyExtrasTable, PropertyExtraRow> {
  $$PropertyExtrasTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.propertyExtras.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PropertyExtrasTableFilterComposer
    extends Composer<_$AppDatabase, $PropertyExtrasTable> {
  $$PropertyExtrasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get inAgreement => $composableBuilder(
    column: $table.inAgreement,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PropertyExtrasTableOrderingComposer
    extends Composer<_$AppDatabase, $PropertyExtrasTable> {
  $$PropertyExtrasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get inAgreement => $composableBuilder(
    column: $table.inAgreement,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PropertyExtrasTableAnnotationComposer
    extends Composer<_$AppDatabase, $PropertyExtrasTable> {
  $$PropertyExtrasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<bool> get inAgreement => $composableBuilder(
    column: $table.inAgreement,
    builder: (column) => column,
  );

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PropertyExtrasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PropertyExtrasTable,
          PropertyExtraRow,
          $$PropertyExtrasTableFilterComposer,
          $$PropertyExtrasTableOrderingComposer,
          $$PropertyExtrasTableAnnotationComposer,
          $$PropertyExtrasTableCreateCompanionBuilder,
          $$PropertyExtrasTableUpdateCompanionBuilder,
          (PropertyExtraRow, $$PropertyExtrasTableReferences),
          PropertyExtraRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$PropertyExtrasTableTableManager(
    _$AppDatabase db,
    $PropertyExtrasTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PropertyExtrasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PropertyExtrasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PropertyExtrasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> propertyId = const Value.absent(),
                Value<int> position = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<bool> inAgreement = const Value.absent(),
              }) => PropertyExtrasCompanion(
                id: id,
                propertyId: propertyId,
                position: position,
                kind: kind,
                amount: amount,
                inAgreement: inAgreement,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int propertyId,
                required int position,
                required String kind,
                required int amount,
                Value<bool> inAgreement = const Value.absent(),
              }) => PropertyExtrasCompanion.insert(
                id: id,
                propertyId: propertyId,
                position: position,
                kind: kind,
                amount: amount,
                inAgreement: inAgreement,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PropertyExtrasTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$PropertyExtrasTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn:
                                    $$PropertyExtrasTableReferences
                                        ._propertyIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PropertyExtrasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PropertyExtrasTable,
      PropertyExtraRow,
      $$PropertyExtrasTableFilterComposer,
      $$PropertyExtrasTableOrderingComposer,
      $$PropertyExtrasTableAnnotationComposer,
      $$PropertyExtrasTableCreateCompanionBuilder,
      $$PropertyExtrasTableUpdateCompanionBuilder,
      (PropertyExtraRow, $$PropertyExtrasTableReferences),
      PropertyExtraRow,
      PrefetchHooks Function({bool propertyId})
    >;
typedef $$ResaleDetailsTableCreateCompanionBuilder =
    ResaleDetailsCompanion Function({
      Value<int> propertyId,
      Value<int?> buildingYear,
      Value<bool?> hasOc,
      Value<int?> sellerLoan,
      Value<double?> brokeragePct,
      Value<int?> transferFee,
    });
typedef $$ResaleDetailsTableUpdateCompanionBuilder =
    ResaleDetailsCompanion Function({
      Value<int> propertyId,
      Value<int?> buildingYear,
      Value<bool?> hasOc,
      Value<int?> sellerLoan,
      Value<double?> brokeragePct,
      Value<int?> transferFee,
    });

final class $$ResaleDetailsTableReferences
    extends
        BaseReferences<_$AppDatabase, $ResaleDetailsTable, ResaleDetailsRow> {
  $$ResaleDetailsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.resaleDetails.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ResaleDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $ResaleDetailsTable> {
  $$ResaleDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get buildingYear => $composableBuilder(
    column: $table.buildingYear,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasOc => $composableBuilder(
    column: $table.hasOc,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sellerLoan => $composableBuilder(
    column: $table.sellerLoan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get brokeragePct => $composableBuilder(
    column: $table.brokeragePct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get transferFee => $composableBuilder(
    column: $table.transferFee,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResaleDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $ResaleDetailsTable> {
  $$ResaleDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get buildingYear => $composableBuilder(
    column: $table.buildingYear,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasOc => $composableBuilder(
    column: $table.hasOc,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sellerLoan => $composableBuilder(
    column: $table.sellerLoan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get brokeragePct => $composableBuilder(
    column: $table.brokeragePct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get transferFee => $composableBuilder(
    column: $table.transferFee,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResaleDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ResaleDetailsTable> {
  $$ResaleDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get buildingYear => $composableBuilder(
    column: $table.buildingYear,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasOc =>
      $composableBuilder(column: $table.hasOc, builder: (column) => column);

  GeneratedColumn<int> get sellerLoan => $composableBuilder(
    column: $table.sellerLoan,
    builder: (column) => column,
  );

  GeneratedColumn<double> get brokeragePct => $composableBuilder(
    column: $table.brokeragePct,
    builder: (column) => column,
  );

  GeneratedColumn<int> get transferFee => $composableBuilder(
    column: $table.transferFee,
    builder: (column) => column,
  );

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResaleDetailsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ResaleDetailsTable,
          ResaleDetailsRow,
          $$ResaleDetailsTableFilterComposer,
          $$ResaleDetailsTableOrderingComposer,
          $$ResaleDetailsTableAnnotationComposer,
          $$ResaleDetailsTableCreateCompanionBuilder,
          $$ResaleDetailsTableUpdateCompanionBuilder,
          (ResaleDetailsRow, $$ResaleDetailsTableReferences),
          ResaleDetailsRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$ResaleDetailsTableTableManager(_$AppDatabase db, $ResaleDetailsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResaleDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResaleDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResaleDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<int?> buildingYear = const Value.absent(),
                Value<bool?> hasOc = const Value.absent(),
                Value<int?> sellerLoan = const Value.absent(),
                Value<double?> brokeragePct = const Value.absent(),
                Value<int?> transferFee = const Value.absent(),
              }) => ResaleDetailsCompanion(
                propertyId: propertyId,
                buildingYear: buildingYear,
                hasOc: hasOc,
                sellerLoan: sellerLoan,
                brokeragePct: brokeragePct,
                transferFee: transferFee,
              ),
          createCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<int?> buildingYear = const Value.absent(),
                Value<bool?> hasOc = const Value.absent(),
                Value<int?> sellerLoan = const Value.absent(),
                Value<double?> brokeragePct = const Value.absent(),
                Value<int?> transferFee = const Value.absent(),
              }) => ResaleDetailsCompanion.insert(
                propertyId: propertyId,
                buildingYear: buildingYear,
                hasOc: hasOc,
                sellerLoan: sellerLoan,
                brokeragePct: brokeragePct,
                transferFee: transferFee,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ResaleDetailsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$ResaleDetailsTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn: $$ResaleDetailsTableReferences
                                    ._propertyIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ResaleDetailsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ResaleDetailsTable,
      ResaleDetailsRow,
      $$ResaleDetailsTableFilterComposer,
      $$ResaleDetailsTableOrderingComposer,
      $$ResaleDetailsTableAnnotationComposer,
      $$ResaleDetailsTableCreateCompanionBuilder,
      $$ResaleDetailsTableUpdateCompanionBuilder,
      (ResaleDetailsRow, $$ResaleDetailsTableReferences),
      ResaleDetailsRow,
      PrefetchHooks Function({bool propertyId})
    >;
typedef $$UcDetailsTableCreateCompanionBuilder =
    UcDetailsCompanion Function({
      Value<int> propertyId,
      Value<String?> reraNumber,
      Value<int?> monthsToPossession,
      Value<int?> monthlyRent,
    });
typedef $$UcDetailsTableUpdateCompanionBuilder =
    UcDetailsCompanion Function({
      Value<int> propertyId,
      Value<String?> reraNumber,
      Value<int?> monthsToPossession,
      Value<int?> monthlyRent,
    });

final class $$UcDetailsTableReferences
    extends BaseReferences<_$AppDatabase, $UcDetailsTable, UcDetailsRow> {
  $$UcDetailsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.ucDetails.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$UcDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $UcDetailsTable> {
  $$UcDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get reraNumber => $composableBuilder(
    column: $table.reraNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get monthsToPossession => $composableBuilder(
    column: $table.monthsToPossession,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get monthlyRent => $composableBuilder(
    column: $table.monthlyRent,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UcDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $UcDetailsTable> {
  $$UcDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get reraNumber => $composableBuilder(
    column: $table.reraNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get monthsToPossession => $composableBuilder(
    column: $table.monthsToPossession,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get monthlyRent => $composableBuilder(
    column: $table.monthlyRent,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UcDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UcDetailsTable> {
  $$UcDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get reraNumber => $composableBuilder(
    column: $table.reraNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get monthsToPossession => $composableBuilder(
    column: $table.monthsToPossession,
    builder: (column) => column,
  );

  GeneratedColumn<int> get monthlyRent => $composableBuilder(
    column: $table.monthlyRent,
    builder: (column) => column,
  );

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UcDetailsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UcDetailsTable,
          UcDetailsRow,
          $$UcDetailsTableFilterComposer,
          $$UcDetailsTableOrderingComposer,
          $$UcDetailsTableAnnotationComposer,
          $$UcDetailsTableCreateCompanionBuilder,
          $$UcDetailsTableUpdateCompanionBuilder,
          (UcDetailsRow, $$UcDetailsTableReferences),
          UcDetailsRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$UcDetailsTableTableManager(_$AppDatabase db, $UcDetailsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UcDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UcDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UcDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<String?> reraNumber = const Value.absent(),
                Value<int?> monthsToPossession = const Value.absent(),
                Value<int?> monthlyRent = const Value.absent(),
              }) => UcDetailsCompanion(
                propertyId: propertyId,
                reraNumber: reraNumber,
                monthsToPossession: monthsToPossession,
                monthlyRent: monthlyRent,
              ),
          createCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<String?> reraNumber = const Value.absent(),
                Value<int?> monthsToPossession = const Value.absent(),
                Value<int?> monthlyRent = const Value.absent(),
              }) => UcDetailsCompanion.insert(
                propertyId: propertyId,
                reraNumber: reraNumber,
                monthsToPossession: monthsToPossession,
                monthlyRent: monthlyRent,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$UcDetailsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$UcDetailsTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn: $$UcDetailsTableReferences
                                    ._propertyIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$UcDetailsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UcDetailsTable,
      UcDetailsRow,
      $$UcDetailsTableFilterComposer,
      $$UcDetailsTableOrderingComposer,
      $$UcDetailsTableAnnotationComposer,
      $$UcDetailsTableCreateCompanionBuilder,
      $$UcDetailsTableUpdateCompanionBuilder,
      (UcDetailsRow, $$UcDetailsTableReferences),
      UcDetailsRow,
      PrefetchHooks Function({bool propertyId})
    >;
typedef $$BuyerFinanceTableCreateCompanionBuilder =
    BuyerFinanceCompanion Function({
      Value<int> propertyId,
      required bool usingLoan,
      required int age,
      required String employment,
      required int netIncome,
      required int existingEmi,
      Value<double?> ratePct,
      Value<int?> tenureYears,
      Value<int?> ownFunds,
    });
typedef $$BuyerFinanceTableUpdateCompanionBuilder =
    BuyerFinanceCompanion Function({
      Value<int> propertyId,
      Value<bool> usingLoan,
      Value<int> age,
      Value<String> employment,
      Value<int> netIncome,
      Value<int> existingEmi,
      Value<double?> ratePct,
      Value<int?> tenureYears,
      Value<int?> ownFunds,
    });

final class $$BuyerFinanceTableReferences
    extends BaseReferences<_$AppDatabase, $BuyerFinanceTable, BuyerFinanceRow> {
  $$BuyerFinanceTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.buyerFinance.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BuyerFinanceTableFilterComposer
    extends Composer<_$AppDatabase, $BuyerFinanceTable> {
  $$BuyerFinanceTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get usingLoan => $composableBuilder(
    column: $table.usingLoan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employment => $composableBuilder(
    column: $table.employment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get netIncome => $composableBuilder(
    column: $table.netIncome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get existingEmi => $composableBuilder(
    column: $table.existingEmi,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get ratePct => $composableBuilder(
    column: $table.ratePct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tenureYears => $composableBuilder(
    column: $table.tenureYears,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ownFunds => $composableBuilder(
    column: $table.ownFunds,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BuyerFinanceTableOrderingComposer
    extends Composer<_$AppDatabase, $BuyerFinanceTable> {
  $$BuyerFinanceTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get usingLoan => $composableBuilder(
    column: $table.usingLoan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employment => $composableBuilder(
    column: $table.employment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get netIncome => $composableBuilder(
    column: $table.netIncome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get existingEmi => $composableBuilder(
    column: $table.existingEmi,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get ratePct => $composableBuilder(
    column: $table.ratePct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tenureYears => $composableBuilder(
    column: $table.tenureYears,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ownFunds => $composableBuilder(
    column: $table.ownFunds,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BuyerFinanceTableAnnotationComposer
    extends Composer<_$AppDatabase, $BuyerFinanceTable> {
  $$BuyerFinanceTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get usingLoan =>
      $composableBuilder(column: $table.usingLoan, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<String> get employment => $composableBuilder(
    column: $table.employment,
    builder: (column) => column,
  );

  GeneratedColumn<int> get netIncome =>
      $composableBuilder(column: $table.netIncome, builder: (column) => column);

  GeneratedColumn<int> get existingEmi => $composableBuilder(
    column: $table.existingEmi,
    builder: (column) => column,
  );

  GeneratedColumn<double> get ratePct =>
      $composableBuilder(column: $table.ratePct, builder: (column) => column);

  GeneratedColumn<int> get tenureYears => $composableBuilder(
    column: $table.tenureYears,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ownFunds =>
      $composableBuilder(column: $table.ownFunds, builder: (column) => column);

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BuyerFinanceTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BuyerFinanceTable,
          BuyerFinanceRow,
          $$BuyerFinanceTableFilterComposer,
          $$BuyerFinanceTableOrderingComposer,
          $$BuyerFinanceTableAnnotationComposer,
          $$BuyerFinanceTableCreateCompanionBuilder,
          $$BuyerFinanceTableUpdateCompanionBuilder,
          (BuyerFinanceRow, $$BuyerFinanceTableReferences),
          BuyerFinanceRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$BuyerFinanceTableTableManager(_$AppDatabase db, $BuyerFinanceTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BuyerFinanceTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BuyerFinanceTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BuyerFinanceTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<bool> usingLoan = const Value.absent(),
                Value<int> age = const Value.absent(),
                Value<String> employment = const Value.absent(),
                Value<int> netIncome = const Value.absent(),
                Value<int> existingEmi = const Value.absent(),
                Value<double?> ratePct = const Value.absent(),
                Value<int?> tenureYears = const Value.absent(),
                Value<int?> ownFunds = const Value.absent(),
              }) => BuyerFinanceCompanion(
                propertyId: propertyId,
                usingLoan: usingLoan,
                age: age,
                employment: employment,
                netIncome: netIncome,
                existingEmi: existingEmi,
                ratePct: ratePct,
                tenureYears: tenureYears,
                ownFunds: ownFunds,
              ),
          createCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                required bool usingLoan,
                required int age,
                required String employment,
                required int netIncome,
                required int existingEmi,
                Value<double?> ratePct = const Value.absent(),
                Value<int?> tenureYears = const Value.absent(),
                Value<int?> ownFunds = const Value.absent(),
              }) => BuyerFinanceCompanion.insert(
                propertyId: propertyId,
                usingLoan: usingLoan,
                age: age,
                employment: employment,
                netIncome: netIncome,
                existingEmi: existingEmi,
                ratePct: ratePct,
                tenureYears: tenureYears,
                ownFunds: ownFunds,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BuyerFinanceTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$BuyerFinanceTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn: $$BuyerFinanceTableReferences
                                    ._propertyIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$BuyerFinanceTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BuyerFinanceTable,
      BuyerFinanceRow,
      $$BuyerFinanceTableFilterComposer,
      $$BuyerFinanceTableOrderingComposer,
      $$BuyerFinanceTableAnnotationComposer,
      $$BuyerFinanceTableCreateCompanionBuilder,
      $$BuyerFinanceTableUpdateCompanionBuilder,
      (BuyerFinanceRow, $$BuyerFinanceTableReferences),
      BuyerFinanceRow,
      PrefetchHooks Function({bool propertyId})
    >;
typedef $$ChecklistItemsTableCreateCompanionBuilder =
    ChecklistItemsCompanion Function({
      Value<int> id,
      required int propertyId,
      required String itemId,
      required String source,
      Value<bool> done,
      Value<String?> note,
      Value<DateTime?> doneAt,
    });
typedef $$ChecklistItemsTableUpdateCompanionBuilder =
    ChecklistItemsCompanion Function({
      Value<int> id,
      Value<int> propertyId,
      Value<String> itemId,
      Value<String> source,
      Value<bool> done,
      Value<String?> note,
      Value<DateTime?> doneAt,
    });

final class $$ChecklistItemsTableReferences
    extends
        BaseReferences<_$AppDatabase, $ChecklistItemsTable, ChecklistItemRow> {
  $$ChecklistItemsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.checklistItems.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ChecklistItemsTableFilterComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get doneAt => $composableBuilder(
    column: $table.doneAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get doneAt => $composableBuilder(
    column: $table.doneAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChecklistItemsTable> {
  $$ChecklistItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<bool> get done =>
      $composableBuilder(column: $table.done, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get doneAt =>
      $composableBuilder(column: $table.doneAt, builder: (column) => column);

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChecklistItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChecklistItemsTable,
          ChecklistItemRow,
          $$ChecklistItemsTableFilterComposer,
          $$ChecklistItemsTableOrderingComposer,
          $$ChecklistItemsTableAnnotationComposer,
          $$ChecklistItemsTableCreateCompanionBuilder,
          $$ChecklistItemsTableUpdateCompanionBuilder,
          (ChecklistItemRow, $$ChecklistItemsTableReferences),
          ChecklistItemRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$ChecklistItemsTableTableManager(
    _$AppDatabase db,
    $ChecklistItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChecklistItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChecklistItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChecklistItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> propertyId = const Value.absent(),
                Value<String> itemId = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<bool> done = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> doneAt = const Value.absent(),
              }) => ChecklistItemsCompanion(
                id: id,
                propertyId: propertyId,
                itemId: itemId,
                source: source,
                done: done,
                note: note,
                doneAt: doneAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int propertyId,
                required String itemId,
                required String source,
                Value<bool> done = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> doneAt = const Value.absent(),
              }) => ChecklistItemsCompanion.insert(
                id: id,
                propertyId: propertyId,
                itemId: itemId,
                source: source,
                done: done,
                note: note,
                doneAt: doneAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ChecklistItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$ChecklistItemsTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn:
                                    $$ChecklistItemsTableReferences
                                        ._propertyIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ChecklistItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChecklistItemsTable,
      ChecklistItemRow,
      $$ChecklistItemsTableFilterComposer,
      $$ChecklistItemsTableOrderingComposer,
      $$ChecklistItemsTableAnnotationComposer,
      $$ChecklistItemsTableCreateCompanionBuilder,
      $$ChecklistItemsTableUpdateCompanionBuilder,
      (ChecklistItemRow, $$ChecklistItemsTableReferences),
      ChecklistItemRow,
      PrefetchHooks Function({bool propertyId})
    >;
typedef $$RateProfilesTableCreateCompanionBuilder =
    RateProfilesCompanion Function({
      required String id,
      required int version,
      required String asOf,
      required String json,
      required bool isBundled,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$RateProfilesTableUpdateCompanionBuilder =
    RateProfilesCompanion Function({
      Value<String> id,
      Value<int> version,
      Value<String> asOf,
      Value<String> json,
      Value<bool> isBundled,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$RateProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $RateProfilesTable> {
  $$RateProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get asOf => $composableBuilder(
    column: $table.asOf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isBundled => $composableBuilder(
    column: $table.isBundled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RateProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $RateProfilesTable> {
  $$RateProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get asOf => $composableBuilder(
    column: $table.asOf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isBundled => $composableBuilder(
    column: $table.isBundled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RateProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RateProfilesTable> {
  $$RateProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get asOf =>
      $composableBuilder(column: $table.asOf, builder: (column) => column);

  GeneratedColumn<String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<bool> get isBundled =>
      $composableBuilder(column: $table.isBundled, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$RateProfilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RateProfilesTable,
          RateProfileRow,
          $$RateProfilesTableFilterComposer,
          $$RateProfilesTableOrderingComposer,
          $$RateProfilesTableAnnotationComposer,
          $$RateProfilesTableCreateCompanionBuilder,
          $$RateProfilesTableUpdateCompanionBuilder,
          (
            RateProfileRow,
            BaseReferences<_$AppDatabase, $RateProfilesTable, RateProfileRow>,
          ),
          RateProfileRow,
          PrefetchHooks Function()
        > {
  $$RateProfilesTableTableManager(_$AppDatabase db, $RateProfilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RateProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RateProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RateProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> version = const Value.absent(),
                Value<String> asOf = const Value.absent(),
                Value<String> json = const Value.absent(),
                Value<bool> isBundled = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RateProfilesCompanion(
                id: id,
                version: version,
                asOf: asOf,
                json: json,
                isBundled: isBundled,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int version,
                required String asOf,
                required String json,
                required bool isBundled,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => RateProfilesCompanion.insert(
                id: id,
                version: version,
                asOf: asOf,
                json: json,
                isBundled: isBundled,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RateProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RateProfilesTable,
      RateProfileRow,
      $$RateProfilesTableFilterComposer,
      $$RateProfilesTableOrderingComposer,
      $$RateProfilesTableAnnotationComposer,
      $$RateProfilesTableCreateCompanionBuilder,
      $$RateProfilesTableUpdateCompanionBuilder,
      (
        RateProfileRow,
        BaseReferences<_$AppDatabase, $RateProfilesTable, RateProfileRow>,
      ),
      RateProfileRow,
      PrefetchHooks Function()
    >;
typedef $$RiskDataTableCreateCompanionBuilder =
    RiskDataCompanion Function({
      required String kind,
      required String version,
      required String asOf,
      required String json,
      required bool isBundled,
      required DateTime importedAt,
      Value<int> rowid,
    });
typedef $$RiskDataTableUpdateCompanionBuilder =
    RiskDataCompanion Function({
      Value<String> kind,
      Value<String> version,
      Value<String> asOf,
      Value<String> json,
      Value<bool> isBundled,
      Value<DateTime> importedAt,
      Value<int> rowid,
    });

class $$RiskDataTableFilterComposer
    extends Composer<_$AppDatabase, $RiskDataTable> {
  $$RiskDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get asOf => $composableBuilder(
    column: $table.asOf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isBundled => $composableBuilder(
    column: $table.isBundled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RiskDataTableOrderingComposer
    extends Composer<_$AppDatabase, $RiskDataTable> {
  $$RiskDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get asOf => $composableBuilder(
    column: $table.asOf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isBundled => $composableBuilder(
    column: $table.isBundled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RiskDataTableAnnotationComposer
    extends Composer<_$AppDatabase, $RiskDataTable> {
  $$RiskDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get asOf =>
      $composableBuilder(column: $table.asOf, builder: (column) => column);

  GeneratedColumn<String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<bool> get isBundled =>
      $composableBuilder(column: $table.isBundled, builder: (column) => column);

  GeneratedColumn<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => column,
  );
}

class $$RiskDataTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RiskDataTable,
          RiskDataRow,
          $$RiskDataTableFilterComposer,
          $$RiskDataTableOrderingComposer,
          $$RiskDataTableAnnotationComposer,
          $$RiskDataTableCreateCompanionBuilder,
          $$RiskDataTableUpdateCompanionBuilder,
          (
            RiskDataRow,
            BaseReferences<_$AppDatabase, $RiskDataTable, RiskDataRow>,
          ),
          RiskDataRow,
          PrefetchHooks Function()
        > {
  $$RiskDataTableTableManager(_$AppDatabase db, $RiskDataTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RiskDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RiskDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RiskDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> kind = const Value.absent(),
                Value<String> version = const Value.absent(),
                Value<String> asOf = const Value.absent(),
                Value<String> json = const Value.absent(),
                Value<bool> isBundled = const Value.absent(),
                Value<DateTime> importedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RiskDataCompanion(
                kind: kind,
                version: version,
                asOf: asOf,
                json: json,
                isBundled: isBundled,
                importedAt: importedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String kind,
                required String version,
                required String asOf,
                required String json,
                required bool isBundled,
                required DateTime importedAt,
                Value<int> rowid = const Value.absent(),
              }) => RiskDataCompanion.insert(
                kind: kind,
                version: version,
                asOf: asOf,
                json: json,
                isBundled: isBundled,
                importedAt: importedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RiskDataTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RiskDataTable,
      RiskDataRow,
      $$RiskDataTableFilterComposer,
      $$RiskDataTableOrderingComposer,
      $$RiskDataTableAnnotationComposer,
      $$RiskDataTableCreateCompanionBuilder,
      $$RiskDataTableUpdateCompanionBuilder,
      (RiskDataRow, BaseReferences<_$AppDatabase, $RiskDataTable, RiskDataRow>),
      RiskDataRow,
      PrefetchHooks Function()
    >;
typedef $$ResultCacheTableCreateCompanionBuilder =
    ResultCacheCompanion Function({
      Value<int> propertyId,
      required int rateVersion,
      required int quotedPrice,
      required int total,
      required int ownFundsNeeded,
      required int loan,
      required int emi,
      required int quotedCarpetPsf,
      required int allInCarpetPsf,
      required int criticalFlags,
      required int warningFlags,
      required DateTime computedAt,
    });
typedef $$ResultCacheTableUpdateCompanionBuilder =
    ResultCacheCompanion Function({
      Value<int> propertyId,
      Value<int> rateVersion,
      Value<int> quotedPrice,
      Value<int> total,
      Value<int> ownFundsNeeded,
      Value<int> loan,
      Value<int> emi,
      Value<int> quotedCarpetPsf,
      Value<int> allInCarpetPsf,
      Value<int> criticalFlags,
      Value<int> warningFlags,
      Value<DateTime> computedAt,
    });

final class $$ResultCacheTableReferences
    extends BaseReferences<_$AppDatabase, $ResultCacheTable, ResultCacheRow> {
  $$ResultCacheTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PropertiesTable _propertyIdTable(_$AppDatabase db) =>
      db.properties.createAlias(
        $_aliasNameGenerator(db.resultCache.propertyId, db.properties.id),
      );

  $$PropertiesTableProcessedTableManager get propertyId {
    final $_column = $_itemColumn<int>('property_id')!;

    final manager = $$PropertiesTableTableManager(
      $_db,
      $_db.properties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_propertyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ResultCacheTableFilterComposer
    extends Composer<_$AppDatabase, $ResultCacheTable> {
  $$ResultCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ownFundsNeeded => $composableBuilder(
    column: $table.ownFundsNeeded,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get loan => $composableBuilder(
    column: $table.loan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get emi => $composableBuilder(
    column: $table.emi,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quotedCarpetPsf => $composableBuilder(
    column: $table.quotedCarpetPsf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get allInCarpetPsf => $composableBuilder(
    column: $table.allInCarpetPsf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get criticalFlags => $composableBuilder(
    column: $table.criticalFlags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get warningFlags => $composableBuilder(
    column: $table.warningFlags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get computedAt => $composableBuilder(
    column: $table.computedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PropertiesTableFilterComposer get propertyId {
    final $$PropertiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableFilterComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResultCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $ResultCacheTable> {
  $$ResultCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ownFundsNeeded => $composableBuilder(
    column: $table.ownFundsNeeded,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get loan => $composableBuilder(
    column: $table.loan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get emi => $composableBuilder(
    column: $table.emi,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quotedCarpetPsf => $composableBuilder(
    column: $table.quotedCarpetPsf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get allInCarpetPsf => $composableBuilder(
    column: $table.allInCarpetPsf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get criticalFlags => $composableBuilder(
    column: $table.criticalFlags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get warningFlags => $composableBuilder(
    column: $table.warningFlags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get computedAt => $composableBuilder(
    column: $table.computedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PropertiesTableOrderingComposer get propertyId {
    final $$PropertiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableOrderingComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResultCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $ResultCacheTable> {
  $$ResultCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get rateVersion => $composableBuilder(
    column: $table.rateVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quotedPrice => $composableBuilder(
    column: $table.quotedPrice,
    builder: (column) => column,
  );

  GeneratedColumn<int> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<int> get ownFundsNeeded => $composableBuilder(
    column: $table.ownFundsNeeded,
    builder: (column) => column,
  );

  GeneratedColumn<int> get loan =>
      $composableBuilder(column: $table.loan, builder: (column) => column);

  GeneratedColumn<int> get emi =>
      $composableBuilder(column: $table.emi, builder: (column) => column);

  GeneratedColumn<int> get quotedCarpetPsf => $composableBuilder(
    column: $table.quotedCarpetPsf,
    builder: (column) => column,
  );

  GeneratedColumn<int> get allInCarpetPsf => $composableBuilder(
    column: $table.allInCarpetPsf,
    builder: (column) => column,
  );

  GeneratedColumn<int> get criticalFlags => $composableBuilder(
    column: $table.criticalFlags,
    builder: (column) => column,
  );

  GeneratedColumn<int> get warningFlags => $composableBuilder(
    column: $table.warningFlags,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get computedAt => $composableBuilder(
    column: $table.computedAt,
    builder: (column) => column,
  );

  $$PropertiesTableAnnotationComposer get propertyId {
    final $$PropertiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.propertyId,
      referencedTable: $db.properties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PropertiesTableAnnotationComposer(
            $db: $db,
            $table: $db.properties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ResultCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ResultCacheTable,
          ResultCacheRow,
          $$ResultCacheTableFilterComposer,
          $$ResultCacheTableOrderingComposer,
          $$ResultCacheTableAnnotationComposer,
          $$ResultCacheTableCreateCompanionBuilder,
          $$ResultCacheTableUpdateCompanionBuilder,
          (ResultCacheRow, $$ResultCacheTableReferences),
          ResultCacheRow,
          PrefetchHooks Function({bool propertyId})
        > {
  $$ResultCacheTableTableManager(_$AppDatabase db, $ResultCacheTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResultCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResultCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResultCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                Value<int> rateVersion = const Value.absent(),
                Value<int> quotedPrice = const Value.absent(),
                Value<int> total = const Value.absent(),
                Value<int> ownFundsNeeded = const Value.absent(),
                Value<int> loan = const Value.absent(),
                Value<int> emi = const Value.absent(),
                Value<int> quotedCarpetPsf = const Value.absent(),
                Value<int> allInCarpetPsf = const Value.absent(),
                Value<int> criticalFlags = const Value.absent(),
                Value<int> warningFlags = const Value.absent(),
                Value<DateTime> computedAt = const Value.absent(),
              }) => ResultCacheCompanion(
                propertyId: propertyId,
                rateVersion: rateVersion,
                quotedPrice: quotedPrice,
                total: total,
                ownFundsNeeded: ownFundsNeeded,
                loan: loan,
                emi: emi,
                quotedCarpetPsf: quotedCarpetPsf,
                allInCarpetPsf: allInCarpetPsf,
                criticalFlags: criticalFlags,
                warningFlags: warningFlags,
                computedAt: computedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> propertyId = const Value.absent(),
                required int rateVersion,
                required int quotedPrice,
                required int total,
                required int ownFundsNeeded,
                required int loan,
                required int emi,
                required int quotedCarpetPsf,
                required int allInCarpetPsf,
                required int criticalFlags,
                required int warningFlags,
                required DateTime computedAt,
              }) => ResultCacheCompanion.insert(
                propertyId: propertyId,
                rateVersion: rateVersion,
                quotedPrice: quotedPrice,
                total: total,
                ownFundsNeeded: ownFundsNeeded,
                loan: loan,
                emi: emi,
                quotedCarpetPsf: quotedCarpetPsf,
                allInCarpetPsf: allInCarpetPsf,
                criticalFlags: criticalFlags,
                warningFlags: warningFlags,
                computedAt: computedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ResultCacheTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({propertyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (propertyId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.propertyId,
                                referencedTable: $$ResultCacheTableReferences
                                    ._propertyIdTable(db),
                                referencedColumn: $$ResultCacheTableReferences
                                    ._propertyIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ResultCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ResultCacheTable,
      ResultCacheRow,
      $$ResultCacheTableFilterComposer,
      $$ResultCacheTableOrderingComposer,
      $$ResultCacheTableAnnotationComposer,
      $$ResultCacheTableCreateCompanionBuilder,
      $$ResultCacheTableUpdateCompanionBuilder,
      (ResultCacheRow, $$ResultCacheTableReferences),
      ResultCacheRow,
      PrefetchHooks Function({bool propertyId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PropertiesTableTableManager get properties =>
      $$PropertiesTableTableManager(_db, _db.properties);
  $$PropertyExtrasTableTableManager get propertyExtras =>
      $$PropertyExtrasTableTableManager(_db, _db.propertyExtras);
  $$ResaleDetailsTableTableManager get resaleDetails =>
      $$ResaleDetailsTableTableManager(_db, _db.resaleDetails);
  $$UcDetailsTableTableManager get ucDetails =>
      $$UcDetailsTableTableManager(_db, _db.ucDetails);
  $$BuyerFinanceTableTableManager get buyerFinance =>
      $$BuyerFinanceTableTableManager(_db, _db.buyerFinance);
  $$ChecklistItemsTableTableManager get checklistItems =>
      $$ChecklistItemsTableTableManager(_db, _db.checklistItems);
  $$RateProfilesTableTableManager get rateProfiles =>
      $$RateProfilesTableTableManager(_db, _db.rateProfiles);
  $$RiskDataTableTableManager get riskData =>
      $$RiskDataTableTableManager(_db, _db.riskData);
  $$ResultCacheTableTableManager get resultCache =>
      $$ResultCacheTableTableManager(_db, _db.resultCache);
}
