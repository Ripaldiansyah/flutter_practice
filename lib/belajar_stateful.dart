import 'package:flutter/material.dart';

class belajarStateful extends StatefulWidget {
  const belajarStateful({super.key});

  @override
  State<belajarStateful> createState() => _belajarStatefulState();
}

class _belajarStatefulState extends State<belajarStateful> {
  int number = 0;

  void tombolClear() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Stateful"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 20 + number.toDouble()),
              ),
              ElevatedButton(
                  onPressed: //anonymouus method
                      () {
                    setState(() {
                      number += 1;
                    });
                  },
                  child: Text("Tambah Bilangan")),
              ElevatedButton(onPressed: tombolClear, child: Text("Reset"))
            ],
          ),
        ),
      ),
    );
  }
}
