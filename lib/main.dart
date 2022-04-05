import 'package:flutter/material.dart';
import './listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListView(),
    );
  }
}
