import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  Paint _paint;

  double _fraction;

  double x;
  double y;

  LinePainter(this._fraction, {this.x, this.y = 0}) {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(x, size.height / 2),
        Offset(size.width * _fraction, size.height / 2), _paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
