// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/textchange.dart';
import 'package:flutter_assignment_1/textcontrol.dart';

void main() {
  runApp(const MyAssignment1App());
}

class MyAssignment1App extends StatefulWidget {
  const MyAssignment1App({Key? key}) : super(key: key);

  @override
  State<MyAssignment1App> createState() => _MyAssignment1AppState();
}

class _MyAssignment1AppState extends State<MyAssignment1App> {
  var _textIndex = 0;
  static const _texts = [
    "Button text 1",
    "Button text 2",
    "Button text 3",
  ];

  void _resetText() {
    setState(() {
      ++_textIndex;
      if (_textIndex > _texts.length - 1) _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My assignment #1"),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextControl(
                changeTextFunc: _resetText,
              ),
              TextChanged(
                customText: _texts[_textIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
