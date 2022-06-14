import 'package:flutter/material.dart';

void main () {
  // with parenthesis - class object
  // without parenthesis - type
  runApp(MyApp());
}

// inheritance using extends
class MyApp extends StatelessWidget {
  // BuildContext  - object type provided by flutter
  // context - my variable override
  // Widget - return object of type Widget provided by flutter
  // Idea - Always start with type then variable.
  @override // decorator - marks the override for the build method as intentional.
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello! This is my first Android App'));
  }
}