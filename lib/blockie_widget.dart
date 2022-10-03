import 'package:blockies_ethereum/blockie_painter.dart';
import 'package:blockies_ethereum/blockies_ethereum.dart';
import 'package:flutter/material.dart';

class BlockieWidget extends StatefulWidget {
  final double size;
  final String data;
  final BlockiesShape shape;
  const BlockieWidget(
      {Key? key, required this.size, required this.data, required this.shape})
      : super(key: key);

  @override
  State<BlockieWidget> createState() => _BlockieWidgetState();
}

class _BlockieWidgetState extends State<BlockieWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: CustomPaint(
          painter: BlockiePainter(widget.data, widget.shape),
          size: Size(widget.size, widget.size),
        ),
      ),
    );
  }
}
