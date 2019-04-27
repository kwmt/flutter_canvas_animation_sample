import 'package:flutter/material.dart';

class CrossPainter extends CustomPainter {
  Paint _paint;

  CrossPainter() {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), _paint);
    canvas.drawLine(Offset(0, size.height), Offset(size.width, 0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
