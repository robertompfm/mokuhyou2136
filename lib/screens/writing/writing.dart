import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../components/drawer.dart';

class Writing extends StatelessWidget {
  static const String routeName = '/writing';

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
                child: Text('Writing'),
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
