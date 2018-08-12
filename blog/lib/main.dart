import 'package:flutter/material.dart';
import 'rootPage.dart';
import 'auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootPage(auth: Auth()),
    );
  }
}
