import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback? restartQuizFunc;

  String get resultPharse {
    var resultText;
    if (totalScore <= 8) {
      resultText = "You are awesome";
    } else if (totalScore <= 12) {
      resultText = "Pretty likeable";
    } else if (totalScore <= 16) {
      resultText = "Strange";
    } else {
      resultText = "Bad";
    }
    return resultText;
  }

  Result({required this.totalScore, this.restartQuizFunc = null});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.end,
          ),
          TextButton(
            onPressed: restartQuizFunc,
            child: Text("Restart quiz"),
          )
        ],
      ),
    );
  }
}
