import 'base_currency.dart';

/// Represents the native currency of the chain on which it resides, e.g.
abstract class NativeCurrency extends BaseCurrency {
  @override
  final bool isNative = true;

  @override
  final bool isToken = false;

  NativeCurrency({
    required int chainId,
    required int decimals,
    String? symbol,
    String? name,
  }) : super(
          chainId: chainId,
          decimals: decimals,
          symbol: symbol,
          name: name,
        );
}