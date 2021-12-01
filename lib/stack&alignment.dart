import 'package:flutter/material.dart';

import 'test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeAppState();
  }
}

class _MyHomeAppState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "AppBar Title",
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                  width: 400,
                  height: 400,
                  color: Colors.green,
                  child: Row(
                    // space between Distributed distance by equal but begin start
                    // space evenly Distributed distance by equal
                    //space around The space between the first and last element the text of the space between the remaining elements

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "text1",
                        style: s,
                      ),
                      Text(
                        "text3",
                        style: s3,
                      ),
                      Text(
                        "text3",
                        style: s3,
                      ),
                    ],
                  )),
              Container(
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "text2",
                        style: s2,
                      ),
                    ],
                  )),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "text3",
                        style: s3,
                      ),
                    ],
                  )),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
      ),
    );
  }
}
