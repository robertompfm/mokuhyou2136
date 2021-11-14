import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../model/drawing_points.dart';
import '../../../store/canvas_store.dart';
import '../../../screens/writing/widgets/drawer.dart';

class KanjiCanvas extends StatefulWidget {
  CanvasStore canvasStore;
  // List<DrawingPoints> points;

  KanjiCanvas(this.canvasStore);

  @override
  _KanjiCanvasState createState() => _KanjiCanvasState();
}

class _KanjiCanvasState extends State<KanjiCanvas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * 8.0,
      height: MediaQuery.of(context).size.width - 2 * 8.0,
      child: GestureDetector(
        onPanUpdate: (details) {
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          widget.canvasStore.onPanUpdate(details, renderBox);
        },
        onPanStart: (details) {
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          widget.canvasStore.onPanStart(details, renderBox);
        },
        onPanEnd: (details) {
          widget.canvasStore.onPanEnd();
        },
        child: Observer(
          builder: (context) => CustomPaint(
            size: Size.infinite,
            painter: DrawingPainter(
              pointsList: widget.canvasStore.points,
            ),
          ),
        ),
      ),
    );
  }
}
