import 'chains.dart';

class ChainAddresses {
  final String v3CoreFactoryAddress;
  final String multicallAddress;
  final String quoterAddress;
  final String? v3MigratorAddress;
  final String? nonfungiblePositionManagerAddress;
  final String? tickLensAddress;
  final String? swapRouter02Address;
  final String? v1MixedRouteQuoterAddress;

  ChainAddresses({
    required this.v3CoreFactoryAddress,
    required this.multicallAddress,
    required this.quoterAddress,
    this.v3MigratorAddress,
    this.nonfungiblePositionManagerAddress,
    this.tickLensAddress,
    this.swapRouter02Address,
    this.v1MixedRouteQuoterAddress,
  });
}

final List<ChainId> defaultNetworks = [ChainId.mainnet, ChainId.goerli];

Map<ChainId, String> constructSameAddressMap(String address,
    [List<ChainId> additionalNetworks = const []]) {
  var addressMap = <ChainId, String>{};

  for (var chainId in defaultNetworks) {
    addressMap[chainId] = address;
  }

  for (var chainId in additionalNetworks) {
    addressMap[chainId] = address;
  }

  return addressMap;
}

final uniAddresses =
    constructSameAddressMap('0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984', [
  ChainId.optimism,
  ChainId.arbitrOne,
  ChainId.polygon,
  ChainId.polygonMumbai,
  ChainId.sepolia,
]);

const uniswapNftAirdropClaimAddress =
    '0x8B799381ac40b838BBA4131ffB26197C432AFe78';

const v2FactoryAddress = '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f';
final v2FactoryAddresses = constructSameAddressMap(v2FactoryAddress);

const v2RouterAddress = '0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D';
final v2RouterAddresses = constructSameAddressMap(v2RouterAddress);

/// Networks that share most of the same addresses i.e. Mainnet, Goerli, Optimism, Arbitrum, Polygon
final ChainAddresses defaultAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0x1F98431c8aD98523631AE4a59f267346ea31F984',
  multicallAddress: '0x1F98415757620B543A52E61c46B32eB19261F984',
  quoterAddress: '0xb27308f9F90D607463bb33eA1BeBb41C27CE5AB6',
  v3MigratorAddress: '0xA5644E29708357803b5A882D272c41cC0dF92B34',
  nonfungiblePositionManagerAddress:
      '0xC36442b4a4522E871399CD717aBDD847Ab11FE88',
);

final ChainAddresses mainnetAddresses = ChainAddresses(
  v3CoreFactoryAddress: defaultAddresses.v3CoreFactoryAddress,
  multicallAddress: defaultAddresses.multicallAddress,
  quoterAddress: defaultAddresses.quoterAddress,
  v3MigratorAddress: defaultAddresses.v3MigratorAddress,
  nonfungiblePositionManagerAddress:
      defaultAddresses.nonfungiblePositionManagerAddress,
  v1MixedRouteQuoterAddress: '0x84E44095eeBfEC7793Cd7d5b57B7e401D7f1cA2E',
);

final ChainAddresses goerliAddresses = ChainAddresses(
  v3CoreFactoryAddress: defaultAddresses.v3CoreFactoryAddress,
  multicallAddress: defaultAddresses.multicallAddress,
  quoterAddress: defaultAddresses.quoterAddress,
  v3MigratorAddress: defaultAddresses.v3MigratorAddress,
  nonfungiblePositionManagerAddress:
      defaultAddresses.nonfungiblePositionManagerAddress,
  v1MixedRouteQuoterAddress: '0xBa60b6e6fF25488308789E6e0A65D838be34194e',
);

final ChainAddresses optimismAddresses = defaultAddresses;

final ChainAddresses arbitrumOneAddresses = ChainAddresses(
  v3CoreFactoryAddress: defaultAddresses.v3CoreFactoryAddress,
  multicallAddress: '0xadF885960B47eA2CD9B55E6DAc6B42b7Cb2806dB',
  quoterAddress: defaultAddresses.quoterAddress,
  v3MigratorAddress: defaultAddresses.v3MigratorAddress,
  nonfungiblePositionManagerAddress:
      defaultAddresses.nonfungiblePositionManagerAddress,
  tickLensAddress: '0xbfd8137f7d1516D3ea5cA83523914859ec47F573',
);

final ChainAddresses polygonAddresses = defaultAddresses;

/// celo v3 addresses
final ChainAddresses celoAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0xAfE208a311B21f13EF87E33A90049fC17A7acDEc',
  multicallAddress: '0x633987602DE5C4F337e3DbF265303A1080324204',
  quoterAddress: '0x82825d0554fA07f7FC52Ab63c961F330fdEFa8E8',
  v3MigratorAddress: '0x3cFd4d48EDfDCC53D3f173F596f621064614C582',
  nonfungiblePositionManagerAddress:
      '0x3d79EdAaBC0EaB6F08ED885C05Fc0B014290D95A',
  tickLensAddress: '0x5f115D9113F88e0a0Db1b5033D90D4a9690AcD3D',
);

