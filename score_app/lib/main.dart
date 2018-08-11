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
  int counterA = 0;
  int counterB = 0;

  void tambahA(int value) {
    setState(() {
      counterA += value;
    });
  }

  void tambahB(int value) {
    setState(() {
      counterB += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("$counterA"),
                RaisedButton(
                  onPressed: () {
                    tambahA(3);
                  },
                  child: Text("+3 POINTS"),
                ),
                RaisedButton(
                  onPressed: () {
                    tambahA(2);
                  },
                  child: Text("2+ POINTS"),
                ),
                RaisedButton(
                  onPressed: () {
                    tambahA(1);
                  },
                  child: Text("FREE THROW"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text("$counterB"),
                RaisedButton(
                  onPressed: () {
                    tambahB(3);
                  },
                  child: Text("+3 POINTS"),
                ),
                RaisedButton(
                  onPressed: () {
                    tambahB(2);
                  },
                  child: Text("2+ POINTS"),
                ),
                RaisedButton(
                  onPressed: () {
                    tambahB(1);
                  },
                  child: Text("FREE THROW"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
