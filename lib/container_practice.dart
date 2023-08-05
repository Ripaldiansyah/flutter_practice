import 'package:flutter/material.dart';

class containerPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Container"),
          ),
          body: Container(
            color: Colors.blue[400],
            margin: EdgeInsets.fromLTRB(20, 30, 50, 50),
            // padding: EdgeInsets.only(right: 70, top: 100),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: <Color>[Colors.purple, Colors.blueAccent])),
              margin: EdgeInsets.all(30),
            ),
          )),
    );
  }
}
