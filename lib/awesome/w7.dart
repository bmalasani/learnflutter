//! Circle Avatar
import 'package:flutter/material.dart';

class Widget7 extends StatelessWidget {
  static String name = "Circle Avatar";

  const Widget7({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
          child: Icon(Icons.person_2),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          radius: 50),
    );
  }
}
