import 'token.dart';

/// Known WETH9 implementation addresses, used in our implementation of Ether#wrapped.
final WETH9 = <int, Token>{
  1: Token(
      chainId: 1,
      address: '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  3: Token(
      chainId: 3,
      address: '0xc778417E063141139Fce010982780140Aa0cD5Ab',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  4: Token(
      chainId: 4,
      address: '0xc778417E063141139Fce010982780140Aa0cD5Ab',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  5: Token(
      chainId: 5,
      address: '0xB4FBF271143F4FBf7B91A5ded31805e42b2208d6',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  42: Token(
      chainId: 42,
      address: '0xd0A1E359811322d97991E03f863a0C30C2cF029C',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  10: Token(
      chainId: 10,
      address: '0x4200000000000000000000000000000000000006',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  69: Token(
      chainId: 69,
      address: '0x4200000000000000000000000000000000000006',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  42161: Token(
      chainId: 42161,
      address: '0x82aF49447D8a07e3bd95BD0d56f35241523fBab1',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
  421611: Token(
      chainId: 421611,
      address: '0xB47e6A5f8b33b3F17603C83a0535A9dcD7E32681',
      decimals: 18,
      symbol: 'WETH',
      name: 'Wrapped Ether'),
};