import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/cross/cross_painter.dart';

class Cross extends StatefulWidget {
  @override
  _CrossState createState() => _CrossState();
}

class _CrossState extends State<Cross> {

  double _fraction = 0.0;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CrossPainter(_fraction));
  }
}
