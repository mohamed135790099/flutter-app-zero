import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quize extends StatelessWidget {
  final List<Map<String, Object>>question;
  final int questionIndex;
  final Function answerQuestion;
  Quize(this.question,this.questionIndex,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(question[questionIndex]['questionText']) ,
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          SizedBox(height:20,);
          return   Answer(()=>answerQuestion(answer['score']),answer['text']);

        }).toList(),

      ],
    );
  }
}
