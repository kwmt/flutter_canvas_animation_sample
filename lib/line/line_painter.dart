import 'dart:math';

import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  Paint _paint;

  double _fraction;

  LinePainter(this._fraction) {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        Offset(0, 0), Offset(size.width * _fraction, 0), _paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
