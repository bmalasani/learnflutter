//! DatePicker

import 'package:flutter/material.dart';

class Widget13 extends StatefulWidget {
  static String name = "Date Picker";
  const Widget13({super.key});

  @override
  State<Widget13> createState() => _Widget13State();
}

class _Widget13State extends State<Widget13> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: Text("Select Date"),
          onPressed: () async {
            final dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                initialDatePickerMode: DatePickerMode.day,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100));
            if (dateTime != null) {
              setState(() {
                selectedDate = dateTime;
              });
            }
          },
        ),
        Text("${selectedDate.year}-${selectedDate.month}-${selectedDate.day}")
      ],
    ));
  }
}
