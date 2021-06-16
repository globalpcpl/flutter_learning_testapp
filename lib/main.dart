import 'package:flutter/material.dart';
import 'package:flutter_learning_testapp/dragable/dragable_example.dart';
import 'package:flutter_learning_testapp/silver_appbar_and_silver_scroll/silver_appbar_and_silver_scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DragableExample(),
    );
  }
}
