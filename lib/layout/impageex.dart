import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn/layout/rowex.dart';

class ImageEx extends StatelessWidget {
  const ImageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(title: "Image Widget", children: [
      Image.network('https://picsum.photos/250?image=9'),
      Image(image: AssetImage("assets/sample.png"),),
    ]);
  }
}
