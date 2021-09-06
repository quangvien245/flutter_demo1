import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText);
  // Question({this.questionText});
  // Question(questionText) {
  //   this.questionText = questionText;
  // }

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText
    );
  }
}
