import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../model/drawing_points.dart';
import '../../../screens/writing/widgets/drawer.dart';

class KanjiCanvas extends StatefulWidget {
  @override
  _KanjiCanvasState createState() => _KanjiCanvasState();
}

class _KanjiCanvasState extends State<KanjiCanvas> {
  Color color = Colors.black;
  Color pickerColor = Colors.black;
  double strokeWidth = 3.0;
  List<DrawingPoints> points = [];
  bool showBottomList = false;
  double opacity = 1.0;
  StrokeCap strokeCap = (Platform.isAndroid) ? StrokeCap.butt : StrokeCap.round;
  SelectedMode selectedMode = SelectedMode.StrokeWidth;
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            RenderBox renderBox = context.findRenderObject() as RenderBox;
            points.add(
              DrawingPoints(
                  points: renderBox.globalToLocal(details.globalPosition),
                  paint: Paint()
                    ..strokeCap = strokeCap
                    ..isAntiAlias = true
                    ..color = color.withOpacity(opacity)
                    ..strokeWidth = strokeWidth),
            );
          });
        },
        onPanStart: (details) {
          setState(() {
            RenderBox renderBox = context.findRenderObject() as RenderBox;
            points.add(
              DrawingPoints(
                  points: renderBox.globalToLocal(details.globalPosition),
                  paint: Paint()
                    ..strokeCap = strokeCap
                    ..isAntiAlias = true
                    ..color = color.withOpacity(opacity)
                    ..strokeWidth = strokeWidth),
            );
          });
        },
        onPanEnd: (details) {
          setState(() {
            points.add(
              DrawingPoints(
                points: Offset(-double.infinity, -double.infinity),
                paint: Paint(),
              ),
            );
          });
        },
        child: CustomPaint(
          size: Size.infinite,
          painter: DrawingPainter(
            pointsList: points,
          ),
        ),
      ),
    );
  }
}

enum SelectedMode { StrokeWidth, Opacity, Color }
