import 'package:flutter/material.dart';

class belajarListView extends StatefulWidget {
  const belajarListView({super.key});

  @override
  State<belajarListView> createState() => _belajarListViewState();
}

class _belajarListViewState extends State<belajarListView> {
  int number = 1;
  bool isButtonEnabled = false;

  List<Widget> widgets = [];

  void addData() {
    setState(() {
      widgets.add(Text(
        "Data ke-" + number.toString(),
        style: TextStyle(fontSize: 35, fontFamily: "Roboto"),
      ));
      number += 1;
      isButtonEnabled = true;
    });
  }

  void deleteData() {
    setState(() {
      number -= 1;
      if (number <= 1) {
        isButtonEnabled = false;
      } else {
        isButtonEnabled = true;
      }
      widgets.removeLast();
    });
  }

  void clearData() {
    setState(() {
      widgets.clear();
      number = 1;
      isButtonEnabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Belajar List View"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(onPressed: addData, child: Text("Tambah Data")),
              ElevatedButton(
                  onPressed: isButtonEnabled ? deleteData : null,
                  child: Text("Hapus Data")),
              ElevatedButton(onPressed: clearData, child: Text("Clear"))
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: widgets)
        ],
      ),
    ));
  }
}
