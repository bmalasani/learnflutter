//! Table

import 'package:flutter/material.dart';

class Widget9 extends StatefulWidget {
  static String name = "Table";

  const Widget9({super.key});

  @override
  State<Widget9> createState() => _Widget9State();
}

class _Widget9State extends State<Widget9> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Table(
          border: TableBorder.all(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.lime, Colors.limeAccent],
                    )),
                children: List.generate(
                    3,
                    (index) => TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Column $index'),
                          ),
                        ))),
            ...List.generate(
                30,
                (index) => TableRow(
                    children: List.generate(
                        3,
                        (col) => TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Value $index'),
                              ),
                            ))))
          ],
        ),
      ),
    );
  }
}
