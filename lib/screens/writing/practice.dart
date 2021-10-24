import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import './widgets/canvas.dart';

class Practice extends StatelessWidget {
  static const String routeName = '/writing/practice';

  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width - 2 * 8.0,
                height: MediaQuery.of(context).size.width - 2 * 8.0,
                child: KanjiCanvas(),
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.writingPractice),
              child: Text('Start practice'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
