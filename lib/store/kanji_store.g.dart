// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KanjiStore on _KanjiStore, Store {
  Computed<List<Kanji>>? _$studyListComputed;

  @override
  List<Kanji> get studyList =>
      (_$studyListComputed ??= Computed<List<Kanji>>(() => super.studyList,
              name: '_KanjiStore.studyList'))
          .value;
  Computed<List<Kanji>>? _$kanjiListFromMapComputed;

  @override
  List<Kanji> get kanjiListFromMap => (_$kanjiListFromMapComputed ??=
          Computed<List<Kanji>>(() => super.kanjiListFromMap,
              name: '_KanjiStore.kanjiListFromMap'))
      .value;

  final _$kanjiMapAtom = Atom(name: '_KanjiStore.kanjiMap');

  @override
  Map<String, Kanji> get kanjiMap {
    _$kanjiMapAtom.reportRead();
    return super.kanjiMap;
  }

  @override
  set kanjiMap(Map<String, Kanji> value) {
    _$kanjiMapAtom.reportWrite(value, super.kanjiMap, () {
      super.kanjiMap = value;
    });
  }

  final _$kanjiListAtom = Atom(name: '_KanjiStore.kanjiList');

  @override
  ObservableList<Kanji> get kanjiList {
    _$kanjiListAtom.reportRead();
    return super.kanjiList;
  }

  @override
  set kanjiList(ObservableList<Kanji> value) {
    _$kanjiListAtom.reportWrite(value, super.kanjiList, () {
      super.kanjiList = value;
    });
  }

  final _$selectedKanjiAtom = Atom(name: '_KanjiStore.selectedKanji');

  @override
  Kanji get selectedKanji {
    _$selectedKanjiAtom.reportRead();
    return super.selectedKanji;
  }

  @override
  set selectedKanji(Kanji value) {
    _$selectedKanjiAtom.reportWrite(value, super.selectedKanji, () {
      super.selectedKanji = value;
    });
  }

  final _$carregarMapDeKanjiAsyncAction =
      AsyncAction('_KanjiStore.carregarMapDeKanji');

  @override
  Future<void> carregarMapDeKanji() {
    return _$carregarMapDeKanjiAsyncAction
        .run(() => super.carregarMapDeKanji());
  }

  final _$carregarKanjiListAsyncAction =
      AsyncAction('_KanjiStore.carregarKanjiList');

  @override
  Future<void> carregarKanjiList() {
    return _$carregarKanjiListAsyncAction.run(() => super.carregarKanjiList());
  }

  final _$_KanjiStoreActionController = ActionController(name: '_KanjiStore');

  @override
  void markAsRight(String kanjiStr) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.markAsRight');
    try {
      return super.markAsRight(kanjiStr);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAsWrong(String kanjiStr) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.markAsWrong');
    try {
      return super.markAsWrong(kanjiStr);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToStudyList(int kanjiIndex) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.addToStudyList');
    try {
      return super.addToStudyList(kanjiIndex);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectKanji(int kanjiIndex) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.selectKanji');
    try {
      return super.selectKanji(kanjiIndex);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectKanjiFromMap(String kanjiStr) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.selectKanjiFromMap');
    try {
      return super.selectKanjiFromMap(kanjiStr);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToStudyListFromMap(String kanjiStr) {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.addToStudyListFromMap');
    try {
      return super.addToStudyListFromMap(kanjiStr);
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSelectedToStudy() {
    final _$actionInfo = _$_KanjiStoreActionController.startAction(
        name: '_KanjiStore.toggleSelectedToStudy');
    try {
      return super.toggleSelectedToStudy();
    } finally {
      _$_KanjiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
kanjiMap: ${kanjiMap},
kanjiList: ${kanjiList},
selectedKanji: ${selectedKanji},
studyList: ${studyList},
kanjiListFromMap: ${kanjiListFromMap}
    ''';
  }
}
