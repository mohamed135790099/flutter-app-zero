

import 'package:app01/age.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>{
  var b= Colors.black;
  var w= Colors.white;
  var r= Colors.pinkAccent;
  var bl= Colors.blue;
  var lime= Colors.lime;
  var ca= Colors.pink;
  var mycontroller =TextEditingController();
  var str;

  bool passwordvisible=true;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Title"),
        ),
        body: Container(
          height: double.infinity,
          color:b ,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),

                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:InputDecoration(
                      fillColor:w,
                      filled:true,
                      enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(width:5,color:lime),
                          borderRadius: BorderRadius.circular(9)),
                      labelText: "Birth Year",
                      labelStyle: TextStyle(fontSize:30,color:r),
                      hintText:"Enter Your Birth Year",
                      hintStyle: TextStyle(fontSize:20,color:bl),
                      prefixIcon: Icon(Icons.today,color:bl,),
                    ),
                    controller: mycontroller,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:InputDecoration(
                      fillColor:ca,
                      filled:true,
                      enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(width:5,color:lime),
                          borderRadius: BorderRadius.circular(9)),
                      hintText:"Your AGE $str Years Old" ,
                      hintStyle: TextStyle(fontSize:20,color:w),
                    ),
                  ),
                ),
                SizedBox(height:40,),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Get Value",style:TextStyle(fontSize:40,color:Colors.lightGreen),),
                    onPressed: (){
                      setState(() {
                        AgeCalculator(int.parse(mycontroller.text));
                        str=AgeCalculator.age;
                      });
                    },
                    color:bl,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  ),
                ),

                SizedBox(height:20,),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: ()=>setState((){
            b= b==Colors.black? Colors.purpleAccent:Colors.black;
            w=w==Colors.white? Colors.pinkAccent: Colors.white;
            r=r== Colors.pinkAccent? Colors.lightGreenAccent: Colors.pinkAccent;
            bl = bl== Colors.blue? Colors.deepPurple: Colors.blue;
            lime=lime== Colors.lime?Colors.deepOrange:Colors.lime;
            ca=ca== Colors.pink?Colors.lightGreen:Colors.pink;
          }),
        ),
      ),

    );
  }

}