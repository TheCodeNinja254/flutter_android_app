import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  // BuildContext  - object type provided by flutter
  // context - my variable override
  // Widget - return object of type Widget provided by flutter
  // Idea - Always start with type then variable.
  @override // decorator - marks the override for the build method as intentional.
  Widget build(BuildContext context) {
    // build a map
    var questions = [
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['Black', 'White', 'Green', 'Violet'],
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Elephant', 'Lion', 'Giraffe', 'Cow'],
      },
      {
        'questionText': 'What\'s your favourite guy',
        'answers': ['Freddy', 'Freddy', 'Freddy', 'Freddy'],
      },
    ];
    // Scaffold creates a base design for the App
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Question(questions.elementAt(_questionIndex)),
              // same as questions[0]
              Answer(_answerQuestions),
              Answer(_answerQuestions),
              Answer(_answerQuestions),
            ],
          )),
    );
  }
}
