//! AutoComplete

import 'package:flutter/material.dart';

class Widget23 extends StatefulWidget {
  const Widget23({super.key});

  @override
  State<Widget23> createState() => _Widget23State();
}

class _Widget23State extends State<Widget23> {
  final List<String> items = [
    "Apple",
    "Banana",
    "Guva",
    "Pineapple",
    "Mango",
    "Orange"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.blueGrey,
      child: Autocomplete<String>(
        optionsBuilder: (textEditingValue) {
          if (textEditingValue.text == '') {
            return List.empty();
          }
          return items.where((element) => element
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase()));
        },
      ),
    );
  }
}
