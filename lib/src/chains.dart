enum ChainId {
  MAINNET,
  GOERLI,
  SEPOLIA,
  OPTIMISM,
  OPTIMISM_GOERLI,
  ARBITRUM_ONE,
  ARBITRUM_GOERLI,
  POLYGON,
  POLYGON_MUMBAI,
  CELO,
  CELO_ALFAJORES,
  GNOSIS,
  MOONBEAM,
  BNB,
  AVALANCHE,
  BASE_GOERLI,
  BASE
}

extension ChainIdExtension on ChainId {
  int get value {
    switch (this) {
      case ChainId.MAINNET:
        return 1;
      case ChainId.GOERLI:
        return 5;
      case ChainId.SEPOLIA:
        return 11155111;
      case ChainId.OPTIMISM:
        return 10;
      case ChainId.OPTIMISM_GOERLI:
        return 420;
      case ChainId.ARBITRUM_ONE:
        return 42161;
      case ChainId.ARBITRUM_GOERLI:
        return 421613;
      case ChainId.POLYGON:
        return 137;
      case ChainId.POLYGON_MUMBAI:
        return 80001;
      case ChainId.CELO:
        return 42220;
      case ChainId.CELO_ALFAJORES:
        return 44787;
      case ChainId.GNOSIS:
        return 100;
      case ChainId.MOONBEAM:
        return 1284;
      case ChainId.BNB:
        return 56;
      case ChainId.AVALANCHE:
        return 43114;
      case ChainId.BASE_GOERLI:
        return 84531;
      case ChainId.BASE:
        return 8453;
    }
  }
}

List<ChainId> SUPPORTED_CHAINS = [
  ChainId.MAINNET,
  ChainId.OPTIMISM,
  ChainId.OPTIMISM_GOERLI,
  ChainId.ARBITRUM_ONE,
  ChainId.ARBITRUM_GOERLI,
  ChainId.POLYGON,
  ChainId.POLYGON_MUMBAI,
  ChainId.GOERLI,
  ChainId.SEPOLIA,
  ChainId.CELO_ALFAJORES,
  ChainId.CELO,
  ChainId.BNB,
  ChainId.AVALANCHE,
  ChainId.BASE,
  ChainId.BASE_GOERLI
];

enum NativeCurrencyName { ETHER, MATIC, CELO, GNOSIS, MOONBEAM, BNB, AVAX }

extension NativeCurrencyNameExtension on NativeCurrencyName {
  String get value {
    switch (this) {
      case NativeCurrencyName.ETHER:
        return 'ETH';
      case NativeCurrencyName.MATIC:
        return 'MATIC';
      case NativeCurrencyName.CELO:
        return 'CELO';
      case NativeCurrencyName.GNOSIS:
        return 'XDAI';
      case NativeCurrencyName.MOONBEAM:
        return 'GLMR';
      case NativeCurrencyName.BNB:
        return 'BNB';
      case NativeCurrencyName.AVAX:
        return 'AVAX';
    }
  }
}
