library blockies_ethereum;

import 'package:flutter/material.dart';

import 'blockie_widget.dart';

enum BlockiesShape { circle, square }

class Blockies extends StatelessWidget {
  final double size;
  final String data;
  final BlockiesShape shape;
  const Blockies(
      {Key? key, required this.size, required this.data, required this.shape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlockieWidget(
      size: size,
      data: data,
      shape: shape,
    );
  }
}
