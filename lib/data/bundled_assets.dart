import 'dart:convert';

import 'package:flutter/services.dart';

/// Paths of the JSON files bundled with the app.
abstract final class BundledAssets {
  static const rateProfiles = 'assets/data/rate_profiles.json';
  static const steps = 'assets/data/steps_mumbai.json';
  static const riskData = 'assets/data/mumbai_risk_data.json';

  static Future<Map<String, dynamic>> load(
    String path, [
    AssetBundle? bundle,
  ]) async {
    final text = await (bundle ?? rootBundle).loadString(path);
    return jsonDecode(text) as Map<String, dynamic>;
  }
}
