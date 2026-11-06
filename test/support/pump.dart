import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/app/theme.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/domain/guidance/guidance_models.dart';
import 'package:prop_check/features/guidance/guidance_providers.dart';
import 'package:prop_check/l10n/gen/app_localizations.dart';

import 'fixtures.dart';

/// Pumps [child] in a localized MaterialApp with the profile and guidance
/// providers overridden (no database). Returns the container so tests can drive controllers.
Future<ProviderContainer> pumpWithProfile(
  WidgetTester tester,
  Widget child,
  RateProfile profile, {
  List<Override> overrides = const [],
  Brightness brightness = Brightness.light,
}) async {
  final container = ProviderContainer(
    overrides: [
      activeProfileProvider.overrideWith((ref) => profile),
      riskDataProvider.overrideWith(
        (ref) =>
            RiskData.fromJson(readJson('assets/data/mumbai_risk_data.json')),
      ),
      stepsDataProvider.overrideWith(
        (ref) => StepsData.fromJson(readJson('assets/data/steps_mumbai.json')),
      ),
      ...overrides,
    ],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        theme: buildTheme(brightness),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: child,
      ),
    ),
  );
  await tester.pumpAndSettle();
  return container;
}
