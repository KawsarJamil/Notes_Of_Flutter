import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8),
        children: [
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.black,
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            height: 70,
            color: Colors.red[100],
            child: Text(
              "listview",
              style: TextStyle(fontSize: 23),
            ),
          ),
        ],
      ),
    );
  }
}
