import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int testScore;
  final Function resetQuiz;

  Result(this.resetQuiz, this.testScore);

  String get resultPhrase {
    String resultText;

    if (testScore < 10) {
      resultText = 'You truly made it, you are awesome';
    } else if (testScore <= 15) {
      resultText = 'Not so bad';
    } else if (testScore <= 20) {
      resultText = 'Seriosly reconsider your life choices';
    } else {
      resultText = 'You need therapy now!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
      FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
    ]));
  }
}
