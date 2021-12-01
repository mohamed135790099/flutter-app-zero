import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var str = "";
  var string = "";

  var a = Colors.blue;
  var b = Colors.amber;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Title"),
          backgroundColor: a,
        ),
        body:
            // can use container instead of Center but use aligement to put  content in center_page
            //center invisible and cannot be visible
            //container invisible but can be visible
            Container(
          color: b,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // will put cot column in centre
            children: [
              Text(
                string, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  backgroundColor: Color.fromARGB(255, 208, 18, 23),
                  color: Colors.orange,
                  fontStyle: FontStyle.italic,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2, 3),
                      // control shadow by(x(horizontal),y(my head)))
                      color: Colors.purple,
                    )
                  ],
                ),),
              Text('$_counter', style: Theme.of(context).textTheme.headline4),
              Text("Body Title", style: TextStyle(
                    color: Colors.blueAccent,
                    backgroundColor: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    height: 0,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2, 3),
                        // control shadow by(x(horizontal),y(my head)))
                        color: Colors.blue,
                        blurRadius: 2.7,
                      )
                    ],
                    decoration: TextDecoration.combine(
                        [TextDecoration.underline, TextDecoration.overline]),
                    decorationColor: Colors.black26,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationThickness: 7,
                  )),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    a = Colors.teal;
                    b = Colors.indigo;
                    string = "You have pushed the button this many times:";
                  });
                },
                onLongPress: () {
                  setState(() {
                    string = "";
                  });
                },
                color: Colors.purple,
                disabledColor: Colors.purpleAccent,
                padding: EdgeInsets.fromLTRB(50, 11, 50, 11),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  side: BorderSide(color:Colors.blueAccent,width:9),
                ),
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 35,fontWeight:FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                str,
                style: TextStyle(
                  color: Colors.deepPurple,
                  backgroundColor: Colors.red,
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2, 3),
                      // control shadow by(x(horizontal),y(my head)))
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    str = "Hello!";
                    a = Colors.green;
                    b = Colors.deepPurple;
                  });
                },
                onLongPress: () {
                  setState(() {
                    str = "";
                  });
                },
                textColor: Colors.white,
                color: Colors.brown,

                //this two function work when not exist pressed
                disabledColor: Colors.blueAccent,
                disabledTextColor: Colors.redAccent,

                splashColor: Colors.blue,
                //this color will display when click one time
                highlightColor: Colors.cyanAccent,
                // this color will display continues

                padding: EdgeInsets.fromLTRB(50, 12, 50, 12),
                child: Text(
                  "Click Me",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    str = "";
                    a = Colors.indigo;
                    b = Colors.pink;
                  });
                },
                textColor: Colors.white,
                color: Colors.lightBlue,

                //this two function work when not exist pressed
                disabledColor: Colors.blueAccent,
                disabledTextColor: Colors.redAccent,

                splashColor: Colors.blue,
                //this color will display when click one time
                highlightColor: Colors.cyanAccent,
                // this color will display continues

                padding: EdgeInsets.fromLTRB(50, 12, 50, 12),
                child: Text(
                  "Click Me",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FloatingActionButton.extended(onPressed:(){
                setState(() {
                  a=Colors.lime;
                  b=Colors.orange;
                });
              } , label: Text("Add"),
                  backgroundColor:Colors.black,
                icon: Icon(Icons.alarm_add,color:Colors.pink,),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
