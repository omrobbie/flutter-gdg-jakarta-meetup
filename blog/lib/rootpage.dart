import 'package:flutter/material.dart';
import 'customView.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage> {
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomEditText(
              sLabel: "Email Address",
              sError: "Please fill your email address",
              inputType: TextInputType.emailAddress,
              frmSaved: (value) => email = value,
            ),
            CustomEditText(
              sLabel: "Password",
              sError: "Please fill your email address",
              inputType: TextInputType.text,
              bSecure: true,
              frmSaved: (value) => password = value,
            ),
            CustomButton(
              sText: "Sign In",
            ),
          ],
        ),
      ),
    );
  }
}
