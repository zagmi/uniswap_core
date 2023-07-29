import 'dart:math' as math;
import 'package:tiny_invariant/tiny_invariant.dart';

final maxSafeInteger = BigInt.from(2^53 - 1);

final zero = BigInt.from(0);
final one = BigInt.from(1);
final two = BigInt.from(2);

/// Computes floor(sqrt(value))
/// `value` the value for which to compute the square root, rounded down
BigInt sqrt(BigInt value) {
  invariant(value >= zero, "NEGATIVE");
  // rely on built in sqrt if possible
  if (value < maxSafeInteger) {
    return BigInt.from((math.sqrt(num.parse(value.toString())).floor()));
  }

  BigInt z;
  BigInt x;
  z = value;
  x = ((value / two) + num.parse(one.toString())) as BigInt;
  while (x < z) {
    z = x;
    x = (((value / x) + num.parse(x.toString())) / num.parse(two.toString()))
        as BigInt;
  }
  return z;
}
