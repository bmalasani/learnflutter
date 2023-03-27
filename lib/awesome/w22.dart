//! Aspect Ratio
import 'package:flutter/material.dart';

class Widget22 extends StatelessWidget {
  const Widget22({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: double.maxFinite,
      alignment: Alignment.center,
      height: 350.0,
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Image.network(
          "https://s3.amazonaws.com/freestock-prod/450/freestock_92988871.jpg",
          width: double.infinity,
        ),
      ),
    );
  }
}
