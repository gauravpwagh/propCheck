import 'package:flutter/material.dart';

/// Label and value on one line when they fit; otherwise the value moves
/// below the label. Keeps rows readable at large text sizes.
class LabelValue extends StatelessWidget {
  const LabelValue({
    super.key,
    required this.label,
    required this.value,
    this.style,
    this.semanticValue,
  });

  final String label;
  final String value;
  final TextStyle? style;

  /// Screen-reader text for the value, if different.
  final String? semanticValue;

  @override
  Widget build(BuildContext context) => SizedBox(
    // Full width so spaceBetween pushes the value to the right edge.
    width: double.infinity,
    child: Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 12,
      children: [
        Text(label, style: style),
        Semantics(
          label: semanticValue ?? value,
          excludeSemantics: true,
          child: Text(value, style: style),
        ),
      ],
    ),
  );
}
