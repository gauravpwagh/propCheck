import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/providers.dart';
import '../../domain/engine/engine.dart';
import '../property/property_providers.dart';
import 'profile_fields.dart';

part 'profile_editor_controller.g.dart';

class ProfileEditorState {
  const ProfileEditorState({
    required this.original,
    required this.draft,
    this.errors = const {},
    this.dirty = false,
  });

  final RateProfile original;

  /// Deep copy of the profile JSON being edited.
  final Map<String, dynamic> draft;

  /// Field key → error; `as_of` for a malformed date.
  final Map<String, FieldError> errors;

  /// True once any field has changed.
  final bool dirty;

  bool get valid => errors.isEmpty;
}

@riverpod
class ProfileEditorController extends _$ProfileEditorController {
  @override
  Future<ProfileEditorState> build() async {
    final p = await ref.watch(activeProfileProvider.future);
    return ProfileEditorState(
      original: p,
      draft: jsonDecode(jsonEncode(p.toJson())) as Map<String, dynamic>,
    );
  }

  ProfileEditorState get _s => state.requireValue;

  void setField(ProfileField field, String raw) {
    final r = parseField(field, raw);
    final errors = Map<String, FieldError>.of(_s.errors);
    if (r.error != null) {
      errors[field.key] = r.error!;
    } else {
      errors.remove(field.key);
      writePath(_s.draft, field.path, r.value);
    }
    state = AsyncData(
      ProfileEditorState(
        original: _s.original,
        draft: _s.draft,
        errors: errors,
        dirty: true,
      ),
    );
  }

  /// Sets the as-of date; [valid] is false when it doesn't parse.
  void setAsOf(String raw) {
    final t = raw.trim();
    final ok =
        RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(t) &&
        DateTime.tryParse(t) != null;
    final errors = Map<String, FieldError>.of(_s.errors);
    if (ok) {
      errors.remove('as_of');
      _s.draft['as_of'] = t;
    } else {
      errors['as_of'] = FieldError.notANumber;
    }
    state = AsyncData(
      ProfileEditorState(
        original: _s.original,
        draft: _s.draft,
        errors: errors,
        dirty: true,
      ),
    );
  }

  /// Saves the draft as a new profile version and refreshes dependants.
  Future<RateProfile?> save() async {
    if (!_s.valid) return null;
    final edited = RateProfile.fromJson(_s.draft);
    final saved = await ref
        .read(rateProfileRepositoryProvider)
        .saveEdited(edited);
    ref
      ..invalidate(activeProfileProvider)
      ..invalidate(propertyViewProvider);
    return saved;
  }
}
