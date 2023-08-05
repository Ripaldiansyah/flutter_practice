import 'package:flutter/material.dart';

class belajarImage extends StatefulWidget {
  const belajarImage({super.key});

  @override
  State<belajarImage> createState() => _belajarImageState();
}

class _belajarImageState extends State<belajarImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Image"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            color: Colors.black,
            height: 200,
            width: 200,
            child: Image(
              image: AssetImage("images/Oppenheimer-poster.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
