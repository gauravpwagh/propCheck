import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import '../l10n/gen/app_localizations.dart';
import 'router.dart';
import 'theme.dart';

class PropCheckApp extends StatefulWidget {
  const PropCheckApp({super.key, this.router});

  /// Injected in tests.
  final GoRouter? router;

  @override
  State<PropCheckApp> createState() => _PropCheckAppState();
}

class _PropCheckAppState extends State<PropCheckApp> {
  late final GoRouter _router = widget.router ?? buildRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}
