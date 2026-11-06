import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';

/// Which part of the profile an editor screen shows.
enum EditorSection { rates, loan, defaults, thresholds }

/// How a field is parsed and validated.
enum FieldKind {
  /// Tax or fee percentage, 0–20 (SPEC §6).
  taxPct,

  /// Percentage of income or value, 0–100.
  pct100,

  /// Whole rupees, ≥ 0.
  inr,

  /// Whole number, ≥ 0.
  count,

  /// Decimal, ≥ 0.
  decimal,

  /// 0–1.
  fraction,

  /// 1–3 (built-up to carpet).
  ratio,
}

/// One editable value, addressed by its path in the profile JSON.
class ProfileField {
  const ProfileField(this.path, this.label, this.kind, {this.nullable = false});

  final List<Object> path;
  final String Function(AppLocalizations l) label;
  final FieldKind kind;

  /// Empty input stores null (the last LTV slab has no cap).
  final bool nullable;

  String get key => path.join('.');
}

class ProfileFieldGroup {
  const ProfileFieldGroup(this.title, this.fields);

  final String Function(AppLocalizations l) title;
  final List<ProfileField> fields;
}

/// Field groups for a section; some depend on the profile's own lists.
List<ProfileFieldGroup> groupsFor(EditorSection s, RateProfile p) {
  switch (s) {
    case EditorSection.rates:
      return [
        ProfileFieldGroup((l) => l.groupStampRegistration, [
          ProfileField(
            ['stamp_duty_pct', 'male'],
            (l) => l.fieldStampMale,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['stamp_duty_pct', 'female'],
            (l) => l.fieldStampFemale,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['stamp_duty_pct', 'joint'],
            (l) => l.fieldStampJoint,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['registration_pct'],
            (l) => l.fieldRegistrationPct,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['registration_cap_inr'],
            (l) => l.fieldRegistrationCap,
            FieldKind.inr,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupGst, [
          ProfileField(
            ['gst_pct', 'under_construction_standard'],
            (l) => l.fieldGstUcStandard,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['gst_pct', 'under_construction_affordable'],
            (l) => l.fieldGstUcAffordable,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['gst_pct', 'ready_possession'],
            (l) => l.fieldGstReady,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['gst_pct', 'resale'],
            (l) => l.fieldGstResale,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['affordable_housing', 'max_carpet_sqm'],
            (l) => l.fieldAffordableSqm,
            FieldKind.decimal,
          ),
          ProfileField(
            ['affordable_housing', 'max_value_inr'],
            (l) => l.fieldAffordableValue,
            FieldKind.inr,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupTds, [
          ProfileField(['tds', 'pct'], (l) => l.fieldTdsPct, FieldKind.taxPct),
          ProfileField(
            ['tds', 'threshold_inr'],
            (l) => l.fieldTdsThreshold,
            FieldKind.inr,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupFees, [
          ProfileField(
            ['brokerage_pct_default'],
            (l) => l.fieldBrokerage,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['service_gst_pct'],
            (l) => l.fieldServiceGst,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['society_transfer_fee_inr'],
            (l) => l.fieldTransferFee,
            FieldKind.inr,
          ),
          ProfileField(['legal_fees_inr'], (l) => l.fieldLegal, FieldKind.inr),
          ProfileField(
            ['loan_processing_pct'],
            (l) => l.fieldLoanProcessing,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['mortgage_stamp_duty', 'pct'],
            (l) => l.fieldMortgagePct,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['mortgage_stamp_duty', 'cap_inr'],
            (l) => l.fieldMortgageCap,
            FieldKind.inr,
          ),
          ProfileField(
            ['pre_emi_avg_disbursed_fraction'],
            (l) => l.fieldPreEmiFraction,
            FieldKind.fraction,
          ),
          ProfileField(
            ['builtup_to_carpet_ratio'],
            (l) => l.fieldBuiltupRatio,
            FieldKind.ratio,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupMaintenance, [
          ProfileField(
            ['maintenance_rate_psf_month'],
            (l) => l.fieldMaintenanceRate,
            FieldKind.decimal,
          ),
          ProfileField(
            ['advance_maintenance_months', 'under_construction'],
            (l) => l.fieldMonthsUc,
            FieldKind.count,
          ),
          ProfileField(
            ['advance_maintenance_months', 'ready_possession'],
            (l) => l.fieldMonthsReady,
            FieldKind.count,
          ),
          ProfileField(
            ['advance_maintenance_months', 'resale'],
            (l) => l.fieldMonthsResale,
            FieldKind.count,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupRenovation, [
          for (final (i, b) in p.renovationPsfByAge.indexed)
            ProfileField(
              ['renovation_psf_by_age', i, 'psf'],
              (l) => l.fieldRenovationBand(b.minAge, b.maxAge),
              FieldKind.decimal,
            ),
        ]),
      ];
    case EditorSection.loan:
      return [
        ProfileFieldGroup((l) => l.groupLoanRates, [
          ProfileField(
            ['loan', 'interest_pct'],
            (l) => l.fieldInterest,
            FieldKind.taxPct,
          ),
          ProfileField(
            ['loan', 'foir_pct'],
            (l) => l.fieldFoir,
            FieldKind.pct100,
          ),
          ProfileField(
            ['loan', 'valuation_haircut_pct'],
            (l) => l.fieldHaircut,
            FieldKind.taxPct,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupLoanTenure, [
          ProfileField(
            ['loan', 'max_tenure_years'],
            (l) => l.fieldMaxTenure,
            FieldKind.count,
          ),
          ProfileField(
            ['loan', 'retirement_age', 'salaried'],
            (l) => l.fieldRetireSalaried,
            FieldKind.count,
          ),
          ProfileField(
            ['loan', 'retirement_age', 'self_employed'],
            (l) => l.fieldRetireSelf,
            FieldKind.count,
          ),
          ProfileField(
            ['loan', 'assumed_building_life_years'],
            (l) => l.fieldBuildingLife,
            FieldKind.count,
          ),
          ProfileField(
            ['loan', 'building_life_buffer_years'],
            (l) => l.fieldBuildingBuffer,
            FieldKind.count,
          ),
        ]),
        ProfileFieldGroup((l) => l.groupLtv, [
          for (var i = 0; i < p.loan.ltvSlabs.length; i++) ...[
            ProfileField(
              ['loan', 'ltv_slabs', i, 'max_value_inr'],
              (l) => l.fieldLtvCap(i + 1),
              FieldKind.inr,
              nullable: true,
            ),
            ProfileField(
              ['loan', 'ltv_slabs', i, 'ltv_pct'],
              (l) => l.fieldLtvPct(i + 1),
              FieldKind.pct100,
            ),
          ],
        ]),
      ];
    case EditorSection.defaults:
      return [
        ProfileFieldGroup((l) => l.groupInteriors, [
          for (final t in p.interiorsInr.keys)
            ProfileField(
              ['interiors_inr', t],
              (l) => l.fieldInteriorsType(t),
              FieldKind.inr,
            ),
        ]),
        ProfileFieldGroup((l) => l.groupCarpet, [
          for (final t in p.defaultCarpetSqft.keys)
            ProfileField(
              ['default_carpet_sqft', t],
              (l) => l.fieldCarpetType(t),
              FieldKind.decimal,
            ),
        ]),
        ProfileFieldGroup((l) => l.groupWizard, [
          ProfileField(
            ['wizard_defaults', 'months_to_possession'],
            (l) => l.fieldMonthsToPossession,
            FieldKind.count,
          ),
          ProfileField(
            ['wizard_defaults', 'buyer_age'],
            (l) => l.fieldBuyerAge,
            FieldKind.count,
          ),
          ProfileField(
            ['wizard_defaults', 'tenure_years'],
            (l) => l.fieldTenure,
            FieldKind.count,
          ),
        ]),
      ];
    case EditorSection.thresholds:
      return [
        ProfileFieldGroup((l) => l.groupThresholds, [
          ProfileField(
            ['flag_thresholds', 'old_building_age'],
            (l) => l.fieldOldBuilding,
            FieldKind.count,
          ),
          ProfileField(
            ['flag_thresholds', 'very_old_building_age'],
            (l) => l.fieldVeryOldBuilding,
            FieldKind.count,
          ),
          ProfileField(
            ['flag_thresholds', 'gst_edge_band_inr'],
            (l) => l.fieldGstEdgeBand,
            FieldKind.inr,
          ),
          ProfileField(
            ['flag_thresholds', 'high_loading_pct'],
            (l) => l.fieldHighLoading,
            FieldKind.pct100,
          ),
          ProfileField(
            ['flag_thresholds', 'below_market_ratio'],
            (l) => l.fieldBelowMarket,
            FieldKind.fraction,
          ),
        ]),
      ];
  }
}

/// Reads a value at [path] in decoded JSON.
Object? readPath(Object? json, List<Object> path) {
  var cur = json;
  for (final k in path) {
    if (k is int && cur is List && k < cur.length) {
      cur = cur[k];
    } else if (k is String && cur is Map) {
      cur = cur[k];
    } else {
      return null;
    }
  }
  return cur;
}

/// Writes [value] at [path], creating maps along the way.
void writePath(Map<String, dynamic> json, List<Object> path, Object? value) {
  Object? cur = json;
  for (var i = 0; i < path.length - 1; i++) {
    final k = path[i];
    if (k is int) {
      cur = (cur! as List)[k];
    } else {
      final m = cur! as Map<String, dynamic>;
      cur = m.putIfAbsent(k as String, () => <String, dynamic>{});
    }
  }
  final last = path.last;
  if (last is int) {
    (cur! as List)[last] = value;
  } else {
    (cur! as Map<String, dynamic>)[last as String] = value;
  }
}

/// Why a raw value was rejected.
enum FieldError {
  notANumber,
  pctRange20,
  pctRange100,
  negative,
  fraction,
  ratio,
}

/// Parses [raw] for [field]; returns the value or an error.
({num? value, FieldError? error}) parseField(ProfileField field, String raw) {
  final t = raw.trim().replaceAll(',', '');
  if (t.isEmpty) {
    return field.nullable
        ? (value: null, error: null)
        : (value: null, error: FieldError.notANumber);
  }
  final isInt = field.kind == FieldKind.inr || field.kind == FieldKind.count;
  final num? v = isInt ? int.tryParse(t) : double.tryParse(t);
  if (v == null) return (value: null, error: FieldError.notANumber);
  final error = switch (field.kind) {
    FieldKind.taxPct when v < 0 || v > 20 => FieldError.pctRange20,
    FieldKind.pct100 when v < 0 || v > 100 => FieldError.pctRange100,
    FieldKind.fraction when v < 0 || v > 1 => FieldError.fraction,
    FieldKind.ratio when v < 1 || v > 3 => FieldError.ratio,
    _ when v < 0 => FieldError.negative,
    _ => null,
  };
  return (value: error == null ? v : null, error: error);
}

String fieldErrorText(AppLocalizations l, FieldError e) => switch (e) {
  FieldError.notANumber => l.commonInvalidNumber,
  FieldError.pctRange20 => l.editorPctRange(20),
  FieldError.pctRange100 => l.editorPctRange(100),
  FieldError.negative => l.editorNonNegative,
  FieldError.fraction => l.editorFractionRange,
  FieldError.ratio => l.editorRatioRange,
};
