import 'package:app01/main_quize.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(14),
        width: double.infinity,
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30,color:b,fontWeight:FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
