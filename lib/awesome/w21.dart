//! Animated Text Style
import 'package:flutter/material.dart';

class Widget21 extends StatefulWidget {
  const Widget21({super.key});

  @override
  State<Widget21> createState() => _Widget21State();
}

class _Widget21State extends State<Widget21> {
  bool _first = false;
  double fontSize = 60;
  Color fontColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontWeight: FontWeight.bold,
            ),
            child: Text("Flutter"),
          ),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                fontSize = _first ? 90 : 60;
                fontColor = _first ? Colors.yellowAccent : Colors.green;
                _first = !_first;
              });
            },
            child: Text("Animate"))
      ],
    );
  }
}
