import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/line/line_painter.dart';

class Line extends StatefulWidget {
  @override
  _LineState createState() => _LineState();
}

class _LineState extends State<Line> with SingleTickerProviderStateMixin {
  double _fraction = 0.0;

  Animation<double> _animation;

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: LinePainter(_fraction));
  }
}
