library blockies_ethereum;

import 'package:flutter/material.dart';

import 'blockie_widget.dart';

/// A Calculator.
class Blockies extends StatelessWidget {
  final double size;
  final String data;
  const Blockies({
    Key? key,
    required this.size,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlockieWidget(size: size, data: data);
  }
}
