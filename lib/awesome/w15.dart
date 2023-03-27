//! DatePicker

import 'package:flutter/material.dart';

class Widget15 extends StatefulWidget {
  const Widget15({super.key});

  @override
  State<Widget15> createState() => _Widget15State();
}

class _Widget15State extends State<Widget15> {
  int diffDays = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: Text("Select Date Range"),
          onPressed: () async {
            final dateTimeRange = await showDateRangePicker(
              context: context,
              initialEntryMode: DatePickerEntryMode.input,
              firstDate: DateTime(1600),
              lastDate: DateTime(2100),
            );
            print(dateTimeRange);
            if (dateTimeRange != null) {
              setState(() {
                diffDays = dateTimeRange.duration.inDays;
              });
            }
          },
        ),
        Text("$diffDays")
      ],
    ));
  }
}
