import "package:flutter/material.dart";

class FinishApp extends StatefulWidget {
  @override
  _FinishAppState createState() => new _FinishAppState();
}

class _FinishAppState extends State<FinishApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish!"),
      ),
      body: Center(
        child: Text("Thank you!"),
      ),
    );
  }
}
