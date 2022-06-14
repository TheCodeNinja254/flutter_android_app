import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // will never change after initialization in constructor

  // review named vs position arguments
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10), // additional class constructors
        child: Text(
          questionText,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center, // enum
        ));
  }
}
