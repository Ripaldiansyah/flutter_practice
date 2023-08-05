import 'package:flutter/material.dart';

class belajarCard extends StatefulWidget {
  const belajarCard({super.key});

  @override
  State<belajarCard> createState() => _belajarCardState();
}

class _belajarCardState extends State<belajarCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              cardMethod(Icons.login, "Login", 5),
              cardMethod(Icons.logout, "Logout", 10)
            ],
          ),
        ),
      ),
    );
  }

  Card cardMethod(IconData icon, String textData, int Shadow) {
    return Card(
      elevation: Shadow.toDouble(),
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: Icon(
                icon,
                color: Colors.purple,
              )),
          Text(textData)
        ],
      ),
    );
  }
}
