import 'package:flutter/material.dart';

class Widget27 extends StatelessWidget {
  const Widget27({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeInImage.assetNetwork(
        placeholder: "assets/sample.png",
         image: "https://i.ytimg.com/vi/pl2Ax20SrgQ/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCE1DPVcQA_FjpEyIQN4D2dNTc1bQ"),
    );
  }
}
