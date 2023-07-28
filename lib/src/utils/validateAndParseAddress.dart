import 'package:zagmi/zagmi.dart';

/// Validates an address and returns the parsed (checksummed) version of that address
/// `address` the unchecksummed hex addres
String validateAndParseAddress(String address) {
  try {
    EthereumAddress.fromHex(address);
    return address;
  } catch (error) {
    throw Exception('$address is not a valid address');
  }
}

/// Checks if an address is valid by checking 0x prefix, length === 42 and hex encoding.
/// `address` the unchecksummed hex addres
///
String checkValidAddress(String address) {
  final startsWith0x = address.startsWith('0x');
  final lenEquals42 = address.length == 42;

  /// Checks a string starts with 0x, is 42 characters long and contains only hex characters after 0x
  final hexRegex = RegExp(r'^[a-fA-F0-9]+$');
  final isHex = hexRegex.hasMatch(address.substring(2));

  if (startsWith0x && lenEquals42 && isHex) {
    return address;
  }

  throw Exception('$address is not a valid address');
}
