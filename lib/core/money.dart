import 'package:intl/intl.dart';

/// Indian-style money formatting. Display only; domain values are int rupees.
abstract final class Money {
  static final _grouped = NumberFormat.decimalPattern('en_IN');

  static const lakh = 100000;
  static const crore = 10000000;

  /// ₹12,34,567
  static String full(int rupees) =>
      '${rupees < 0 ? '-' : ''}₹${_grouped.format(rupees.abs())}';

  /// 12,34,567 (no symbol), for input fields.
  static String grouped(int rupees) => _grouped.format(rupees);

  /// "12.35 L", "1.02 Cr"; below a lakh falls back to [full].
  static String compact(int rupees) {
    final sign = rupees < 0 ? '-' : '';
    final a = rupees.abs();
    if (a >= crore) return '$sign${(a / crore).toStringAsFixed(2)} Cr';
    if (a >= lakh) return '$sign${(a / lakh).toStringAsFixed(2)} L';
    return full(rupees);
  }

  /// "₹12.35 L" – compact with the rupee symbol for headline numbers.
  static String compactWithSymbol(int rupees) {
    final c = compact(rupees);
    return c.contains('₹') ? c : '₹$c';
  }

  /// Parses "12,34,567", "12.5 L", "1.2 cr", "1200000" to rupees.
  static int? parse(String text) {
    var t = text.trim().toLowerCase().replaceAll('₹', '').replaceAll(',', '');
    if (t.isEmpty) return null;
    var multiplier = 1;
    if (t.endsWith('cr') || t.endsWith('crore')) {
      multiplier = crore;
      t = t.replaceAll(RegExp(r'cr(ore)?$'), '');
    } else if (t.endsWith('l') || t.endsWith('lakh') || t.endsWith('lac')) {
      multiplier = lakh;
      t = t.replaceAll(RegExp(r'(lakh|lac|l)$'), '');
    }
    final v = double.tryParse(t.trim());
    if (v == null) return null;
    return (v * multiplier).round();
  }
}
