import 'package:flutter/material.dart';

class Widget18 extends StatefulWidget {
  const Widget18({super.key});

  @override
  State<Widget18> createState() => _Widget18State();
}

class _Widget18State extends State<Widget18> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: Colors.amberAccent,
            feedback: Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent.withOpacity(0.5),
              child: Center(child: Text('Box')),
            ),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(child: Text('Box')),
            ),
          ),
        DragTarget(
          onAccept: (Color data) {
            setState(() {
            caughtColor=data;
            }); 
          },
          builder:(context, candidateData, rejectedData) {
          return Container(
              width: 200,
              height: 300,
              color: caughtColor,
              child: Center(child: Text('Box')),
            );
        },)
        ],
      ),
    );
  }
}
