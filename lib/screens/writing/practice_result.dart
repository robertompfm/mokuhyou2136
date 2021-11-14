import 'package:flutter/material.dart';
import 'package:mokuhyou2136/screens/writing/widgets/written_card.dart';

import '../../store/kanji_store.dart';
import '../../store/canvas_store.dart';
import '../../routes/routes.dart';
import '../../model/kanji.dart';
import './widgets/canvas_card.dart';

class PracticeResult extends StatefulWidget {
  static const String routeName = '/writing/practice_result';
  KanjiStore kanjiStore;
  CanvasStore canvasStore;

  PracticeResult(this.kanjiStore, this.canvasStore);

  @override
  State<PracticeResult> createState() => _PracticeResultState();
}

class _PracticeResultState extends State<PracticeResult> {
  void proceed(BuildContext context) {
    widget.canvasStore.clear();
    if (widget.kanjiStore.studyList.isEmpty) {
      Navigator.pushNamed(context, Routes.writing);
    } else {
      Navigator.pushNamed(context, Routes.writingPractice,
          arguments: {"kanji": widget.kanjiStore.studyList[0]});
    }
  }

  void markAsCorrect(BuildContext context, String kanjiStr) {
    widget.kanjiStore.markAsRight(kanjiStr);
    proceed(context);
  }

  void markAsSeeAgain(BuildContext context, String kanjiStr) {
    widget.kanjiStore.markAsWrong(kanjiStr);
    proceed(context);
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Kanji>;
    final kanji = args["kanji"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Writing practice"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Meaning: ${kanji!.meanings[0]}'),
                        Text('Strokes: ${kanji.strokes}'),
                      ],
                    ),
                    Text(
                      kanji.kanji,
                      style: TextStyle(
                        fontSize: 66,
                      ),
                    ),
                    Text(""),
                  ],
                ),
              ),
            ),
            WrittenKanjiCard(
              points: widget.canvasStore.points,
              strokes: widget.canvasStore.strokes,
            ),
            ElevatedButton(
              onPressed: () => markAsCorrect(context, kanji.kanji),
              child: Text('Correct'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40)),
            ),
            OutlinedButton(
              onPressed: () => markAsSeeAgain(context, kanji.kanji),
              child: Text('See again'),
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
