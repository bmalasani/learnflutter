//! Cupertino context menu

import 'package:flutter/cupertino.dart';

class Widget8 extends StatelessWidget {
  static String name = "Cupertino Context Menu";

  const Widget8({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 300,
        child: CupertinoContextMenu(
          child: Image.network(
            "https://picsum.photos/250?image=9",
            height: 50,
            width: 50,
          ),
          actions: [
            CupertinoContextMenuAction(child: Text("print")),
            CupertinoContextMenuAction(child: Text("open"))
          ],
        ),
      ),
    );
  }
}
