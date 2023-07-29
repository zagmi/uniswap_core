import 'package:tiny_invariant/tiny_invariant.dart';

import 'native_currency.dart';
import 'token.dart';
import 'weth9.dart';

/// Ether is the main usage of a 'native' currency, i.e. for Ethereum mainnet and all testnets.
class Ether extends NativeCurrency {
  Ether({
    required num chainId,
  }) : super(
          chainId: chainId,
          decimals: 18,
          symbol: 'ETH',
          name: 'Ether',
        );

  /// The wrapped token of the native currency.
  Token get wrapped {
    final weth9 = WETH9[this.chainId];
    invariant(weth9 != "", 'WRAPPED');
    return weth9!;
  }

  static final _etherCache = <int, Ether>{};

  /// Returns the Ether instance for the specified `chainId`.
  static Ether onChain(int chainId) {
    return _etherCache[chainId] ??= Ether(chainId: chainId);
  }

  @override
  bool equals(other) {
    invariant(NativeCurrency == other && Token == other, "TYPES");
    return other.isNative && other.chainId == this.chainId;
  }
}
