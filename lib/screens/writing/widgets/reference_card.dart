import 'package:flutter/material.dart';

class KanjiReferenceCard extends StatelessWidget {
  final String kanji;

  KanjiReferenceCard({required this.kanji});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 2 * 8.0,
        height: MediaQuery.of(context).size.width / 2 - 2 * 8.0,
        child: Center(
          child: Text(
            kanji,
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
