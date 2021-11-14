import 'package:flutter/material.dart';
import 'package:mokuhyou2136/screens/writing/practice_result.dart';

import './screens/list/kanji_details.dart';
import './store/canvas_store.dart';
import './store/kanji_store.dart';
import './routes/routes.dart';
import 'screens/list/list.dart';
import 'screens/home/home.dart';
import 'screens/writing/writing.dart';
import 'screens/writing/practice.dart';

final kanjiStore = KanjiStore();
final canvasStore = CanvasStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    kanjiStore.carregarKanjiList();
    kanjiStore.carregarMapDeKanji();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        Routes.home: (context) => Home(),
        Routes.kanjiList: (context) => KanjiList(kanjiStore),
        Routes.kanjiDetails: (context) => KanjiDetails(kanjiStore),
        Routes.writing: (context) => Writing(kanjiStore),
        Routes.writingPractice: (context) => Practice(kanjiStore, canvasStore),
        Routes.writingPracticeResult: (context) =>
            PracticeResult(kanjiStore, canvasStore),
      },
    );
  }
}
