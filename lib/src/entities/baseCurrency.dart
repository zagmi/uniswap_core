import 'package:tiny_invariant/tiny_invariant.dart';

///  A currency is any fungible financial instrument, including Ether, all ERC20 tokens, and other chain-native currencies
abstract class BaseCurrency {
  ///  Returns whether the currency is native to the chain and must be wrapped (e.g. Ether)
  late final bool isNative;

  /// Returns whether the currency is a token that is usable in Uniswap without wrapping
  late final bool isToken;

  /// The chain ID on which this currency resides
  late final num chainId;

  /// The decimals used in representing currency amounts
  late final num decimals;

  /// The symbol of the currency, i.e. a short textual non-unique identifier
  late final String? symbol;

  /// The name of the currency, i.e. a descriptive textual non-unique identifier
  late final String? name;

  /// Constructs an instance of the base class `BaseCurrency`-
  /// `chainId` the chain ID on which this currency resides
  /// `decimals` of the currency
  /// `symbol` of the currency
  /// `name` of the currency
  BaseCurrency(num chainId, num decimals, String? symbol, String? name) {
    invariant(chainId is int, 'CHAIN_ID');
    invariant(decimals >= 0 && decimals < 255 && decimals is int, 'DECIMALS');

    this.chainId = chainId;
    this.decimals = decimals;
    this.symbol = symbol;
    this.name = name;
  }

  /// Returns whether this currency is functionally equivalent to the other currency
  /// `other` the other currency
  bool equals(Currency other);

  /// Return the wrapped version of this currency that can be used with the Uniswap contracts. Currencies must
  /// implement this to be used in Uniswap 
  Token get wrapped;
}
