import 'package:app01/quize.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';
main()=>runApp(MyApp());
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
var w=Colors.white;
var b= Colors.black;

class _MyAppState extends State<MyApp> {

  bool isSwitched = false;

  int _totalScore=0;
  int _questionIndex=0;
  int num0=0,num1=0,num2=0;

  void _resetQuiz(){

    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  void answerQuestion(score){
    if(_questionIndex==0) num0 =score;
   else if(_questionIndex==1) num1 =score;
   else  if(_questionIndex==2) num2 =score;

    _totalScore+=score;
    setState(() {
      _questionIndex+=1;
    });
    print("_questionIndex=$_questionIndex");
    print("num0=$num0");
    print("num1=$num1");
    print("num2=$num2");
    print("_totalScore=$_totalScore");


  }

  final List<Map<String, Object>> _question=[
    {
    'questionText':'What\'s your favorite color?',
    'answers':
    [
      { 'text':'Black','score':76},
      { 'text':'Green','score':89},
      { 'text':'Blue','score':74},
      { 'text':'Yellow','score':65},

    ]
    },
    {
      'questionText':'What\'s your favorite animal?',
      'answers':[
        { 'text':'Rabbit','score':45},
        { 'text':'Tiger','score':155},
        { 'text':'Elephant','score':45},
        { 'text':'Lion','score':55},

      ]
    },
    {
      'questionText':'What\'s your favorite food?',
      'answers':[
        { 'text':'meat','score':53},
        { 'text':'rise','score':54},
        { 'text':'tomato','score':56},
        { 'text':'potatoes','score':74},

      ]
    },

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // to not display bar in app
      debugShowCheckedModeBanner:false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        actions: [
          Switch(value:isSwitched , onChanged:(value){
            setState(() {
              isSwitched=value;
              print(isSwitched);
              if(isSwitched==true){b=Colors.white;w=Colors.black;}
              if(isSwitched==false){b=Colors.black;w=Colors.white;}
            });
          },
            activeColor:Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor:Colors.black ,
          )
        ],
      ),
      body: Container(
      //margin: EdgeInsets.all(90),
        color: w,
        child:_questionIndex<_question.length?
            Quize(_question, _questionIndex, answerQuestion)
            :Result(_resetQuiz,_totalScore)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back,color:w,size:25,),
        onPressed:(){
          if(_questionIndex==0) _totalScore -=num0;
          if(_questionIndex==1) _totalScore -=num1;
          if(_questionIndex==2) _totalScore -=num2;

          setState((){
            if(_questionIndex>0)
              {
                _questionIndex--;
              }
          });
          print("_questionIndex=$_questionIndex");
          print("num=$num0");
          print("num=$num1");
          print("num=$num2");

          print("_totalScore=$_totalScore");

        },

      ),
      ),
    );
  }
}
