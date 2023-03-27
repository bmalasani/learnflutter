import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn/layout/layout.dart';
import 'package:learn/awesome/awesome.dart';

void main() {
  ErrorWidget.builder = (details) {
    bool isDebug = false;
    // assert(() {
    //   isDebug = true;
    //   return true;
    // }());
    // if (isDebug) {
    //   return ErrorWidget(details.exception);
    // }
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      child: Text(
        'Error: ${details.exception}',
        style: TextStyle(
          color: Colors.redAccent[800],
        ),
      ),
    );
  };
  runApp(App());
}

const Widgets = <String, Widget>{
  "FutureBuilder": Widget29(),
  "FractionallySizedBox": Widget28(),
  "FadeinImage": Widget27(),
  "ChipSelect": Widget26(),
  "AnimatedIcon": Widget25(),
  "ErrorWidget": Widget24(),
  "AutoComplete": Widget23(),
  "AspectRatio": Widget22(),
  "AnimatedDefaultTextStyle": Widget21(),
  "Popmenu Item": Widget20(),
  "Animated Crossfade": Widget19(),
  "Drop Target": Widget18(),
  "DraggbleScrllable": Widget17(),
  "Dismisseble": Widget16(),
  "Date Range Picker": Widget15(),
  "Time Picker": Widget14(),
  "Date Picker": Widget13(),
  "Card": Widget12(),
  "AnimatedContainer": Widget11(),
  "Alert Dialog": Widget10(),
  "Table": Widget9(),
  "CupertinoContextMenu": Widget8(),
  "Circle Avatar": Widget7(),
  "CheckboxListTile": Widget6(),
  "ReorderableListView": Widget5(),
  "LongPressDraggable": Widget4(),
  "Bottom Sheet": Widget3(),
  "Preferred Size": Widget2(),
  "Material Banner": Widget1(),
};

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget? item = Widgets.entries.first.value;

  void onClick(String link) {
    setState(() {
      item = Widgets[link];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text("Learn Flutter")),
        drawer: SideBar(
          onClick: onClick,
        ),
        body: item,
      ),
    );
    ;
  }
}

class SideBar extends StatelessWidget {
  Function(String) onClick;

  SideBar({
    super.key,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Nani Malasani"),
            accountEmail: Text("malasani.nani@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          ...Widgets.entries.map((e) => ListTile(
                key: UniqueKey(),
                title: Text(e.key),
                onTap: () {
                  Navigator.pop(context);
                  onClick(e.key);
                },
              ))
        ],
      ),
    );
  }
}
