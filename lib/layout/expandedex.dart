import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn/layout/rowex.dart';

class ExpandedEx extends StatelessWidget {
  const ExpandedEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Expanded Widget",
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("All Expanded exaples"),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(),
            Expanded(flex: 3, child: Box(color: Colors.lightBlue)),
            Box(color: Colors.blueGrey)
          ],
        ),
        
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Box(color: Colors.lightBlue),
            Expanded(child: Box(color: Colors.blueGrey))
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Expanded(child: Box(color: Colors.lightBlue)),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Box(),
            Expanded(child: Box(color: Colors.lightBlue)),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Box()),
            Box(color: Colors.lightBlue),
            Box(color: Colors.blueGrey)
          ],
        )
      ],
    );
  }
}
