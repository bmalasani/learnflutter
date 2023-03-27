import 'package:flutter/material.dart';

class Widget17 extends StatelessWidget {
  const Widget17({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: ((context, scrollController) {
        return Container(
          color: Colors.amberAccent,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        );
      }),
    );
  }
}
