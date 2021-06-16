import 'package:flutter/material.dart';

class DragableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Center(
            child: Draggable(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                feedback: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                )),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
              child: DragTarget(
                builder: (context, candidateData, rejectedData) {},
                onAccept: (data) {
                  return true;
                },
                onWillAccept: (data) {
                  return true;
                },
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.lightGreenAccent,
              height: 50,
              width: 50,
              child: DragTarget(
                builder: (context, candidateData, rejectedData) {},
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  //return true;
                },
              ),
            ))
          ],
        )
      ],
    ));
  }
}
