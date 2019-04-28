import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/circle/circle.dart';
import 'package:flutter_canvas_animation/line/line.dart';

class LineCircle extends StatefulWidget {
  @override
  _LineCircleState createState() => _LineCircleState();
}

class _LineCircleState extends State<LineCircle> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.0,
        child: Container(
            padding: EdgeInsets.all(12),
            child: Row(children: <Widget>[Line(), Circle()])));
  }
}
