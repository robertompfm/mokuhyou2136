import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../store/kanji_store.dart';

class KanjiDetails extends StatelessWidget {
  static const String routeName = '/list/kanji';
  final KanjiStore kanjiStore;

  KanjiDetails(this.kanjiStore, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Kanji detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                    kanjiStore.selectedKanji.kanji,
                    style: TextStyle(
                      fontSize: 88,
                    ),
                  ),
                ),
                InfoRow(
                  label: "Meaning for practice:",
                  value: kanjiStore.selectedKanji.meanings[0],
                ),
                InfoRow(
                  label: "Strokes:",
                  value: kanjiStore.selectedKanji.strokes.toString(),
                ),
                InfoRow(
                  label: "Frequency:",
                  value: kanjiStore.selectedKanji.freq.toString(),
                ),
                InfoRow(
                  label: "JLPT Level:",
                  value: kanjiStore.selectedKanji.jlptNew.toString(),
                ),
              ],
            ),
            Observer(
              builder: (context) => kanjiStore.selectedKanji.toStudy
                  ? OutlinedButton(
                      onPressed: kanjiStore.toggleSelectedToStudy,
                      child: Text('Remove from study list'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                      ),
                    )
                  : ElevatedButton(
                      onPressed: kanjiStore.toggleSelectedToStudy,
                      child: Text('Add to study list'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
