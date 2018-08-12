import 'package:flutter/material.dart';
import 'auth.dart';
import 'rootPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback callback;

  MyHome({
    this.auth,
    this.callback,
  });

  @override
  _MyHomeState createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  void signOut() async {
    try {
      await widget.auth.signOut();
      Navigator.of(context).pushReplacement(new MaterialPageRoute(
          builder: (BuildContext context) => new RootPage(auth: Auth())));

      print("signout success!");
    } catch (e) {
      print("error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lock_open),
            onPressed: signOut,
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
