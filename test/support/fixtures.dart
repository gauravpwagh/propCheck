import 'dart:convert';
import 'dart:io';

import 'package:prop_check/domain/engine/engine.dart';

Map<String, dynamic> readJson(String path) =>
    jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;

RateProfile bundledProfile([String id = 'mumbai_bmc']) {
  final data = readJson('assets/data/rate_profiles.json');
  final profiles = (data['profiles'] as List).cast<Map<String, dynamic>>();
  return RateProfile.fromJson(profiles.firstWhere((p) => p['id'] == id));
}
