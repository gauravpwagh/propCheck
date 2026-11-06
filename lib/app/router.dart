import 'package:go_router/go_router.dart';

import '../features/compare/compare_screen.dart';
import '../features/home/home_screen.dart';
import '../features/property/property_detail_screen.dart';
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
      path: '/compare',
      builder: (context, state) =>
          CompareScreen(ids: state.uri.queryParameters['ids'] ?? ''),
    ),
  ],
);
