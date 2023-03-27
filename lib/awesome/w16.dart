import 'package:flutter/material.dart';

class Widget16 extends StatefulWidget {
  const Widget16({super.key});

  @override
  State<Widget16> createState() => _Widget16State();
}

class _Widget16State extends State<Widget16> {
  final List items = List<int>.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ...items.map((e) => Dismissible(
                key: UniqueKey(),
                background: Container(
                  color: Colors.amberAccent,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                  title: Text('Item $e'),
                  subtitle: Text('Sub title $e'),
                  trailing: Icon(Icons.ac_unit),
                ),
              ))
        ],
      ),
    );
  }
}
