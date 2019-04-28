import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/shape.dart';

class ShapeScreen extends StatefulWidget {
  ShapeScreen({Key key, this.shape}) : super(key: key);

  final Shape shape;

  @override
  _ShapeScreenState createState() => _ShapeScreenState();
}

class _ShapeScreenState extends State<ShapeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shape.title),
      ),
      body: Center(
        child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
                padding: EdgeInsets.all(12), child: widget.shape.shapeWidget)),
      ),
    );
  }
}
