import 'package:flutter/material.dart';

class Widget5 extends StatefulWidget {
  static String name = "ReorderableListView";
  const Widget5({super.key});

  @override
  State<Widget5> createState() => _Widget5State();
}

class _Widget5State extends State<Widget5> {
  final List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  tileColor: items[index].isOdd
                      ? Colors.blueGrey[50]
                      : Colors.blueGrey[100],
                  title: Text('Item ${items[index]}'),
                  trailing: Icon(Icons.drag_handle),
                )),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        });
  }
}
