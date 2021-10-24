import 'package:flutter/material.dart';

import './routes/routes.dart';
import 'screens/list/list.dart';
import 'screens/home/home.dart';
import 'screens/writing/writing.dart';
import 'screens/writing/practice.dart';

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
        Routes.kanjiList: (context) => KanjiList(),
        Routes.writing: (context) => Writing(),
        Routes.writingPractice: (context) => Practice(),
      },
    );
  }
}
