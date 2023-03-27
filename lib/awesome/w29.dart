import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

import 'package:flutter/material.dart';

class Widget29 extends StatefulWidget {
  const Widget29({super.key});

  @override
  State<Widget29> createState() => _Widget29State();
}

class _Widget29State extends State<Widget29> {
  Future<Uint8List> getImage() async {
    await Future.delayed(Duration(seconds: 1));
    http.Response res = await http.get(Uri.parse(
        "https://www.stockvault.net/data/2020/01/18/272608/thumb16.jpg"));
    return res.bodyBytes;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: getImage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return ErrorWidget("An Error");
          }
          return Column(
            children: [
              Image.memory(snapshot.data!),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Refresh"))
            ],
          );
        },
      ),
    );
  }
}
