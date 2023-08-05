import 'package:flutter/material.dart';

class rowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 234, 0, 255),
        title: Text("Latihan Column dan row"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("data 1"),
          Text("data 2"),
          Text("data 3"),
          Text("data 4"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[Text("data 5"), Text("data 6"), Text("data 7")],
          )
        ],
      ),
    ));
  }
}
