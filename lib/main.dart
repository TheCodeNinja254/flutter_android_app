import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  // with parenthesis - class object
  // without parenthesis - type
  runApp(MyApp());
}

// inheritance using extends
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Todo: implement createState
    return _MyAppState(); // underscore turns the class to a private class
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Fred', 'score': 10},
        {'text': 'Man', 'score': 13},
        {'text': 'None', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // BuildContext  - object type provided by flutter
  // context - my variable override
  // Widget - return object of type Widget provided by flutter
  // Idea - Always start with type then variable.
  @override // decorator - marks the override for the build method as intentional.
  Widget build(BuildContext context) {
    // Scaffold creates a base design for the App
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_resetQuiz, _totalScore)),
    );
  }
}
