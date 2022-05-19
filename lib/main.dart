import 'package:flutter/material.dart';

void main () {

}

// inheritance using extends
class MyApp extends StatelessWidget{
  // BuildContext  - object type provided by flutter
  // context - my variable override
  // Widget - return object of type Widget
  // Idea - Always start with type then variable.
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'));
  }
}