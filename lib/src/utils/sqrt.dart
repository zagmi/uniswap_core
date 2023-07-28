
import 'dart:math';
import 'package:tiny_invariant/tiny_invariant.dart';

final maxSafeInteger = BigInt.from(Number.MAX_SAFE_INTEGER);

final zero = BigInt.from(0);
final one = BigInt.from(1);
final two = BigInt.from(2);

/**
 * Computes floor(sqrt(value))
 * @param value the value for which to compute the square root, rounded down
 */
BigInt sqrt(num value) {
  invariant(value.(value, ZERO), 'NEGATIVE')

  // rely on built in sqrt if possible
  if (value < maxSafeInteger) {
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