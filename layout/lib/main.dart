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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
                "https://i1.wp.com/kabar.kibar.co.id/wp-content/uploads/2018/02/ae812da3f28ba5ad03c2da1a7fc7c724.jpg"),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Flutter Study Jam - Session 1",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.android, size: 40.0),
                  Icon(Icons.home, size: 40.0),
                  Icon(Icons.settings, size: 40.0),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "img/rufi.png",
                    fit: BoxFit.cover,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "img/one-piece.jpg",
                    fit: BoxFit.cover,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "img/tony.jpg",
                    fit: BoxFit.cover,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
