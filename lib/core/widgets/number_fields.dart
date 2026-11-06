import 'package:flutter/material.dart';

import '../../l10n/gen/app_localizations.dart';
import '../money.dart';

/// Rupee input that accepts "85,00,000", "85 L" or "1.2 Cr" and shows the
/// value in lakh/crore underneath.
class MoneyField extends StatefulWidget {
  const MoneyField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.helper,
    this.required = false,
  });

  final String label;
  final int? value;
  final ValueChanged<int?> onChanged;
  final String? helper;
  final bool required;

  @override
  State<MoneyField> createState() => _MoneyFieldState();
}

class _MoneyFieldState extends State<MoneyField> {
  late final _controller = TextEditingController(
    text: widget.value == null ? '' : Money.grouped(widget.value!),
  );
  int? _parsed;

  @override
  void initState() {
    super.initState();
    _parsed = widget.value;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final text = _controller.text.trim();
    final invalid = text.isNotEmpty && _parsed == null;
    final words = _parsed == null ? null : Money.compact(_parsed!);
    final helper = [
      if (words != null && _parsed! >= Money.lakh) l.commonAmountInWords(words),
      ?widget.helper,
    ].join('\n');
    return TextField(
      controller: _controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: widget.required
            ? widget.label
            : '${widget.label} (${l.commonOptional.toLowerCase()})',
        hintText: l.commonAmountHint,
        helperText: helper.isEmpty ? null : helper,
        helperMaxLines: 4,
        errorText: invalid ? l.commonInvalidNumber : null,
        prefixText: '₹ ',
      ),
      onChanged: (t) {
        setState(() => _parsed = Money.parse(t));
        widget.onChanged(_parsed);
      },
    );
  }
}

/// Plain number input (int or decimal).
class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.helper,
    this.suffix,
    this.decimal = false,
    this.validator,
  });

  final String label;
  final num? value;
  final ValueChanged<num?> onChanged;
  final String? helper;
  final String? suffix;
  final bool decimal;

  /// Returns an error message, or null when valid.
  final String? Function(num? value)? validator;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  late final _controller = TextEditingController(text: _format(widget.value));
  String? _error;

  static String _format(num? v) {
    if (v == null) return '';
    if (v is double && v == v.roundToDouble()) return v.toInt().toString();
    if (v is double) return double.parse(v.toStringAsFixed(2)).toString();
    return v.toString();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.numberWithOptions(decimal: widget.decimal),
      decoration: InputDecoration(
        labelText: widget.label,
        helperText: widget.helper,
        helperMaxLines: 4,
        suffixText: widget.suffix,
        errorText: _error,
      ),
      onChanged: (t) {
        final trimmed = t.trim().replaceAll(',', '');
        num? v;
        String? err;
        if (trimmed.isNotEmpty) {
          v = widget.decimal ? double.tryParse(trimmed) : int.tryParse(trimmed);
          if (v == null) err = l.commonInvalidNumber;
        }
        err ??= widget.validator?.call(v);
        setState(() => _error = err);
        if (err == null) widget.onChanged(v);
      },
    );
  }
}

/// A list of selectable cards with a title and help line.
class ChoiceList<T> extends StatelessWidget {
  const ChoiceList({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelected,
  });

  final List<({T value, String title, String? help})> options;
  final T selected;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<T>(
      groupValue: selected,
      onChanged: (v) {
        if (v != null) onSelected(v);
      },
      child: Column(
        children: [
          for (final o in options)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Card(
                child: RadioListTile<T>(
                  value: o.value,
                  title: Text(o.title),
                  subtitle: o.help == null ? null : Text(o.help!),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
