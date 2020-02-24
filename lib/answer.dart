import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String optionStatement;
  final int optionNumber;
  final Function optionHandler;
  Answer(this.optionNumber, this.optionStatement,this.optionHandler);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(optionStatement),color: Colors.lightBlue, onPressed: optionHandler,);
  }
}
