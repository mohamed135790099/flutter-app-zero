import 'package:app01/main_quize.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;
  Result(this.q,this.resultScore);
  String get resultPhrase{
    String resultText;
    if(resultScore>= 200){
      resultText="You are awesome";
    }
    else if(resultScore<=190&&resultScore>=100){
      resultText="pretty Likable";
    }
    else{
      resultText="You are so bad!";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your Score is :$resultScore",

          style: TextStyle(
            color: b,
            fontSize: 55,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2, 3),
                // control shadow by(x(horizontal),y(my head)))
              )
            ],
          ),
        ),
        Text(
         resultPhrase,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: b,

          ),
        ),
         FlatButton(onPressed: q, child: Text("Restart The App",style: TextStyle(fontSize:30,color:b),)),
          ]
    ),

    );
  }
}
