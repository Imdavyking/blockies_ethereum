<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Blockies generate UI for dapp based on ethereum address mainly or any other data

## Features

- generate Blockies based on ethereum address or any data

## Getting started

flutter pub add blockies_ethereum

## Usage

```dart
final userAddress = '0x3064c83F8b28193d9B6E7c0717754163DDF3C70b';
// note use to lowercase to generate metamask kind of addresses
Blockies(size: .5,data: userAddress.toLowerCase()); // as a widget
```

## Additional information

You could find more information <a href="https://github.com/Imdavyking?tab=repositories">Davyking</a>
