// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canvas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CanvasStore on _CanvasStore, Store {
  final _$colorAtom = Atom(name: '_CanvasStore.color');

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$pickerColorAtom = Atom(name: '_CanvasStore.pickerColor');

  @override
  Color get pickerColor {
    _$pickerColorAtom.reportRead();
    return super.pickerColor;
  }

  @override
  set pickerColor(Color value) {
    _$pickerColorAtom.reportWrite(value, super.pickerColor, () {
      super.pickerColor = value;
    });
  }

  final _$strokeWidthAtom = Atom(name: '_CanvasStore.strokeWidth');

  @override
  double get strokeWidth {
    _$strokeWidthAtom.reportRead();
    return super.strokeWidth;
  }

  @override
  set strokeWidth(double value) {
    _$strokeWidthAtom.reportWrite(value, super.strokeWidth, () {
      super.strokeWidth = value;
    });
  }

  final _$pointsAtom = Atom(name: '_CanvasStore.points');

  @override
  List<DrawingPoints> get points {
    _$pointsAtom.reportRead();
    return super.points;
  }

  @override
  set points(List<DrawingPoints> value) {
    _$pointsAtom.reportWrite(value, super.points, () {
      super.points = value;
    });
  }

  final _$showBottomListAtom = Atom(name: '_CanvasStore.showBottomList');

  @override
  bool get showBottomList {
    _$showBottomListAtom.reportRead();
    return super.showBottomList;
  }

  @override
  set showBottomList(bool value) {
    _$showBottomListAtom.reportWrite(value, super.showBottomList, () {
      super.showBottomList = value;
    });
  }

  final _$opacityAtom = Atom(name: '_CanvasStore.opacity');

  @override
  double get opacity {
    _$opacityAtom.reportRead();
    return super.opacity;
  }

  @override
  set opacity(double value) {
    _$opacityAtom.reportWrite(value, super.opacity, () {
      super.opacity = value;
    });
  }

  final _$strokeCapAtom = Atom(name: '_CanvasStore.strokeCap');

  @override
  StrokeCap get strokeCap {
    _$strokeCapAtom.reportRead();
    return super.strokeCap;
  }

  @override
  set strokeCap(StrokeCap value) {
    _$strokeCapAtom.reportWrite(value, super.strokeCap, () {
      super.strokeCap = value;
    });
  }

  final _$selectedModeAtom = Atom(name: '_CanvasStore.selectedMode');

  @override
  SelectedMode get selectedMode {
    _$selectedModeAtom.reportRead();
    return super.selectedMode;
  }

  @override
  set selectedMode(SelectedMode value) {
    _$selectedModeAtom.reportWrite(value, super.selectedMode, () {
      super.selectedMode = value;
    });
  }

  final _$colorsAtom = Atom(name: '_CanvasStore.colors');

  @override
  List<Color> get colors {
    _$colorsAtom.reportRead();
    return super.colors;
  }

  @override
  set colors(List<Color> value) {
    _$colorsAtom.reportWrite(value, super.colors, () {
      super.colors = value;
    });
  }

  final _$strokesAtom = Atom(name: '_CanvasStore.strokes');

  @override
  int get strokes {
    _$strokesAtom.reportRead();
    return super.strokes;
  }

  @override
  set strokes(int value) {
    _$strokesAtom.reportWrite(value, super.strokes, () {
      super.strokes = value;
    });
  }

  final _$_CanvasStoreActionController = ActionController(name: '_CanvasStore');

  @override
  void onPanUpdate(DragUpdateDetails details, RenderBox renderBox) {
    final _$actionInfo = _$_CanvasStoreActionController.startAction(
        name: '_CanvasStore.onPanUpdate');
    try {
      return super.onPanUpdate(details, renderBox);
    } finally {
      _$_CanvasStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPanStart(DragStartDetails details, RenderBox renderBox) {
    final _$actionInfo = _$_CanvasStoreActionController.startAction(
        name: '_CanvasStore.onPanStart');
    try {
      return super.onPanStart(details, renderBox);
    } finally {
      _$_CanvasStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPanEnd() {
    final _$actionInfo = _$_CanvasStoreActionController.startAction(
        name: '_CanvasStore.onPanEnd');
    try {
      return super.onPanEnd();
    } finally {
      _$_CanvasStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$_CanvasStoreActionController.startAction(name: '_CanvasStore.clear');
    try {
      return super.clear();
    } finally {
      _$_CanvasStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color},
pickerColor: ${pickerColor},
strokeWidth: ${strokeWidth},
points: ${points},
showBottomList: ${showBottomList},
opacity: ${opacity},
strokeCap: ${strokeCap},
selectedMode: ${selectedMode},
colors: ${colors},
strokes: ${strokes}
    ''';
  }
}
