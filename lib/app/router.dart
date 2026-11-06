import 'package:go_router/go_router.dart';

import '../features/home/home_screen.dart';
import '../features/wizard/wizard_screen.dart';

GoRouter buildRouter() => GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/wizard', builder: (context, state) => const WizardScreen()),
  ],
);
