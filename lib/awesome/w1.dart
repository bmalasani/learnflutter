import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  static String name = "Material Banner";

  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Open'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
              padding: EdgeInsets.all(5),
              elevation: 5,
              leading: Icon(Icons.home),
              content: Text("Hi, Nai"),
              actions: [
                IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).clearMaterialBanners();
                    },
                    icon: Icon(Icons.close))
              ]));
        },
      ),
    );
  }
}
