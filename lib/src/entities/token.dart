import 'package:tiny_invariant/tiny_invariant.dart';
import 'base_currency.dart';
import '../utils/utils.dart';

/// Represents an ERC20 token with a unique address and some metadata.
class Token extends BaseCurrency {
  @override
  final bool isNative = false;

  @override
  final bool isToken = true;

  /// The contract address on the chain on which this token lives
  late final String address;

  /// Constructs an instance of the `Token` class.
  ///
  /// If `bypassChecksum` is `true`, only basic validation of the address is performed,
  /// otherwise the address is validated against the checksum.
  Token({
    required num chainId,
    required String address,
    required num decimals,
    String? symbol,
    String? name,
    bool bypassChecksum = false,
  })  : assert(chainId.isFinite && chainId is int, 'CHAIN_ID'),
        assert(decimals >= 0 && decimals < 255 && decimals is int, 'DECIMALS'),
        super(
          chainId: chainId,
          decimals: decimals,
          symbol: symbol,
          name: name,
        ) {
    if (bypassChecksum) {
      this.address = checkValidAddress(address);
    } else {
      this.address = validateAndParseAddress(address);
    }
  }

  /// Returns true if the two tokens are equivalent, i.e. have the same chainId and address.
  bool equals(Currency other) {
    return other.isToken &&
        this.chainId == other.chainId &&
        this.address.toLowerCase() == other.address.toLowerCase();
  }

  /// Returns true if the address of this token sorts before the address of the other token
  bool sortsBefore(Token other) {
    invariant(this.chainId == other.chainId, 'CHAIN_IDS');
    invariant(
        this.address.toLowerCase() != other.address.toLowerCase(), 'ADDRESSES');
    return this.address.toLowerCase().compareTo(other.address.toLowerCase()) <
        0;
  }

  /// Return this token, which does not need to be wrapped
  Token get wrapped => this;
}
