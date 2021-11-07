//!
//
//
//
//

import 'package:flutter/material.dart';
import '46.QuizApp_answer_4.dart';
import '46.QuizApp_question_4.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(int.parse(['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
