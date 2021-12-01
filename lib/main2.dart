import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Title"),
        ),
        body:
        // can use container instead of Center but use aligement to put  content in center_page
        //center invisible and cannot be visible
        //container invisible but can be visible
        Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // will put cot column in centre
            children: [


            ],
          ),
        ),
      ),
    );
  }
}
