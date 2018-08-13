import 'package:flutter/material.dart';
import 'customView.dart';
import 'auth.dart';
import 'homePage.dart';

class RootPage extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback callback;

  RootPage({
    this.auth,
    this.callback,
  });

  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  bool validateSave() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateSave()) {
      try {
        // FirebaseUser user = await FirebaseAuth.instance
        //     .signInWithEmailAndPassword(email: email, password: password);

        String userId =
            await widget.auth.signInWithEmailAndPassword(email, password);

        print("Respon user: $userId");
        Navigator.of(context).pushReplacement(new MaterialPageRoute(
            builder: (BuildContext context) => new MyHome(auth: Auth())));
      } catch (e) {
        print("error: $e");
      }
    }
  }

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
                callback: validateAndSubmit,
                // callback: validateSave,
              ),
              FlatButton(
                child: Text("Don't have account? Register here.."),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Registrasi(auth: Auth())));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Registrasi extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback callback;

  Registrasi({
    this.auth,
    this.callback,
  });

  @override
  _RegistrasiState createState() => new _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  bool validateSave() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateSave()) {
      try {
        // FirebaseUser user = await FirebaseAuth.instance
        //     .createUserWithEmailAndPassword(email: email, password: password);

        String userId =
            await widget.auth.createWithEmailAndPassword(email, password);

        print("Respon user: $userId");
        Navigator.of(context).pushReplacement(new MaterialPageRoute(
            builder: (BuildContext context) => new MyHome(auth: Auth())));
      } catch (e) {
        print("error: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registration"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
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
                sText: "Submit",
                callback: validateAndSubmit,
                // callback: validateSave,
              ),
              FlatButton(
                child: Text("Already have account, click here.."),
                onPressed: () {
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new RootPage(auth: Auth())));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
