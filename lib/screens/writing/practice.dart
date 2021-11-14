import 'package:flutter/material.dart';

import '../../store/kanji_store.dart';
import '../../store/canvas_store.dart';
import '../../routes/routes.dart';
import '../../model/kanji.dart';
import './widgets/canvas_card.dart';

class Practice extends StatefulWidget {
  static const String routeName = '/writing/practice';
  KanjiStore kanjiStore;
  CanvasStore canvasStore;

  Practice(this.kanjiStore, this.canvasStore);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
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
              child: Center(
                child: Text(
                  kanji!.meanings[0],
                  style: TextStyle(
                    fontSize: 44,
                  ),
                ),
              ),
            ),
            KanjiCanvasCard(widget.canvasStore),
            ElevatedButton(
              onPressed: widget.kanjiStore.studyList.isEmpty
                  ? () => {}
                  : () => Navigator.pushNamed(
                      context, Routes.writingPracticeResult,
                      arguments: {"kanji": kanji}),
              child: Text('Check answer'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
