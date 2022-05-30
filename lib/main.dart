import 'package:flutter/material.dart';
import 'package:layout_flutter/widget/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      home: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        ),
      );
  }
}