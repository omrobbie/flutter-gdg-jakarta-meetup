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
          Image.network(
              "https://i1.wp.com/kabar.kibar.co.id/wp-content/uploads/2018/02/ae812da3f28ba5ad03c2da1a7fc7c724.jpg"),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Text("Flutter Study Jam - Session 1"),
          ),
        ],
      ),
    );
  }
}
