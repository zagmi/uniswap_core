import 'dart:ffi' as ffi;
import 'package:tiny_invariant/tiny_invariant.dart';

final maxSafeInteger = ffi.Int64. >> 1;

final zero = BigInt.from(0);
final one = BigInt.from(1);
final two = BigInt.from(2);

/// Computes floor(sqrt(value))
 /// `value` the value for which to compute the square root, rounded down

BigInt sqrt(num value) {
  invariant(value  >=zero.toInt(), "NEGATIVE");

  // rely on built in sqrt if possible
  if (value < maxSafeInteger.toInt()) {
    return BigInt.from(Math.floor(Math.sqrt(JSBI.toNumber(value))))
  }

  let z: JSBI
  let x: JSBI
  z = value
  x = JSBI.add(JSBI.divide(value, TWO), ONE)
  while (JSBI.lessThan(x, z)) {
    z = x
    x = JSBI.divide(JSBI.add(JSBI.divide(value, x), x), TWO)
  }
  return z;
}