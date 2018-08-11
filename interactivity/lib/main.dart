import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ScoreApp(),
  ));
}

class ScoreApp extends StatefulWidget {
  @override
  _ScoreAppState createState() => new _ScoreAppState();
}

class _ScoreAppState extends State<ScoreApp> {
  int counter = 0;

  void tambah(int value) {
    setState(() {
      counter += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaksi Aplikasi"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("$counter"),
            RaisedButton(
              onPressed: () {
                tambah(1);
              },
              child: Text("Tambah 1"),
            ),
            RaisedButton(
              onPressed: () {
                tambah(2);
              },
              child: Text("Tambah 2"),
            ),
            RaisedButton(
              onPressed: () {
                tambah(3);
              },
              child: Text("Tambah 3"),
            ),
          ],
        ),
      ),
    );
  }
}
