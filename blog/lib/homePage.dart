import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
