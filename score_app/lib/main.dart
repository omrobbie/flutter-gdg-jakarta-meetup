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

  void resetCounter() {
    setState(() {
      counterA = 0;
      counterB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "$counterA",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahA(3);
                        },
                        child: Text(
                          "+3 POINTS",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahA(2);
                        },
                        child: Text(
                          "+2 POINTS",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahA(1);
                        },
                        child: Text(
                          "FREE THROW",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "$counterB",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahB(3);
                        },
                        child: Text(
                          "+3 POINTS",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahB(2);
                        },
                        child: Text(
                          "+2 POINTS",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                      RaisedButton(
                        onPressed: () {
                          tambahB(1);
                        },
                        child: Text(
                          "FREE THROW",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  resetCounter();
                },
                child: Text(
                  "RESET",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
