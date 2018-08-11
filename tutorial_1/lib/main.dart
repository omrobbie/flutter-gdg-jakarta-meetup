import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Widget",
      home: Scaffold(
        body: Center(child: Text("Hello Flutter")),
      ),
    );
  }
}
