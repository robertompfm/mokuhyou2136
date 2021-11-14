import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../model/kanji.dart';
import '../../../main.dart';
import './widgets/kanji_card.dart';
import '../../store/kanji_store.dart';
import '../../components/drawer.dart';

class KanjiList extends StatefulWidget {
  static const String routeName = '/list';
  KanjiStore kanjiStore;

  KanjiList(this.kanjiStore);

  @override
  State<KanjiList> createState() => _KanjiListState();
}

class _KanjiListState extends State<KanjiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("目標: 2136"),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Kanji List",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Expanded(
              child: Observer(
                builder: (context) => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: kanjiStore.kanjiMap.length,
                  itemBuilder: (BuildContext ctx, index) {
                    Kanji kanji = kanjiStore.kanjiListFromMap[index];
                    return KanjiCard(
                      kanji,
                      index,
                      key: Key(kanji.kanji),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
