
import 'package:flutter/material.dart';
TextStyle s = TextStyle(color: Colors.lime, fontSize: 35);
TextStyle s2 = TextStyle(color: Colors.deepPurple, fontSize: 35);
TextStyle s3 = TextStyle(color: Colors.blueAccent, fontSize: 35);
class MyTest  extends StatelessWidget{
  String _text;
  TextStyle _textStyle;
  MyTest(this._text,this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Text(_text,style: _textStyle);
  }

}