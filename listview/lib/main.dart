import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(ListJSON());
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

class ListJSON extends StatefulWidget {
  @override
  _ListJSONState createState() => new _ListJSONState();
}

class _ListJSONState extends State<ListJSON> {
  List responseJSON;

  Future<String> ambilData() async {
    http.Response response = await http
        .get(Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"));

    setState(() {
      responseJSON = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView JSON"),
        ),
        body: ListView.builder(
          itemCount: responseJSON == null ? 0 : responseJSON.length,
          itemBuilder: (context, i) {
            return Container(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      responseJSON[i]["title"],
                      style: TextStyle(color: Colors.blue, fontSize: 24.0),
                    ),
                    Text(responseJSON[i]["body"]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
