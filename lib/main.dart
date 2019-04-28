import 'package:flutter/material.dart';
import 'package:flutter_canvas_animation/circle/circle.dart';
import 'package:flutter_canvas_animation/cross/cross.dart';
import 'package:flutter_canvas_animation/line/line.dart';
import 'package:flutter_canvas_animation/shape.dart';
import 'package:flutter_canvas_animation/shape_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

final List<Shape> _shpaeScreens = [
  Shape("Line", Line()),
  Shape("Crosse", Cross()),
  Shape("Circle", Circle())
];

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: _buildList(),
      ),
    );
  }

  ListView _buildList() {
    return ListView.builder(
      itemCount: _shpaeScreens.length,
        itemBuilder: (BuildContext context, int index) {
      return ListTile(
          title: Text(_shpaeScreens[index].title),
          onTap: () => _onTapListItem(context, index));
    });
  }

  void _onTapListItem(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: RouteSettings(name: _shpaeScreens[index].title),
            builder: (BuildContext context) =>
                ShapeScreen(shape: _shpaeScreens[index])));
  }
}
