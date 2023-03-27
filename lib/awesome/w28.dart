import 'package:flutter/material.dart';

class Widget28 extends StatelessWidget {
  const Widget28({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 1/2,
        widthFactor: 1/2,
        alignment: Alignment.center,
        child: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}
