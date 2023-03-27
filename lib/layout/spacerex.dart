import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn/layout/rowex.dart';

class SpacerEx extends StatelessWidget {
  const SpacerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(
      title: "Spacer Widget",
      children: [
        Row(children: [
          Box(),
          Box(),
        ]),
        Row(children: [
          Box(),
          Spacer(),
          Box(),
        ])
      ],
    );
  }
}
