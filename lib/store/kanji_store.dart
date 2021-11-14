import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:mokuhyou2136/model/kanji.dart';

import 'dart:convert';

part 'kanji_store.g.dart';

class KanjiStore = _KanjiStore with _$KanjiStore;

abstract class _KanjiStore with Store {
  @observable
  Map<String, Kanji> kanjiMap = {};

  @observable
  ObservableList<Kanji> kanjiList = ObservableList();

  @action
  Future<void> carregarMapDeKanji() async {
    final jsonStr =
        await rootBundle.loadString("assets/data/kanji-jouyou.json");

    Map<String, dynamic> map = await jsonDecode(jsonStr);

    map.forEach((key, value) {
      this.kanjiMap[key] = Kanji.fromJson(value);
      this.kanjiMap[key]!.kanji = key;
    });
  }

  @action
  Future<void> carregarKanjiList() async {
    final jsonStr =
        await rootBundle.loadString("assets/data/kanji-jouyou-list.json");

    Iterable iterable = await json.decode(jsonStr);

    iterable.map((e) => print(e));

    this.kanjiList =
        ObservableList<Kanji>.of(iterable.map((e) => Kanji.fromJson(e)));
  }

  @action
  void markAsRight(String kanjiStr) {
    Kanji? kanji = this.kanjiMap[kanjiStr];
    kanji!.score++;
    kanji.nextReview = DateTime.now().add(Duration(days: kanji.score));
  }

  @action
  void markAsWrong(String kanjiStr) {
    Kanji? kanji = this.kanjiMap[kanjiStr];
    kanji!.score++;
    kanji.nextReview = DateTime.now().add(Duration(minutes: 1));
  }

  @action
  void addToStudyList(int kanjiIndex) {
    Kanji kanji = this.kanjiList[kanjiIndex];
    kanji.toggleToStudy();
  }

  @computed
  List<Kanji> get studyList {
    return this
        .kanjiMap
        .values
        .where((kanji) =>
            kanji.toStudy && kanji.nextReview.isBefore(DateTime.now()))
        .toList();
  }

  @computed
  List<Kanji> get kanjiListFromMap {
    return this.kanjiMap.values.toList();
  }

  @observable
  Kanji selectedKanji =
      Kanji("", 0, 0, 0, 0, 0, [""], [""], [""], 0, [""], [""], [""], [""]);

  @action
  void selectKanji(int kanjiIndex) {
    Kanji kanji = this.kanjiList[kanjiIndex];
    selectedKanji = kanji;
  }

  @action
  void selectKanjiFromMap(String kanjiStr) {
    Kanji? kanji = this.kanjiMap[kanjiStr];
    selectedKanji = kanji!;
  }

  @action
  void addToStudyListFromMap(String kanjiStr) {
    Kanji? kanji = this.kanjiMap[kanjiStr];
    kanji!.toggleToStudy();
  }

  @action
  void toggleSelectedToStudy() {
    this.selectedKanji.toStudy = !this.selectedKanji.toStudy;
  }
}
