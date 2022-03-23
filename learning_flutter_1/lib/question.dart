import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question({required this.questionTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        this.questionTxt,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
