import 'package:flutter/material.dart';
import '../routes/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Options',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, Routes.home),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Kanji list'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, Routes.kanjiList),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Writing practice'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, Routes.writing),
          ),
        ],
      ),
    );
  }
}
