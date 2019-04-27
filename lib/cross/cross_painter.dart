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

    double leftFraction;
    double rightFraction;

    if (_fraction < .5) {
      leftFraction = _fraction / .5;
      rightFraction = 0;
    } else {
      leftFraction = 1.0;
      rightFraction = (_fraction - .5) / .5;
    }

    canvas.drawLine(Offset(0, 0),
        Offset(size.width * leftFraction, size.height * leftFraction), _paint);
    canvas.drawLine(
        Offset(size.width, 0),
        Offset(size.width - size.width * rightFraction,
            size.height * rightFraction),
        _paint);
  }

  @override
  bool shouldRepaint(CrossPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
