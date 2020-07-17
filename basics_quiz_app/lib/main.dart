import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  static const List<Map> _questions = [
    {
      'qestionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green']
    },
    {
      'qestionText': 'What\'s your favorite type of music',
      'answers': ['Clasical', 'Reggae', 'Rock', 'Blues']
    },
    {
      'qestionText': 'What\'s your car\'s make year',
      'answers': ['<2000', '<2005', '<2010', '<2020']
    },
  ];
  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex < _questions.length
          ? ++_questionIndex
          : _questions.length - 1;
    });
    print(_questionIndex);
    print(_questions.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Talkpush'),
          backgroundColor: Color(0xff01CA5B),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_restartQuiz),
      ),
    );
  }
}
