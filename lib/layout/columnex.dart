import 'package:flutter/material.dart';
import 'package:learn/layout/rowex.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Column Widget",
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 10,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("All Column max exaples"),
          ),
          Container(
            height: 400,
            padding: EdgeInsets.all(10),
             decoration:
                BoxDecoration(border: Border.all(color: Colors.redAccent)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("All Column min exaples"),
          ),
          Container(
            height: 400,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.greenAccent)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Box(),
                    Box(color: Colors.lightBlue),
                    Box(color: Colors.blueGrey)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
