import 'package:flutter/material.dart';

class belajarLayoutFlexible extends StatelessWidget {
  const belajarLayoutFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Layouting"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.amber,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.greenAccent,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.redAccent,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.deepPurple,
                          )),
                    ],
                  ),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.cyan,
                )),
          ],
        ),
      ),
    );
  }
}
