

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
  var str="Text Field";

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
                    fillColor:ca,
                    filled:true,
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(width:5,color:lime),
                      borderRadius: BorderRadius.circular(90)
                    ),
                    labelText: str,
                    labelStyle: TextStyle(fontSize:30,color: r),
                    hintText:"Enter Text" ,
                    hintStyle: TextStyle(fontSize:20,color: w),
                  ),
                 // maxLines:5,
                  controller: mycontroller,
                  style: TextStyle(color:w),
                  keyboardType: TextInputType.text,

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
                        borderRadius: BorderRadius.circular(90)),
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize:30,color:r),
                    hintText:"Enter Name" ,
                    hintStyle: TextStyle(fontSize:20,color:w),
                    prefixIcon: Icon(Icons.person_outline,color:bl,),
                  ),
                  keyboardType: TextInputType.text,
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
                    labelText: "E-mail",
                    labelStyle: TextStyle(fontSize:30,color:r),
                    hintText:"Enter E-mail" ,
                    hintStyle: TextStyle(fontSize:20,color:w),
                    prefixIcon: Icon(Icons.email_outlined,color:bl,),
                  ),
                  keyboardType: TextInputType.emailAddress,
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
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize:30,color:r),
                    hintText:"Enter Password" ,
                    hintStyle: TextStyle(fontSize:20,color:w),
                    suffixIcon: IconButton(
                      color: bl,
                      icon: Icon(
                       passwordvisible?Icons.visibility:Icons.visibility_off
                      ),
                      onPressed: (){
                        setState(() {
                          passwordvisible=!passwordvisible;
                        });
                      },
                    )
                  ),

                  keyboardType: TextInputType.visiblePassword,
                  obscureText:passwordvisible,
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: TextField(
                  decoration:InputDecoration(
                    prefixText:"+20  ",
                    suffixText: "Egypt",
                    fillColor:ca,
                    filled:true,
                    enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(width:5,color:lime),
                    borderRadius: BorderRadius.circular(9)),
                    labelText: "Phone Number",
                    labelStyle: TextStyle(fontSize:30,color:r),
                    hintText:"Enter Phone Number" ,
                    hintStyle: TextStyle(fontSize:20,color:w),
                    prefixIcon: Icon(Icons.phone,color: Colors.blue,),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height:40,),
              Container(
                margin: EdgeInsets.all(8.0),
                child: RaisedButton(
                 child: Text("Get Value",style:TextStyle(fontSize:40,color:Colors.lightGreen),),
                  onPressed: (){
                   setState(() {
                     str=mycontroller.text;
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