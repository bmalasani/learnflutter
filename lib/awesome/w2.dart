import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  static String name = "Preferred Size";

  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text('Close'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.redAccent,
            Colors.deepOrangeAccent,
          ])),
          child: SafeArea(
              child: ListTile(
            title: Text("PreferredSize"),
            trailing: Icon(Icons.abc_rounded),
          )),
        ),
      ),
    );
  }
}
