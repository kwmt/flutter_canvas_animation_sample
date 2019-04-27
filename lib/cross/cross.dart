import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/cross/cross_painter.dart';

class Cross extends StatefulWidget {
  @override
  _CrossState createState() => _CrossState();
}

class _CrossState extends State<Cross> with SingleTickerProviderStateMixin {
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
        print(_animation.value);
        setState(() {
          _fraction = _animation.value;
        });
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CrossPainter(_fraction));
  }
}
