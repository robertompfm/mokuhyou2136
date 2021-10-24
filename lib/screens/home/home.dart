import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("目標: 2136"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
