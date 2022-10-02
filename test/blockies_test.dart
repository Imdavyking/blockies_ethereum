import 'dart:convert';
import 'package:blockies_ethereum/ethereum_blockies.dart';
import 'package:blockies_ethereum/sha3.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const address = '0x6Acf5505DF3Eada0BF0547FAb88a85b1A2e03F15';
  const addressTwo = '0x3064c83F8b28193d9B6E7c0717754163DDF3C70b';
  final blockInstance = EthereumBlockies();
  final blockInstanceTwo = EthereumBlockies();
  test('get ethereum address blockie image data and colors', () {
    blockInstance.seedrand(address.toLowerCase());
    HSL color = blockInstance.createColor();
    HSL bgColor = blockInstance.createColor();
    HSL spotColor = blockInstance.createColor();
    List imageData = blockInstance.createImageData();
    expect(sha3(json.encode(blockInstance.randseed)),
        '89b8a19e375159267d7d16447f53766cbd210d6b0328779cc897a03a9922b914');
    expect(
        color.toString(), 'H: 25.0 S: 62.20454423791009 L: 50.21168109970711');
    expect(bgColor.toString(),
        'H: 108.0 S: 57.542195253792315 L: 43.62102017906542');
    expect(spotColor.toString(),
        'H: 31.0 S: 48.8115822751129 L: 50.77201500570961');
    expect(sha3(json.encode(imageData)),
        'd935e1c2fa18d0a7b7f92604e3ea282ab4572124852411306d70e302fb5447a4');

    /// Account two
    blockInstanceTwo.seedrand(addressTwo.toLowerCase());
    HSL colorTwo = blockInstanceTwo.createColor();
    HSL bgColorTwo = blockInstanceTwo.createColor();
    HSL spotColorTwo = blockInstanceTwo.createColor();
    List imageDataTwo = blockInstanceTwo.createImageData();
    expect(sha3(json.encode(blockInstanceTwo.randseed)),
        '491a7d9b769c9e62f67019b5ea33b5b100e8a38e55b1efc0680ac4edaaa18f79');
    expect(colorTwo.toString(),
        'H: 240.0 S: 77.89883877052871 L: 42.880431070402466');
    expect(bgColorTwo.toString(),
        'H: 302.0 S: 52.13426684594446 L: 15.5695927401863');
    expect(spotColorTwo.toString(),
        'H: 252.0 S: 74.00470713805626 L: 64.89102061134344');
    expect(sha3(json.encode(imageDataTwo)),
        '0da3e2aa1ee73f4caae2c09cd4febd40ebdf3a0128b2e6c4686ec93055f221d7');
  });
}
