import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/circle/circle_painter.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> with SingleTickerProviderStateMixin {
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
    return CustomPaint(painter: CirclePainter(_fraction));
  }
}
