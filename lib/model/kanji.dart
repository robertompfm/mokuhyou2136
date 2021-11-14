import 'package:mobx/mobx.dart';

part 'kanji.g.dart';

class Kanji = _Kanji with _$Kanji;

abstract class _Kanji with Store {
  String kanji;
  int strokes;
  int grade;
  int freq;
  int jlptOld;
  int jlptNew;
  List<String> meanings;
  List<String> readingsOn;
  List<String> readingsKun;
  int wkLevel;
  List<String> wkMeanings;
  List<String> wkReadingsOn;
  List<String> wkReadingsKun;
  List<String> wkRadicals;
  int score = 0;
  DateTime nextReview = DateTime(0);

  @observable
  bool toStudy = false;

  _Kanji(
    this.kanji,
    this.strokes,
    this.grade,
    this.freq,
    this.jlptOld,
    this.jlptNew,
    this.meanings,
    this.readingsOn,
    this.readingsKun,
    this.wkLevel,
    this.wkMeanings,
    this.wkReadingsOn,
    this.wkReadingsKun,
    this.wkRadicals,
  );

  _Kanji.fromJson(Map<String, dynamic> json)
      : kanji = json['kanji'] ?? '',
        strokes = json['strokes'] ?? 0,
        grade = json['grade'] ?? 0,
        freq = json['freq'] ?? 0,
        jlptOld = json['jlpt_old'] ?? 0,
        jlptNew = json['jlpt_new'] ?? 0,
        meanings = List<String>.from(json['meanings'] ?? []),
        readingsOn = List<String>.from(json['readings_on'] ?? []),
        readingsKun = List<String>.from(json['readings_kun'] ?? []),
        wkLevel = json['wk_level'] ?? 0,
        wkMeanings = List<String>.from(json['wk_meanings'] ?? []),
        wkReadingsOn = List<String>.from(json['wk_readings_on'] ?? []),
        wkReadingsKun = List<String>.from(json['wk_readings_kun'] ?? []),
        wkRadicals = List<String>.from(json['wk_radicals'] ?? []);

  Map<String, dynamic> toJson() => {
        'kanji': kanji,
        'strokes': strokes,
        'grade': grade,
        'freq': freq,
        'jlpt_old': jlptOld,
        'jlpt_new': jlptNew,
        'meanings': meanings,
        'readings_on': readingsOn,
        'readings_kun': readingsKun,
        'wk_level': wkLevel,
        'wk_meanings': wkMeanings,
        'wk_readings_on': wkReadingsOn,
        'wk_readings_kun': wkReadingsKun,
        'wk_radicals': wkRadicals,
      };

  @action
  void toggleToStudy() {
    this.toStudy = !this.toStudy;
  }
}
