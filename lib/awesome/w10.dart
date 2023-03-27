//! Alert Dialog

import 'package:flutter/material.dart';

class Widget10 extends StatelessWidget {
  static String name = "Alert Dialog";

  const Widget10({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text("Show Dialog"),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Hello"),
                icon: Icon(Icons.help),
                actionsAlignment: MainAxisAlignment.end,
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"))
                ],
              );
            });
      },
    ));
  }
}
