import 'package:flutter/material.dart';

class MediaQuery2 extends StatefulWidget {
  const MediaQuery2({super.key});

  @override
  State<MediaQuery2> createState() => BbelajarMediaStateQuery();
}

class BbelajarMediaStateQuery extends State<MediaQuery2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Media Query"),
        backgroundColor: Colors.amber,
      ),
      // backgroundColor: Colors.cyan,
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: containerMethod(context),
            )
          : Row(
              children: containerMethod(context),
            ),
    );
  }

  List<Widget> containerMethod(BuildContext context) {
    return <Widget>[
      Container(
        color: Colors.amber,
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 10,
      ),
      Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 10,
      ),
      Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 10,
      )
    ];
  }
}
