import 'package:flutter/material.dart';
import 'auth.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback callback;

  MyHome({
    this.auth,
    this.callback,
  });

  @override
  _MyHomeState createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lock_open),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
