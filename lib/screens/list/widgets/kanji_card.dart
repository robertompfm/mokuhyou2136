import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mokuhyou2136/main.dart';

import '../../../routes/routes.dart';
import '../../../model/kanji.dart';

class KanjiCard extends StatefulWidget {
  Kanji kanji;
  int index;

  KanjiCard(this.kanji, this.index, {Key? key}) : super(key: key);

  @override
  State<KanjiCard> createState() => _KanjiCardState();
}

class _KanjiCardState extends State<KanjiCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => widget.kanji.toggleToStudy(),
      onTap: () {
        kanjiStore.selectKanjiFromMap(widget.kanji.kanji);
        Navigator.pushNamed(context, Routes.kanjiDetails);
      },
      child: Observer(
        builder: (context) => Card(
          color: widget.kanji.toStudy ? Colors.grey : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.kanji.kanji,
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
