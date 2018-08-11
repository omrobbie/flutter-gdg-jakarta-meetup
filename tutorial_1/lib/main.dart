import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Widget",
      home: Scaffold(
          body: Center(
        //     child: Text(
        //   "Hello Flutter",
        //   style: TextStyle(
        //       color: Colors.green[600],
        //       fontSize: 24.0,
        //       fontWeight: FontWeight.bold),

        child: Icon(
          Icons.android,
          size: 70.0,
          color: Color.fromARGB(255, 66, 165, 245),
        ),
      )),
    );
  }
}
