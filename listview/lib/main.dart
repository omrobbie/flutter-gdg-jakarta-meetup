import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            // ListTile(
            //   leading: Icon(Icons.home),
            //   title: Text("Home"),
            // ),
            // ListTile(
            //   leading: Icon(Icons.android),
            //   title: Text("Android"),
            // ),
            // ListTile(
            //   leading: Icon(Icons.access_alarm),
            //   title: Text("Alarm"),
            // ),
            // ListTile(
            //   leading: Icon(Icons.settings),
            //   title: Text("Settings"),
            // ),

            Card(
              child: Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.android),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Android",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text("Keterangan tentang Android"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
