//Animated Icon

import 'package:flutter/material.dart';

class Widget25 extends StatefulWidget {
  const Widget25({super.key});

  @override
  State<Widget25> createState() => _Widget25State();
}

class _Widget25State extends State<Widget25> with TickerProviderStateMixin {
  bool _play = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_play == false) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
          _play = !_play;
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.pause_play,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}
