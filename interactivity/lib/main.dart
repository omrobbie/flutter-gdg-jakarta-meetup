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
                setState(() {
                  counter++;
                });
              },
              child: Text("Tambah 1"),
            ),
          ],
        ),
      ),
    );
  }
}
