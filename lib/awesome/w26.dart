// Choice chip

import 'package:flutter/material.dart';

class Widget26 extends StatefulWidget {
  const Widget26({super.key});

  @override
  State<Widget26> createState() => _Widget26State();
}

class _Widget26State extends State<Widget26> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        label: Text("Select Fruit"),
        pressElevation: 10,
        selected: isSelected,
        selectedColor: Colors.orange,
        onSelected: (value) {
          setState(() {
            isSelected = value;
          });
        },
      ),
    );
  }
}
