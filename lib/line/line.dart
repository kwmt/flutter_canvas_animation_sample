import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/line/line_painter.dart';

class Line extends StatefulWidget {
  final VoidCallback completion;

  int milliseconds;
  double x;
  double y;

  Line(
      {Key key,
      this.x = 0,
      this.y = 0,
      this.milliseconds = 2000,
      this.completion})
      : super(key: key);

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
    _controller = AnimationController(
        duration: Duration(milliseconds: widget.milliseconds), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          print(_animation.value);
          _fraction = _animation.value;
          if (_animation.value == 1.0) {
            if (widget.completion != null) {
              widget.completion();
            }
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
    return CustomPaint(
        painter: LinePainter(_fraction, x: widget.x, y: widget.y));
  }
}
