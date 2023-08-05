import 'package:flutter/material.dart';

class animatedContainer_Belajar extends StatefulWidget {
  const animatedContainer_Belajar({super.key});

  @override
  State<animatedContainer_Belajar> createState() =>
      _animatedContainer_BelajarState();
}

class _animatedContainer_BelajarState extends State<animatedContainer_Belajar> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Belajar Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                click = !click;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Colors.yellow,
              curve: Curves.fastEaseInToSlowEaseOut,
              width: click ? 400 : 200,
              height: click ? 500 : 200,
              alignment: click ? Alignment.topCenter : Alignment.center,
              child: Icon(
                Icons.android,
                size: 30,
              ),
            )),
      ),
    ));
  }
}
