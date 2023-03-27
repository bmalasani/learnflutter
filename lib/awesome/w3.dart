import 'package:flutter/material.dart';
import 'package:learn/awesome/awesome.dart';

class Widget3 extends StatelessWidget {
  static String name = "Bottom Sheet";

  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Open'),
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 150,
                  child: Center(
                      child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Close"),
                  )),
                );
              });
        },
      ),
    );
  }
}
