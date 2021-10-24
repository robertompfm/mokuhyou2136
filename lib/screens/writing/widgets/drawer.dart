import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../model/drawing_points.dart';

class DrawingPainter extends CustomPainter {
  List<DrawingPoints> pointsList;
  List<Offset> offsetPoints = [];

  DrawingPainter({required this.pointsList});
  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i].points.isFinite) {
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
            pointsList[i].paint);
      } else {
        offsetPoints.clear();
        offsetPoints.add(
          Offset(
            pointsList[i].points.dx + 0.1,
            pointsList[i].points.dy + 0.1,
          ),
        );
        canvas.drawPoints(PointMode.points, offsetPoints, pointsList[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) => true;
}
