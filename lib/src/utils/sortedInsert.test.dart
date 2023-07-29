import 'package:test/test.dart';
import 'package:uniswap_core/src/utils/sortedInsert.dart';

void main() {
  final comp = (a, b) => a - b;

  group('#sortedInsert', () {
    test('throws if maxSize is 0', () {
      expect(() => sortedInsert(<int>[], 1, 0, comp as int Function(int a, int b)), throwsA('MAX_SIZE_ZERO'));
    });

    test('throws if items.length > maxSize', () {
      expect(() => sortedInsert(<int>[1, 2], 1, 1, comp as int Function(int a, int b)), throwsA('ITEMS_SIZE'));
    });

    test('adds if empty', () {
      final arr = <int>[];
      expect(sortedInsert(arr, 3, 2, comp as int Function(int a, int b)), equals(null));
      expect(arr, equals([3]));
    });

    test('adds if not full', () {
      final arr = <int>[1, 5];
      expect(sortedInsert(arr, 3, 3, comp as int Function(int a, int b)), equals(null));
      expect(arr, equals([1, 3, 5]));
    });

    test('adds if will not be full after', () {
      final arr = <int>[1];
      expect(sortedInsert(arr, 0, 3, comp as int Function(int a, int b)), equals(null));
      expect(arr, equals([0, 1]));
    });

    test('returns add if sorts after last', () {
      final arr = <int>[1, 2, 3];
      expect(sortedInsert(arr, 4, 3, comp as int Function(int a, int b)), equals(4));
      expect(arr, equals([1, 2, 3]));
    });

    test('removes from end if full', () {
      final arr = <int>[1, 3, 4];
      expect(sortedInsert(arr, 2, 3, comp as int Function(int a, int b)), equals(4));
      expect(arr, equals([1, 2, 3]));
    });

    test('uses comparator', () {
      final arr = <int>[4, 2, 1];
      expect(sortedInsert(arr, 3, 3, (a, b) => comp(a, b) * -1), equals(1));
      expect(arr, equals([4, 3, 2]));
    });

    group('maxSize of 1', () {
      test('empty add', () {
        final arr = <int>[];
        expect(sortedInsert(arr, 3, 1, comp as int Function(int a, int b)), equals(null));
        expect(arr, equals([3]));
      });

      test('full add greater', () {
        final arr = <int>[2];
        expect(sortedInsert(arr, 3, 1, comp as int Function(int a, int b)), equals(3));
        expect(arr, equals([2]));
      });

      test('full add lesser', () {
        final arr = <int>[4];
        expect(sortedInsert(arr, 3, 1, comp as int Function(int a, int b)), equals(4));
        expect(arr, equals([3]));
      });
    });
  });
}