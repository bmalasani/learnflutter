import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn/layout/rowex.dart';

class FlexibleEx extends StatelessWidget {
  const FlexibleEx({super.key});

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
            "Flexible Widget",
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
          child: Text("All Flexible examples"),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Box(color: Colors.lightBlue)),
            Box(color: Colors.blueGrey)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Box(),
            Box(color: Colors.red,),
            Flexible(
                flex: 4, fit: FlexFit.loose, child: Box(color: Colors.blueGrey))
          ],
        )
      ],
    );
  }
}
