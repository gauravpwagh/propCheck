import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prop_check/app/app.dart';
import 'package:prop_check/app/providers.dart';
import 'package:prop_check/app/router.dart';
import 'package:prop_check/data/db/app_database.dart';
import 'package:prop_check/data/repositories/guidance_repository.dart';
import 'package:prop_check/data/repositories/property_repository.dart';
import 'package:prop_check/data/repositories/rate_profile_repository.dart';
import 'package:prop_check/domain/engine/engine.dart';
import 'package:prop_check/domain/models/saved_property.dart';

import 'fixtures.dart';

/// Full app over an in-memory database, for end-to-end widget tests.
class AppHarness {
  AppHarness() : db = AppDatabase.memory();

  final AppDatabase db;
  late ProviderContainer container;

  Future<void> pump(WidgetTester tester, {String location = '/'}) async {
    container = ProviderContainer(
      overrides: [
        appDatabaseProvider.overrideWithValue(db),
        assetSourceProvider.overrideWithValue(const FileAssetSource()),
      ],
    );
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: PropCheckApp(router: buildRouter(initialLocation: location)),
      ),
    );
    await settle(tester);
  }

  /// Lets real async work (sqlite) finish, then settles frames.
  Future<void> settle(WidgetTester tester) async {
    // pumpAndSettle would spin forever on a progress indicator, so alternate
    // fake-time pumps with short real waits.
    for (var i = 0; i < 15; i++) {
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 20)),
      );
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  /// Saves a golden-case input and its cache; returns the id. Call before
  /// [pump].
  Future<int> saveGolden(
    WidgetTester tester,
    int index, {
    required String name,
  }) async {
    final golden = readJson('test_fixtures/golden_cases.json');
    final c = (golden['cases'] as List)[index] as Map<String, dynamic>;
    final input = PropertyInput.fromJson(c['input'] as Map<String, dynamic>);
    final profile = bundledProfile();
    final now = DateTime(2026, 11, 6);
    // Runs in the real zone before the app starts, so drift's futures
    // complete without fake-time pumps.
    final id = await tester.runAsync(() async {
      await RateProfileRepository(db, const FileAssetSource()).seedIfEmpty();
      await GuidanceRepository(db, const FileAssetSource()).seedIfEmpty();
      final repo = PropertyRepository(db);
      final id = await repo.save(
        SavedProperty(
          name: name,
          mode: EstimateMode.priceToTotal,
          profileId: profile.id,
          rateVersion: profile.version,
          input: input,
          createdAt: now,
          updatedAt: now,
        ),
      );
      await repo.writeCache(
        id,
        profile.version,
        computeOutcome(input, profile, mode: EstimateMode.priceToTotal)!,
      );
      return id;
    });
    return id!;
  }

  /// Unmounts and closes so drift's timers fire inside the test.
  Future<void> dispose(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox());
    container.dispose();
    // Let in-flight queries and drift's stream-close timers finish before
    // closing, or close() waits forever on fake time.
    await settle(tester);
    await tester.runAsync(db.close);
  }
}
