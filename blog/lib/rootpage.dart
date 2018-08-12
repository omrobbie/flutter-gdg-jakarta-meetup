import 'package:flutter/material.dart';
import 'customView.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            EditText(
              sLabel: "Email Address",
              sError: "Please fill your email address",
              inputType: TextInputType.emailAddress,
              bSecure: true,
            ),
          ],
        ),
      ),
    );
  }
}
