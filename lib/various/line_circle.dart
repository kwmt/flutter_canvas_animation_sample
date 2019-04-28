import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/circle/circle.dart';
import 'package:flutter_canvas_animation/line/line.dart';

class LineCircle extends StatefulWidget {
  @override
  _LineCircleState createState() => _LineCircleState();
}

class _LineCircleState extends State<LineCircle> {
  List<Widget> children = List();

  @override
  void initState() {
    super.initState();
    var circle = Stack(
      children: <Widget>[
        _build(Circle(
          milliseconds: 500,
        )),
        _build(Center(
            child: Text("1",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))))
      ],
    );

    children.add(_build(Line(
        milliseconds: 500,
        completion: () {
          setState(() {
            children.add(circle);
          });
        })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Row(children: children));
  }

  Widget _build(Widget widget) {
    return SizedBox(width: 50, height: 50, child: Container(child: widget));
  }
}
