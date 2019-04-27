import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/cross/cross_painter.dart';

class Cross extends StatefulWidget {
  @override
  _CrossState createState() => _CrossState();
}

class _CrossState extends State<Cross> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CrossPainter());
  }
}
