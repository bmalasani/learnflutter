//! Animated Container

import 'dart:ffi';

import 'package:flutter/material.dart';

class Widget11 extends StatefulWidget {
  static String name = "Animated Container";

  const Widget11({super.key});

  @override
  State<Widget11> createState() => _Widget11State();
}

class _Widget11State extends State<Widget11> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 200.0 : 100.0,
          color: selected ? Colors.blueGrey[100] : Colors.grey[200],
          duration: Duration(seconds: 1),
          alignment: selected ? Alignment.center : Alignment.centerLeft,
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(
            curve: Curves.bounceInOut,
            size: selected ? 150 : 75,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
