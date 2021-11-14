// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Kanji on _Kanji, Store {
  final _$toStudyAtom = Atom(name: '_Kanji.toStudy');

  @override
  bool get toStudy {
    _$toStudyAtom.reportRead();
    return super.toStudy;
  }

  @override
  set toStudy(bool value) {
    _$toStudyAtom.reportWrite(value, super.toStudy, () {
      super.toStudy = value;
    });
  }

  final _$_KanjiActionController = ActionController(name: '_Kanji');

  @override
  void toggleToStudy() {
    final _$actionInfo =
        _$_KanjiActionController.startAction(name: '_Kanji.toggleToStudy');
    try {
      return super.toggleToStudy();
    } finally {
      _$_KanjiActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
toStudy: ${toStudy}
    ''';
  }
}
