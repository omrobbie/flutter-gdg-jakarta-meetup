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
          Text("Hello World!"),
          Text("We study Flutter"),
        ],
      ),
    );
  }
}
