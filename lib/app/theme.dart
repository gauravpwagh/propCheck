import 'package:flutter/material.dart';

const _seed = Color(0xFF1B6E5A);

ThemeData buildTheme(Brightness brightness) {
  final scheme = ColorScheme.fromSeed(seedColor: _seed, brightness: brightness);
  return ThemeData(
    colorScheme: scheme,
    useMaterial3: true,
    visualDensity: VisualDensity.standard,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    cardTheme: const CardThemeData(margin: EdgeInsets.zero),
  );
}

/// Colours for flag severities that work in both themes.
extension SeverityColors on ColorScheme {
  Color get critical => error;
  Color get warning => brightness == Brightness.light
      ? const Color(0xFF9A5B00)
      : const Color(0xFFFFB95C);
  Color get info => primary;
}
