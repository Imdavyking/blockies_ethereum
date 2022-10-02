import 'package:convert/convert.dart';
import 'package:sha3/sha3.dart';

String sha3(String string) {
  const keccakPadding = [1, 256, 65536, 16777216];
  final hash =
      SHA3(256, keccakPadding, 256).update(string.runes.toList()).digest();

  return hex.encode(hash);
}
