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
    print(size);
    var rect = Offset(0, 0) & size;
    canvas.drawRect(rect, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
