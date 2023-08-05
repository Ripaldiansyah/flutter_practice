import 'package:flutter/material.dart';
import 'package:flutter_practice/mediaQuery/mediaQuery.dart';
import 'package:flutter_practice/mediaQuery/mediaQuery2..dart';

class belajarMediaQuery extends StatefulWidget {
  const belajarMediaQuery({super.key});

  @override
  State<belajarMediaQuery> createState() => _belajarMediaQueryState();
}

class _belajarMediaQueryState extends State<belajarMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQuery2(),
    );
  }
}
