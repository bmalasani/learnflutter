//! Card

import 'package:flutter/material.dart';

class Widget12 extends StatelessWidget {
  static String name = "Card";

  const Widget12({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        child: Card(
          elevation: 20,
          color: Colors.limeAccent[500],
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.cyan[700]),
              child: Row(
                children: [
                  Text(
                    "Buy",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
