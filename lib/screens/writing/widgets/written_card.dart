import 'package:flutter/material.dart';
import 'package:mokuhyou2136/model/drawing_points.dart';
import 'package:mokuhyou2136/screens/writing/widgets/drawer.dart';

class WrittenKanjiCard extends StatelessWidget {
  final List<DrawingPoints> points;
  final int strokes;

  WrittenKanjiCard({required this.points, required this.strokes});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Strokes: ${this.strokes}'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 2 * 8.0,
            height: MediaQuery.of(context).size.width - 2 * 8.0,
            child: CustomPaint(
              size: Size.infinite,
              painter: DrawingPainter(
                pointsList: this.points,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
