import 'package:flutter/material.dart';

class Widget19 extends StatefulWidget {
  const Widget19({super.key});

  @override
  State<Widget19> createState() => _Widget19State();
}

class _Widget19State extends State<Widget19> {
  bool _bool = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: Text("Switch")),
          Container(
            child: AnimatedCrossFade(
                firstChild: Image.network(
                  "https://s3.amazonaws.com/freestock-prod/450/freestock_413916.jpg",
                  width: 500,
                ),
                secondChild: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amberAccent,
                ),
                crossFadeState:
                    _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 700)),
          )
        ],
      ),
    );
  }
}
