import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionStatement;
  Question(this.questionStatement);
  @override
  Widget build(BuildContext context) {
    return Text(
      questionStatement,
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
