import 'token.dart';

/// A currency is any fungible financial instrument, including Ether, all ERC20 tokens, and other chain-native currencies
abstract class BaseCurrency {
  /// Returns whether the currency is native to the chain and must be wrapped (e.g. Ether)
  bool get isNative;

  /// Returns whether the currency is a token that is usable in Uniswap without wrapping
  bool get isToken;

  /// The chain ID on which this currency resides
  final num chainId;

  /// The decimals used in representing currency amounts
  final num decimals;

  /// The symbol of the currency, i.e. a short textual non-unique identifier
  final String? symbol;

  /// The name of the currency, i.e. a descriptive textual non-unique identifier
  final String? name;

  /// Constructs an instance of the base class `BaseCurrency`.
  BaseCurrency({
    required this.chainId,
    required this.decimals,
    this.symbol,
    this.name,
  })  : assert(chainId.isFinite && chainId is int, 'CHAIN_ID'),
        assert(decimals >= 0 && decimals < 255 && decimals is int, 'DECIMALS');

  /// Returns whether this currency is functionally equivalent to the other currency
  bool equals(other);

  /// Return the wrapped version of this currency that can be used with the Uniswap contracts. Currencies must
  /// implement this to be used in Uniswap
  Token get wrapped;
}