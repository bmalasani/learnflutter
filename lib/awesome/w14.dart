//! DatePicker

import 'package:flutter/material.dart';

class Widget14 extends StatefulWidget {
  static String name = "TimePicker";
  const Widget14({super.key});

  @override
  State<Widget14> createState() => _Widget14State();
}

class _Widget14State extends State<Widget14> {
  TimeOfDay selectedDate = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: Text("Select Time"),
          onPressed: () async {
            final dateTime = await showTimePicker(
              context: context,
              initialEntryMode: TimePickerEntryMode.input,
              initialTime: TimeOfDay.now(),
            );
            if (dateTime != null) {
              setState(() {
                selectedDate = dateTime;
              });
            }
          },
        ),
        Text(selectedDate.format(context))
      ],
    ));
  }
}
