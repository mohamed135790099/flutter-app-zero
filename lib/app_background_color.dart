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
  TextStyle s = TextStyle(color: Colors.lime, fontSize: 35);
  TextStyle s2 = TextStyle(color: Colors.deepPurple, fontSize: 35);

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
        color: Colors.purpleAccent,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(90),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(180),
            padding: EdgeInsets.all(0),
            color: Colors.green,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: MyTest(
                    "aaa",
                    s2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: MyTest("ssssss", s),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
      ),
    );
  }
}
