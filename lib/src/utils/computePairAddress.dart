EthereumAddress computePairAddress(EthereumAddress factoryAddress, Token tokenA, Token tokenB) {
  var tokens = tokenA.sortsBefore(tokenB) ? [tokenA, tokenB] : [tokenB, tokenA];

  var startBytes = hexToBytes('0xff');
  var factoryBytes = hexToBytes(factoryAddress.hex);
  var saltBytes = keccak256(hexToBytes(tokens[0].address.hexNo0x + tokens[1].address.hexNo0x));
  var initCodeHashBytes = hexToBytes(INIT_CODE_HASH);

  return EthereumAddress(keccak256(Uint8List.fromList(startBytes + factoryBytes + saltBytes + initCodeHashBytes)).sublist(12));
}
