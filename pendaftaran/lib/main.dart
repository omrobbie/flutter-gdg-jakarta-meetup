import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registration"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              keyboardType: TextInputType.text,
            ),
            TextField(
              keyboardType: TextInputType.phone,
            ),
            TextField(
              keyboardType: TextInputType.text,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