/// BNB v3 addresses
final ChainAddresses bnbAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0xdB1d10011AD0Ff90774D0C6Bb92e5C5c8b4461F7',
  multicallAddress: '0x963Df249eD09c358A4819E39d9Cd5736c3087184',
  quoterAddress: '0x78D78E420Da98ad378D7799bE8f4AF69033EB077',
  v3MigratorAddress: '0x32681814957e0C13117ddc0c2aba232b5c9e760f',
  nonfungiblePositionManagerAddress:
      '0x7b8A01B39D58278b5DE7e48c8449c9f4F5170613',
  tickLensAddress: '0xD9270014D396281579760619CCf4c3af0501A47C',
  swapRouter02Address: '0xB971eF87ede563556b2ED4b1C0b0019111Dd85d2',
);

/// optimism goerli addresses
final ChainAddresses optimismGoerliAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0xB656dA17129e7EB733A557f4EBc57B76CFbB5d10',
  multicallAddress: '0x07F2D8a2a02251B62af965f22fC4744A5f96BCCd',
  quoterAddress: '0x9569CbA925c8ca2248772A9A4976A516743A246F',
  v3MigratorAddress: '0xf6c55fBe84B1C8c3283533c53F51bC32F5C7Aba8',
  nonfungiblePositionManagerAddress:
      '0x39Ca85Af2F383190cBf7d7c41ED9202D27426EF6',
  tickLensAddress: '0xe6140Bd164b63E8BfCfc40D5dF952f83e171758e',
);

/// arbitrum goerli v3 addresses
final ChainAddresses arbitrumGoerliAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0x4893376342d5D7b3e31d4184c08b265e5aB2A3f6',
  multicallAddress: '0x8260CB40247290317a4c062F3542622367F206Ee',
  quoterAddress: '0x1dd92b83591781D0C6d98d07391eea4b9a6008FA',
  v3MigratorAddress: '0xA815919D2584Ac3F76ea9CB62E6Fd40a43BCe0C3',
  nonfungiblePositionManagerAddress:
      '0x622e4726a167799826d1E1D150b076A7725f5D81',
  tickLensAddress: '0xb52429333da969a0C79a60930a4Bf0020E5D1DE8',
);

/// sepolia v3 addresses
final ChainAddresses sepoliaAdresses = ChainAddresses(
  v3CoreFactoryAddress: '0x0227628f3F023bb0B980b67D528571c95c6DaC1c',
  multicallAddress: '0xD7F33bCdb21b359c8ee6F0251d30E94832baAd07',
  quoterAddress: '0xEd1f6473345F45b75F8179591dd5bA1888cf2FB3',
  v3MigratorAddress: '0x729004182cF005CEC8Bd85df140094b6aCbe8b15',
  nonfungiblePositionManagerAddress:
      '0x1238536071E1c677A632429e3655c799b22cDA52',
  tickLensAddress: '0xd7f33bcdb21b359c8ee6f0251d30e94832baad07',
);

/// Avalanche v3 addresses
final ChainAddresses avalancheAdresses = ChainAddresses(
  v3CoreFactoryAddress: '0x740b1c1de25031C31FF4fC9A62f554A55cdC1baD',
  multicallAddress: '0x0139141Cd4Ee88dF3Cdb65881D411bAE271Ef0C2',
  quoterAddress: '0xbe0F5544EC67e9B3b2D979aaA43f18Fd87E6257F',
  v3MigratorAddress: '0x44f5f1f5E452ea8d29C890E8F6e893fC0f1f0f97',
  nonfungiblePositionManagerAddress:
      '0x655C406EBFa14EE2006250925e54ec43AD184f8B',
  tickLensAddress: '0xEB9fFC8bf81b4fFd11fb6A63a6B0f098c6e21950',
  swapRouter02Address: '0xbb00FF08d01D300023C629E8fFfFcb65A5a578cE',
);

final ChainAddresses baseAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0x33128a8fC17869897dcE68Ed026d694621f6FDfD',
  multicallAddress: '0x091e99cb1C49331a94dD62755D168E941AbD0693',
  quoterAddress: '0x3d4e44Eb1374240CE5F1B871ab261CD16335B76a',
  v3MigratorAddress: '0x23cF10b1ee3AdfCA73B0eF17C07F7577e7ACd2d7',
  nonfungiblePositionManagerAddress:
      '0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1',
  tickLensAddress: '0x0CdeE061c75D43c82520eD998C23ac2991c9ac6d',
  swapRouter02Address: '0x2626664c2603336E57B271c5C0b26F421741e481',
);

