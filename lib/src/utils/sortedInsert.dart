import 'package:tiny_invariant/tiny_invariant.dart';

/// Given an array of items sorted by `comparator`, insert an item into its sort index and constrain the size to
/// `maxSize` by removing the last item.
///
/// Returns the removed item if the array is full, otherwise returns null.
T? sortedInsert<T>(
  List<T> items,
  T add,
  int maxSize,
  int Function(T a, T b) comparator,
) {
  // Ensure that maxSize is positive.
  invariant(maxSize > 0, 'MAX_SIZE_ZERO');

  // Ensure that the size of the items array is not larger than maxSize.
  invariant(items.length <= maxSize, 'ITEMS_SIZE');

  // Short circuit the first item add.
  if (items.isEmpty) {
    items.add(add);
    return null;
  } else {
    final isFull = items.length == maxSize;

    // Short circuit if full and the additional item does not come before the last item.
    if (isFull && comparator(items.last, add) <= 0) {
      return add;
    }

    var lo = 0;
    var hi = items.length;

    while (lo < hi) {
      final mid = (lo + hi) ~/ 2;
      if (comparator(items[mid], add) <= 0) {
        lo = mid + 1;
      } else {
        hi = mid;
      }
    }

    // Insert the item at its sort index.
    items.insert(lo, add);

    // If the array is full, remove the last item.
    return isFull ? items.removeLast() : null;
  }
}
