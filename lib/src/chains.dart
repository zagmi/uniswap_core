enum ChainId {
  mainnet,
  goerli,
  sepolia,
  optimism,
  optimismGoerli,
  arbitrOne,
  arbitrGoerli,
  polygon,
  polygonMumbai,
  celo,
  celoAlfajores,
  gnosis,
  moonbeam,
  bnb,
  avalanche,
  baseGoerli,
  base,
}

extension ChainIdExtension on ChainId {
  int get value {
    switch (this) {
      case ChainId.mainnet:
        return 1;
      case ChainId.goerli:
        return 5;
      case ChainId.sepolia:
        return 11155111;
      case ChainId.optimism:
        return 10;
      case ChainId.optimismGoerli:
        return 420;
      case ChainId.arbitrOne:
        return 42161;
      case ChainId.arbitrGoerli:
        return 421613;
      case ChainId.polygon:
        return 137;
      case ChainId.polygonMumbai:
        return 80001;
      case ChainId.celo:
        return 42220;
      case ChainId.celoAlfajores:
        return 44787;
      case ChainId.gnosis:
        return 100;
      case ChainId.moonbeam:
        return 1284;
      case ChainId.bnb:
        return 56;
      case ChainId.avalanche:
        return 43114;
      case ChainId.baseGoerli:
        return 84531;
      case ChainId.base:
        return 8453;
    }
  }
}

List<ChainId> supportedChains = [
  ChainId.mainnet,
  ChainId.optimism,
  ChainId.optimismGoerli,
  ChainId.arbitrOne,
  ChainId.arbitrGoerli,
  ChainId.polygon,
  ChainId.polygonMumbai,
  ChainId.goerli,
  ChainId.sepolia,
  ChainId.celoAlfajores,
  ChainId.celo,
  ChainId.bnb,
  ChainId.avalanche,
  ChainId.base,
  ChainId.baseGoerli,
];

enum NativeCurrencyName {
  ether,
  matic,
  celo,
  gnosis,
  moonbeam,
  bnb,
  avax,
}

extension NativeCurrencyNameExtension on NativeCurrencyName {
  String get value {
    switch (this) {
      case NativeCurrencyName.ether:
        return 'ETH';
      case NativeCurrencyName.matic:
        return 'MATIC';
      case NativeCurrencyName.celo:
        return 'CELO';
      case NativeCurrencyName.gnosis:
        return 'XDAI';
      case NativeCurrencyName.moonbeam:
        return 'GLMR';
      case NativeCurrencyName.bnb:
        return 'BNB';
      case NativeCurrencyName.avax:
        return 'AVAX';
    }
  }
}
