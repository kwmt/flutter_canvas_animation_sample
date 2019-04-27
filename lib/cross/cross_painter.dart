import 'package:flutter/material.dart';

class CrossPainter extends CustomPainter {
  Paint _paint;

  double _fraction;

  CrossPainter(this._fraction) {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    print("paint $_fraction");
    canvas.drawLine(Offset(0, 0),
        Offset(size.width * _fraction, size.height * _fraction), _paint);
    canvas.drawLine(Offset(size.width, 0),
        Offset(size.width - size.width * _fraction, size.height * _fraction), _paint);
  }

  @override
  bool shouldRepaint(CrossPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
