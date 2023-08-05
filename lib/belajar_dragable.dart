import 'package:flutter/material.dart';
import 'package:flutter_practice/colorCustom.dart';

class belajarDrag extends StatefulWidget {
  const belajarDrag({super.key});

  @override
  State<belajarDrag> createState() => _belajarDragState();
}

class _belajarDragState extends State<belajarDrag> {
  bool isAccept = false;
  Color targetColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Ngedrug"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: ColorCustome().color1,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color4,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: ColorCustome().color2,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color4,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: ColorCustome().color3,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color3,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color4,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: ColorCustome().color3.withOpacity(0.7),
                      shape: StadiumBorder(),
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
                onWillAccept: (data) => true,
                onAccept: (data) => (isAccept = true, targetColor = data),
                builder: (context, candidateData, rejectedData) => (isAccept)
                    ? SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: Colors.black12,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}
