import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn/layout/rowex.dart';

class SizedBoxEx extends StatelessWidget {
  const SizedBoxEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(
      title: "SizedBox Widget",
      children: [
        SizedBox(
          width: 250,
          height: 200,
          child: Box(),
        )
      ],
    );
  }
}