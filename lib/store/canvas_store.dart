import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../model/drawing_points.dart';

part 'canvas_store.g.dart';

class CanvasStore = _CanvasStore with _$CanvasStore;

abstract class _CanvasStore with Store {
  @observable
  Color color = Colors.black;

  @observable
  Color pickerColor = Colors.black;

  @observable
  double strokeWidth = 3.0;

  @observable
  List<DrawingPoints> points = ObservableList();

  @observable
  bool showBottomList = false;

  @observable
  double opacity = 1.0;

  @observable
  StrokeCap strokeCap = (Platform.isAndroid) ? StrokeCap.butt : StrokeCap.round;

  @observable
  SelectedMode selectedMode = SelectedMode.StrokeWidth;

  @observable
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @observable
  int strokes = 0;

  @action
  void onPanUpdate(DragUpdateDetails details, RenderBox renderBox) {
    this.points.add(
          DrawingPoints(
              points: renderBox.globalToLocal(details.globalPosition),
              paint: Paint()
                ..strokeCap = this.strokeCap
                ..isAntiAlias = true
                ..color = color.withOpacity(this.opacity)
                ..strokeWidth = this.strokeWidth),
        );
  }

  @action
  void onPanStart(DragStartDetails details, RenderBox renderBox) {
    this.points.add(
          DrawingPoints(
              points: renderBox.globalToLocal(details.globalPosition),
              paint: Paint()
                ..strokeCap = this.strokeCap
                ..isAntiAlias = true
                ..color = this.color.withOpacity(opacity)
                ..strokeWidth = this.strokeWidth),
        );
  }

  @action
  void onPanEnd() {
    this.points.add(
          DrawingPoints(
            points: Offset(-double.infinity, -double.infinity),
            paint: Paint(),
          ),
        );
    this.strokes++;
  }

  @action
  void clear() {
    this.points = ObservableList();
    this.strokes = 0;
  }
}

enum SelectedMode { StrokeWidth, Opacity, Color }
