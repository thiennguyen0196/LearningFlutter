import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionTxt: questions[questionIndex]["questionText"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerText: answer["text"] as String,
            clickCallback: () => answerQuestion(answer["score"]),
          );
        }),
      ],
    );
  }
}
