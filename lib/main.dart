import 'package:flutter/material.dart';
import 'package:flutter_practice/MultiPageScreen/login_page.dart';
import 'package:flutter_practice/MultiPageScreen/myApp.dart';
import 'package:flutter_practice/belajar_animatedContainer.dart';
import 'package:flutter_practice/belajar_card.dart';
import 'package:flutter_practice/belajar_cupertino.dart';
import 'package:flutter_practice/belajar_dragable.dart';
import 'package:flutter_practice/belajar_image.dart';
import 'package:flutter_practice/belajar_layoutFlexible.dart';
import 'package:flutter_practice/belajar_listview.dart';
import 'package:flutter_practice/belajar_stack_dan_align.dart';
import 'package:flutter_practice/belajar_stateful.dart';
import 'package:flutter_practice/belajar_textField.dart';
import 'package:flutter_practice/belajar_textStyle.dart';
import 'package:flutter_practice/container_practice.dart';
import 'package:flutter_practice/mediaQuery/belajar_media_query.dart';
import 'package:flutter_practice/row_and_column.dart';

void main() {
  runApp(belajarMediaQuery());
}

//belajar stateless widget appbar dan body
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(96, 153, 138, 138),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(234, 252, 0, 252),
          title: Text("Ini Header"),
        ),
        body: Center(
            child: Container(
                color: const Color.fromARGB(255, 132, 160, 184),
                width: 150,
                height: 50,
                child: Text(
                  "Saya sedang melatih kemampuan fluter saya ssdasdasd",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
