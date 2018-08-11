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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Email Address"),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Full Name"),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "Phone Number"),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            Padding(padding: EdgeInsets.all(10.0)),
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
