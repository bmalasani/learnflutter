//! Popup menu item

import 'package:flutter/material.dart';

class Widget20 extends StatelessWidget {
  const Widget20({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text("Some menu"),
        trailing: PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Option1")),
              PopupMenuItem(child: Text("Option2")),
            ];
          },
        ),
      ),
    );
  }
}
