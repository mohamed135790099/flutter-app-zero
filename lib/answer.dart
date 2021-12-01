import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final Function x;
  Answer(this.x,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.fromLTRB(0,10, 0,0),
        child: RaisedButton(
            color: Colors.blue,
            //this two function work when not exist pressed
            disabledColor: Colors.blueAccent,
            disabledTextColor: Colors.redAccent,

            splashColor: Colors.purpleAccent,
            //this color will display when click one time
            highlightColor: Colors.red,
            // this color will display continues

            child: Text(answerText,style:TextStyle(fontSize: 30,color: Colors.white)),
            onPressed: x),
      ),
    );
  }
}
