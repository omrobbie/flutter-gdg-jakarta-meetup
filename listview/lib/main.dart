import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> data = new List<String>.generate(100, (i) => "Data ke $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        // body: ListView(
        //   children: <Widget>[
        //     // ListTile(
        //     //   leading: Icon(Icons.home),
        //     //   title: Text("Home"),
        //     // ),
        //     // ListTile(
        //     //   leading: Icon(Icons.android),
        //     //   title: Text("Android"),
        //     // ),
        //     // ListTile(
        //     //   leading: Icon(Icons.access_alarm),
        //     //   title: Text("Alarm"),
        //     // ),
        //     // ListTile(
        //     //   leading: Icon(Icons.settings),
        //     //   title: Text("Settings"),
        //     // ),

        //     // Card(
        //     //   child: Row(
        //     //     children: <Widget>[
        //     //       Icon(FontAwesomeIcons.android),
        //     //       Padding(
        //     //         padding: EdgeInsets.only(left: 10.0),
        //     //         child: Column(
        //     //           crossAxisAlignment: CrossAxisAlignment.start,
        //     //           children: <Widget>[
        //     //             Text(
        //     //               "Android",
        //     //               style: TextStyle(fontSize: 16.0),
        //     //             ),
        //     //             Text("Keterangan tentang Android"),
        //     //           ],
        //     //         ),
        //     //       ),
        //     //     ],
        //     //   ),
        //     // ),
        //   ],
        // ),

        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) {
            return new ListTile(
              leading: Icon(Icons.apps),
              title: Text("${data[i]}"),
            );
          },
        ),
      ),
    );
  }
}
