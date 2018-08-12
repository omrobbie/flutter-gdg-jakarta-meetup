import 'package:flutter/material.dart';
import 'customView.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 32.0)),
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
                callback: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
