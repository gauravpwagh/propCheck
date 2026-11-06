import 'package:json_schema/json_schema.dart';

/// JSON Schema for risk data schema_version 1.0 (docs/survey_prompt.md).
const riskSchemaV1 = <String, Object?>{
  r'$schema': 'http://json-schema.org/draft-07/schema#',
  'type': 'object',
  'required': [
    'schema_version',
    'region',
    'as_of',
    'disclaimer',
    'scam_patterns',
  ],
  'properties': {
    'schema_version': {'const': '1.0'},
    'region': {'type': 'string', 'minLength': 1},
    'as_of': {'type': 'string', 'pattern': r'^\d{4}-\d{2}-\d{2}$'},
    'generated_by': {'type': 'string'},
    'disclaimer': {'type': 'string'},
    'scam_patterns': {
      'type': 'array',
      'minItems': 1,
      'items': {
        'type': 'object',
        'required': [
          'id',
          'title',
          'severity',
          'applies_to_status',
          'applies_to_areas',
          'how_it_works',
          'red_flags',
          'prevention_checks',
          'recent_cases',
        ],
        'properties': {
          'id': {'type': 'string', 'pattern': r'^[a-z0-9_]+$'},
          'title': {'type': 'string', 'minLength': 1},
          'severity': {
            'enum': ['low', 'medium', 'high', 'critical'],
          },
          'applies_to_status': {
            'type': 'array',
            'minItems': 1,
            'items': {
              'enum': ['under_construction', 'ready_possession', 'resale'],
            },
          },
          'applies_to_areas': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'applies_to_category': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'how_it_works': {'type': 'string'},
          'red_flags': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'prevention_checks': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'recent_cases': {
            'type': 'array',
            'items': {
              'type': 'object',
              'required': [
                'date',
                'area',
                'amount_inr',
                'summary',
                'source_title',
                'source_url',
              ],
              'properties': {
                'date': {
                  'type': 'string',
                  'pattern': r'^\d{4}(-\d{2}(-\d{2})?)?$',
                },
                'area': {'type': 'string'},
                'amount_inr': {
                  'type': ['integer', 'null'],
                },
                'summary': {'type': 'string'},
                'source_title': {'type': 'string'},
                'source_url': {'type': 'string', 'pattern': '^https?://'},
              },
            },
          },
        },
      },
    },
    'area_notes': {
      'type': 'array',
      'items': {
        'type': 'object',
        'required': ['area', 'risk_tags', 'note'],
        'properties': {
          'area': {'type': 'string'},
          'risk_tags': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'note': {'type': 'string'},
        },
      },
    },
    'general_precautions': {
      'type': 'array',
      'items': {'type': 'string'},
    },
    'official_verification_links': {
      'type': 'array',
      'items': {
        'type': 'object',
        'required': ['name', 'url', 'purpose'],
        'properties': {
          'name': {'type': 'string'},
          'url': {'type': 'string', 'pattern': '^https?://'},
          'purpose': {'type': 'string'},
        },
      },
    },
    'rate_snapshot': {
      'type': 'object',
      'required': ['as_of', 'stamp_duty_pct', 'registration_pct', 'gst_pct'],
      'properties': {
        'city': {'type': 'string'},
        'as_of': {'type': 'string', 'pattern': r'^\d{4}-\d{2}-\d{2}$'},
        'stamp_duty_pct': {
          'type': 'object',
          'required': ['male', 'female', 'joint_male_female'],
          'additionalProperties': {
            'type': 'number',
            'minimum': 0,
            'maximum': 20,
          },
        },
        'includes_metro_cess': {'type': 'boolean'},
        'registration_pct': {'type': 'number', 'minimum': 0, 'maximum': 20},
        'registration_cap_inr': {'type': 'integer', 'minimum': 0},
        'gst_pct': {
          'type': 'object',
          'additionalProperties': {
            'type': 'number',
            'minimum': 0,
            'maximum': 20,
          },
        },
        'affordable_housing': {
          'type': 'object',
          'properties': {
            'max_carpet_sqm_metro': {'type': 'number', 'minimum': 0},
            'max_value_inr': {'type': 'integer', 'minimum': 0},
          },
        },
        'tds_pct_if_value_at_least': {
          'type': 'object',
          'properties': {
            'pct': {'type': 'number', 'minimum': 0, 'maximum': 20},
            'threshold_inr': {'type': 'integer', 'minimum': 0},
          },
        },
      },
    },
    'notes': {
      'type': 'array',
      'items': {'type': 'string'},
    },
  },
};

/// One problem found in an imported file, with the JSON path it refers to.
class SchemaProblem {
  const SchemaProblem(this.path, this.message);

  /// JSON pointer such as `/scam_patterns/2/severity`; empty for the root.
  final String path;
  final String message;

  @override
  String toString() => path.isEmpty ? message : '$path: $message';
}

final JsonSchema _schema = JsonSchema.create(riskSchemaV1);

/// Validates decoded risk data; an empty list means valid.
List<SchemaProblem> validateRiskData(Object? json) {
  final result = _schema.validate(json);
  return [
    for (final e in result.errors) SchemaProblem(e.instancePath, e.message),
  ];
}
