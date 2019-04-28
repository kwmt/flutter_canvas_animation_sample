import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/circle/circle_painter.dart';

// ignore: must_be_immutable
class Circle extends StatefulWidget {
  int milliseconds;

  final VoidCallback completion;

  Circle({this.milliseconds = 2000, this.completion});

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
    _controller = AnimationController(
        duration: Duration(milliseconds: widget.milliseconds), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
          if (_animation.value == 1.0) {
            widget.completion();
          }
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
