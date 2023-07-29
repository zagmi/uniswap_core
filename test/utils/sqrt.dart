import 'dart:math';
import 'package:test/test.dart';
import 'package:uniswap_core/src/constants.dart';
import 'package:uniswap_core/src/utils/sqrt.dart';

void main() {
  group('#sqrt', () {
    test('correct for 0-1000', () {
      for (var i = 0; i < 1000; i++) {
        expect(sqrt(BigInt.from(i)), equals(BigInt.from(sqrt(i as BigInt) as num)));
      }
    });

    group('correct for all even powers of 2', () {
      for (var i = 0; i < 256; i++) {
        test('2^${i * 2}', () {
          final root = BigInt.from(pow(2, i));
          final rootSquared = root * root;

          expect(sqrt(rootSquared), equals(root));
        });
      }
    });

    test('correct for MaxUint256', () {
      expect(sqrt(maxUint256), equals(BigInt.parse('340282366920938463463374607431768211455')));
    });
  });
}