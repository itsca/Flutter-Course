import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerHandler;
  final List<Map> questionList;
  final int questionIndex;

  Quiz(this.answerHandler, this.questionList, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questionList[questionIndex]['qestionText']),
      ...questionList[questionIndex]['answers']
          .map((answer) => Answer(answerHandler, answer))
          .toList()
    ]);
  }
}
