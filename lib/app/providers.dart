import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/bundled_assets.dart';
import '../domain/engine/engine.dart';

part 'providers.g.dart';

/// The rate profile new estimates use.
@Riverpod(keepAlive: true)
Future<RateProfile> activeProfile(Ref ref) async {
  final data = await BundledAssets.load(BundledAssets.rateProfiles);
  final profiles = (data['profiles'] as List).cast<Map<String, dynamic>>();
  return RateProfile.fromJson(profiles.first);
}
