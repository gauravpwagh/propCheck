import 'package:go_router/go_router.dart';

import '../features/compare/compare_screen.dart';
import '../features/home/home_screen.dart';
import '../features/property/property_detail_screen.dart';
import '../features/risks/risks_screen.dart';
import '../features/settings/profile_editor_screen.dart';
import '../features/settings/profile_fields.dart';
import '../features/settings/risk_import_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/wizard/wizard_screen.dart';

GoRouter buildRouter({String initialLocation = '/'}) => GoRouter(
  initialLocation: initialLocation,
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/wizard',
      builder: (context, state) =>
          WizardScreen(launch: state.extra as WizardLaunch?),
    ),
    GoRoute(
      path: '/property/:id',
      builder: (context, state) =>
          PropertyDetailScreen(id: int.parse(state.pathParameters['id']!)),
    ),
    GoRoute(
      path: '/risks',
      builder: (context, state) =>
          RisksScreen(highlight: state.uri.queryParameters['pattern']),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
      routes: [
        GoRoute(
          path: 'profile/:section',
          builder: (context, state) => ProfileEditorScreen(
            section: EditorSection.values.byName(
              state.pathParameters['section']!,
            ),
          ),
        ),
        GoRoute(
          path: 'risk-import',
          builder: (context, state) => const RiskImportScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/compare',
      builder: (context, state) =>
          CompareScreen(ids: state.uri.queryParameters['ids'] ?? ''),
    ),
  ],
);
