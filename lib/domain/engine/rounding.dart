import 'dart:typed_data';

/// Rounding that reproduces `tools/reference_engine.py` bit for bit.
///
/// Python's `rnd(x)` is `Decimal(str(x))` rounded half up. Both Python's
/// `str(float)` and Dart's `double.toString()` print the shortest decimal that
/// round-trips, so rounding that decimal string half up (away from zero on
/// ties, like `ROUND_HALF_UP`) gives the same rupee.
int rnd(num x) {
  if (x is int) return x;
  final d = x as double;
  if (!d.isFinite) {
    throw ArgumentError.value(x, 'x', 'cannot round a non-finite value');
  }
  if (d == d.truncateToDouble() && d.abs() < 9e15) return d.toInt();
  return _roundDecimalStringHalfUp(d.toString());
}

int _roundDecimalStringHalfUp(String s) {
  var negative = false;
  if (s.startsWith('-')) {
    negative = true;
    s = s.substring(1);
  }
  var exp = 0;
  final eIdx = s.indexOf(RegExp('[eE]'));
  if (eIdx >= 0) {
    exp = int.parse(s.substring(eIdx + 1));
    s = s.substring(0, eIdx);
  }
  final dot = s.indexOf('.');
  var digits = s;
  if (dot >= 0) {
    exp -= s.length - dot - 1;
    digits = s.substring(0, dot) + s.substring(dot + 1);
  }
  // value = digits × 10^exp
  var mantissa = BigInt.parse(digits);
  BigInt result;
  if (exp >= 0) {
    result = mantissa * BigInt.from(10).pow(exp);
  } else {
    final div = BigInt.from(10).pow(-exp);
    final q = mantissa ~/ div;
    final r = mantissa - q * div;
    result = (r * BigInt.two >= div) ? q + BigInt.one : q;
  }
  mantissa = negative ? -result : result;
  return mantissa.toInt();
}

/// Python's built-in `round(x, ndigits)`: rounds the exact binary value of
/// [x] half to even, then returns the nearest double to that decimal.
double pyRound(double x, int ndigits) {
  if (!x.isFinite || x == 0) return x;
  final q = _roundExactHalfEven(x, ndigits);
  return double.parse('${q}e-$ndigits');
}

/// Python's `round(x)` with no digits: half to even, returns an int.
int pyRoundToInt(double x) => _roundExactHalfEven(x, 0).toInt();

/// Rounds x × 10^ndigits to an integer, half to even, using x's exact value.
BigInt _roundExactHalfEven(double x, int ndigits) {
  final bits = ByteData(8)..setFloat64(0, x);
  final raw = bits.getUint64(0);
  final negative = (raw >> 63) != 0;
  final biasedExp = (raw >> 52) & 0x7ff;
  final fraction = raw & 0xfffffffffffff;
  final mant = BigInt.from(biasedExp == 0 ? fraction : fraction | (1 << 52));
  final exp2 = (biasedExp == 0 ? 1 : biasedExp) - 1075;

  var num = mant * BigInt.from(10).pow(ndigits);
  var den = BigInt.one;
  if (exp2 >= 0) {
    num = num << exp2;
  } else {
    den = den << -exp2;
  }
  var q = num ~/ den;
  final r2 = (num - q * den) * BigInt.two;
  if (r2 > den || (r2 == den && q.isOdd)) q += BigInt.one;
  return negative ? -q : q;
}
