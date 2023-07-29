import 'dart:math' as math;
import 'package:tiny_invariant/tiny_invariant.dart';

final maxSafeInteger = BigInt.from(math.pow(2, 53)) - BigInt.one;

final zero = BigInt.from(0);
final one = BigInt.from(1);
final two = BigInt.from(2);

/// Computes floor(sqrt(value))
 /// `value` the value for which to compute the square root, rounded down

BigInt sqrt(BigInt value) {
  invariant(value  >=zero, "NEGATIVE");
  // rely on built in sqrt if possible
  if (value < maxSafeInteger) {
    return BigInt.from(Math.floor(Math.sqrt(JSBI.toNumber(value))))
  }

  BigInt z;
  BigInt x;
  z = value;
  x = (BigInt.from(value) / two) + one;
  while (x < z) {
    z = x;
    x = JSBI.divide(JSBI.add(JSBI.divide(value, x), x), TWO);
  }
  return z;
}