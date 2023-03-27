import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Template(
      title: "Row Widget",
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("All Row max exaples"),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("All Row min exaples"),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        )
      ],
    );
  }
}

class Template extends StatelessWidget {
  var title;

  var children;

  Template({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 10,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ...children,
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  Color color;

  Box({
    super.key,
    this.color = Colors.amberAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
