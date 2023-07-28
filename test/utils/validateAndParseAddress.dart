import 'package:test/test.dart';
import 'package:uniswap_core/src/utils/validateAndParseAddress.dart';

void main() {
  group('#validateAndParseAddress', () {
    test('returns same address if already checksummed', () {
      expect(
          validateAndParseAddress('0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f'),
          '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f');
    });

    test('returns checksummed address if not checksummed', () {
      expect(
          validateAndParseAddress(
              '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f'.toLowerCase()),
          '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f');
    });

    test('throws if not valid', () {
      expect(
          () => validateAndParseAddress(
              '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6'),
          throwsA(isA<Exception>().having((e) => e.toString(), 'message',
              '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6 is not a valid address.')));
    });
  });

  group('#checkValidAddress', () {
    test('returns same address if valid', () {
      expect(checkValidAddress('0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f'),
          '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f');
    });

    test('throws if length < 42', () {
      expect(
          () => checkValidAddress('0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6'),
          throwsA(isA<Exception>().having((e) => e.toString(), 'message',
              '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6 is not a valid address.')));
    });

    test('throws if length > 42', () {
      expect(
          () =>
              checkValidAddress('0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6fA'),
          throwsA(isA<Exception>().having((e) => e.toString(), 'message',
              '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6fA is not a valid address.')));
    });

    test('throws if it does not start with 0x', () {
      expect(
          () => checkValidAddress('5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f'),
          throwsA(isA<Exception>().having((e) => e.toString(), 'message',
              '5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f is not a valid address.')));
    });

    test('throws if it is not a HEX string', () {
      expect(
          () => checkValidAddress('0x5C69bEe701ef814a2X6a3EDD4B1652CB9cc5aA6f'),
          throwsA(isA<Exception>().having((e) => e.toString(), 'message',
              '0x5C69bEe701ef814a2X6a3EDD4B1652CB9cc5aA6f is not a valid address.')));
    });
  });
}
