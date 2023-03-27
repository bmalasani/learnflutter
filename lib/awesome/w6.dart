import 'package:flutter/material.dart';

class Widget6 extends StatefulWidget {
  static String name = "CheckboxListTile";

  const Widget6({super.key});

  @override
  State<Widget6> createState() => _Widget6State();
}

class _Widget6State extends State<Widget6> {
  final List<int> items = List<int>.generate(30, (index) => index);
  final List<bool> boolitems = List<bool>.generate(30, (index) => false);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: List.generate(
            items.length,
            (index) => CheckboxListTile(
                  key: Key('$index'),
                  tileColor: items[index].isOdd
                      ? Colors.blueGrey[50]
                      : Colors.blueGrey[100],
                  title: Text('Item ${items[index]}'),
                  subtitle: Text('SubItem ${items[index]}'),
                  value: boolitems[index],
                  onChanged: (bool? value) {
                    setState(() {
                      if (value != null) {
                        boolitems[index] = value;
                      }
                    });
                  },
                )),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
            final bool value = boolitems[oldIndex];
            boolitems[oldIndex] = boolitems[newIndex];
            boolitems[newIndex] = value;
          });
        });
  }
}
