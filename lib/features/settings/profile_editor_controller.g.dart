// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_editor_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileEditorController)
final profileEditorControllerProvider = ProfileEditorControllerProvider._();

final class ProfileEditorControllerProvider
    extends
        $AsyncNotifierProvider<ProfileEditorController, ProfileEditorState> {
  ProfileEditorControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileEditorControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileEditorControllerHash();

  @$internal
  @override
  ProfileEditorController create() => ProfileEditorController();
}

String _$profileEditorControllerHash() =>
    r'aa7b10305fbc3baa570818f0ed4c4f3e5ec669e1';

abstract class _$ProfileEditorController
    extends $AsyncNotifier<ProfileEditorState> {
  FutureOr<ProfileEditorState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProfileEditorState>, ProfileEditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProfileEditorState>, ProfileEditorState>,
              AsyncValue<ProfileEditorState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
