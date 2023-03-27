import 'package:flutter/material.dart';

class Widget4 extends StatefulWidget {
  static String name = "LongPressDraggable";

  const Widget4({super.key});

  @override
  State<Widget4> createState() => _Widget4State();
}

class _Widget4State extends State<Widget4> {
  Offset _offset = const Offset(100, 150);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                  left: _offset.dx,
                  right: _offset.dy,
                  child: LongPressDraggable(
                      onDragEnd: (details) {
                        setState(() {
                          var adju = MediaQuery.of(context).size.height -
                              constraints.maxHeight;
                          _offset =
                              Offset(details.offset.dx, details.offset.dy - adju);
                        });
                      },
                      child: Image.network('https://picsum.photos/250?image=9'),
                      feedback: Image.network(
                        'https://picsum.photos/250?image=9',
                        height: 200,
                        color: Colors.deepOrangeAccent,
                        colorBlendMode: BlendMode.colorDodge,
                      ))),
            ],
          );
        },
      ),
    );
  }
}
