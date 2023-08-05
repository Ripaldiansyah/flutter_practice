import 'package:flutter/material.dart';

class BelajarMediaQuery extends StatefulWidget {
  const BelajarMediaQuery({super.key});

  @override
  State<BelajarMediaQuery> createState() => BbelajarMediaStateQuery();
}

class BbelajarMediaStateQuery extends State<BelajarMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Media Query"),
        backgroundColor: Colors.amber,
      ),
      // backgroundColor: Colors.cyan,
      body: Container(
        margin: EdgeInsets.all(50),
        color: Colors.red,
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
