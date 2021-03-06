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
        appBar: AppBar(
          title: Text("App Bar"),
          leading: Icon(Icons.group),
          actions: <Widget>[Icon(Icons.home)],
        ),
        body: Center(
          //     child: Text(
          //   "Hello Flutter",
          //   style: TextStyle(
          //       color: Colors.green[600],
          //       fontSize: 24.0,
          //       fontWeight: FontWeight.bold),

          // child: Icon(
          //   Icons.android,
          //   size: 70.0,
          //   color: Color.fromARGB(255, 66, 165, 245),
          // ),

          // child: Image.network(
          //     "http://teknoevent.com/wp-content/uploads/2018/05/Jetpack_logo.png"),

          child: Image.asset(
            "img/android-vs-ios.png",
            width: 300.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
