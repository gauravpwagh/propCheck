import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/app/theme.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/l10n/gen/app_localizations.dart';

/// Pumps [child] in a localized MaterialApp with the profile provider
/// overridden. Returns the container so tests can drive controllers.
Future<ProviderContainer> pumpWithProfile(
  WidgetTester tester,
  Widget child,
  RateProfile profile, {
  List<Override> overrides = const [],
}) async {
  final container = ProviderContainer(
    overrides: [
      activeProfileProvider.overrideWith((ref) => profile),
      ...overrides,
    ],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        theme: buildTheme(Brightness.light),
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
