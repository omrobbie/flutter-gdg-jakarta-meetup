import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LayoutApp(),
  ));
}

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32.0),
          ),
          Text("Hello World!"),
          Text("We study Flutter"),
        ],
      ),
    );
  }
}
