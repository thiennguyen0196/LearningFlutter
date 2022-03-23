import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback? clickCallback;

  Answer({required this.answerText, this.clickCallback = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text(this.answerText),
        onPressed: this.clickCallback,
      ),
    );
  }
}
