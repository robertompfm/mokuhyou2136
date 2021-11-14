import 'package:flutter/material.dart';

import '../../store/kanji_store.dart';
import '../../routes/routes.dart';
import '../../components/drawer.dart';

class Writing extends StatefulWidget {
  static const String routeName = '/writing';

  KanjiStore kanjiStore;

  Writing(this.kanjiStore);

  @override
  State<Writing> createState() => _WritingState();
}

class _WritingState extends State<Writing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("目標: 2136"),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: widget.kanjiStore.studyList.isEmpty
                    ? Text('No kanji to review')
                    : Text(
                        '${widget.kanjiStore.studyList.length} kanji to review'),
              ),
            ),
            ElevatedButton(
              onPressed: widget.kanjiStore.studyList.isEmpty
                  ? () {}
                  : () => Navigator.pushNamed(context, Routes.writingPractice,
                      arguments: {"kanji": widget.kanjiStore.studyList[0]}),
              child: Text('Start practice'),
              style: ElevatedButton.styleFrom(
                  primary: widget.kanjiStore.studyList.isEmpty
                      ? Colors.grey
                      : Colors.blue,
                  minimumSize: Size(double.infinity, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