// Base Goerli v3 addresses
final ChainAddresses baseGoerliAddresses = ChainAddresses(
  v3CoreFactoryAddress: '0x9323c1d6D800ed51Bd7C6B216cfBec678B7d0BC2',
  multicallAddress: '0xB206027a9E0E13F05eBEFa5D2402Bab3eA716439',
  quoterAddress: '0xedf539058e28E5937dAef3f69cEd0b25fbE66Ae9',
  v3MigratorAddress: '0x3efe5d02a04b7351D671Db7008ec6eBA9AD9e3aE',
  nonfungiblePositionManagerAddress:
      '0x3c61369ef0D1D2AFa70d8feC2F31C5D6Ce134F30',
  tickLensAddress: '0x1acB873Ee909D0c98adB18e4474943249F931b92',
  swapRouter02Address: '0x8357227D4eDc78991Db6FDB9bD6ADE250536dE1d',
);

final Map<ChainId, ChainAddresses> chainToAddressesMap = {
  ChainId.mainnet: mainnetAddresses,
  ChainId.optimism: optimismAddresses,
  ChainId.arbitrOne: arbitrumOneAddresses,
  ChainId.polygon: polygonAddresses,
  ChainId.polygonMumbai: polygonAddresses,
  ChainId.goerli: goerliAddresses,
  ChainId.celo: celoAddresses,
  ChainId.celoAlfajores: celoAddresses,
  ChainId.bnb: bnbAddresses,
  ChainId.optimismGoerli: optimismGoerliAddresses,
  ChainId.arbitrGoerli: arbitrumGoerliAddresses,
  ChainId.sepolia: sepoliaAdresses,
  ChainId.avalanche: avalancheAdresses,
  ChainId.base: baseAddresses,
  ChainId.baseGoerli: baseGoerliAddresses,
};

/// V3 Contract Addresses
final Map<ChainId, String> v3CoreFactoryAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    memo[chainId] = chainToAddressesMap[chainId]!.v3CoreFactoryAddress;
    return memo;
  },
);

final Map<ChainId, String> v3MigratorAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    final v3MigratorAddress = chainToAddressesMap[chainId]!.v3MigratorAddress;
    if (v3MigratorAddress != null) {
      memo[chainId] = v3MigratorAddress;
    }
    return memo;
  },
);

final Map<ChainId, String> multicallAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    memo[chainId] = chainToAddressesMap[chainId]!.multicallAddress;
    return memo;
  },
);

/// The oldest V0 governance address
final governanceAlphaV0Addresses =
    constructSameAddressMap('0x5e4be8Bc9637f0EAA1A755019e06A68ce081D58F');

/// The older V1 governance address
final governanceAlphaV1Addresses = {
  [ChainId.mainnet]: '0xC4e172459f1E7939D522503B81AFAaC1014CE6F6'
};

/// The latest governor bravo that is currently admin of timelock
final governanceBravoAddresses = {
  [ChainId.mainnet]: '0x408ED6354d4973f66138C91495F2f2FCbd8724C3'
};

final timelockAddresses =
    constructSameAddressMap('0x1a9C8182C09F50C8318d769245beA52c32BE35BC');

final merkleDistributorAddress = {
  [ChainId.mainnet]: '0x090D4613473dEE047c3f2706764f49E0821D256e'
};

final argentWalletDetectorAddress = {
  [ChainId.mainnet]: '0xeca4B0bDBf7c55E9b7925919d03CbF8Dc82537E8'
};

final Map<ChainId, String> quoterAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    memo[chainId] = chainToAddressesMap[chainId]!.quoterAddress;
    return memo;
  },
);

final Map<ChainId, String> nonfungiblePositionManagerAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    final nonfungiblePositionManagerAddress =
        chainToAddressesMap[chainId]!.nonfungiblePositionManagerAddress;
    if (nonfungiblePositionManagerAddress != null) {
      memo[chainId] = nonfungiblePositionManagerAddress;
    }
    return memo;
  },
);

final ensRegistrarAddresses =
    constructSameAddressMap('0x00000000000C2E074eC69A0dFb2997BA6C7d2e1e');

const socksControllerAddresses = {
  [ChainId.mainnet]: '0x65770b5283117639760beA3F867b69b3697a91dd'
};

final Map<ChainId, String> tickLensAddresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    final tickLensAddress = chainToAddressesMap[chainId]!.tickLensAddress;
    if (tickLensAddress != null) {
      memo[chainId] = tickLensAddress;
    }
    return memo;
  },
);

final Map<ChainId, String> mixedRouteQuoterV1Addresses =
    supportedChains.fold<Map<ChainId, String>>(
  {},
  (memo, chainId) {
    final v1MixedRouteQuoterAddress =
        chainToAddressesMap[chainId]!.v1MixedRouteQuoterAddress;
    if (v1MixedRouteQuoterAddress != null) {
      memo[chainId] = v1MixedRouteQuoterAddress;
    }
    return memo;
  },
);

String swapRouter02Addresses(ChainId chainId) {
  if (chainId == ChainId.bnb) {
    return chainToAddressesMap[chainId]!.swapRouter02Address!;
  }
  return '0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45';
}
