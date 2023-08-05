import 'package:flutter/material.dart';

class belajarTextStyle extends StatelessWidget {
  const belajarTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Text Design"),
        ),
        body: Center(
            child: Text(
          "Contoh Text",
          style: TextStyle(
              fontFamily: "roboto",
              fontStyle: FontStyle.italic,
              fontSize: 30,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.dotted),
        )),
      ),
    );
  }
}
