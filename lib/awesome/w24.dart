//! ErrorWidget

import 'package:flutter/material.dart';

class Widget24 extends StatefulWidget {
  const Widget24({super.key});

  @override
  State<Widget24> createState() => _Widget24State();
}

class _Widget24State extends State<Widget24> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          throw FlutterError("message");
        },
        child: Text("throw error"));
  }
}
