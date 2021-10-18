import 'dart:html';

import 'package:flutter/material.dart';

class myRoute extends StatefulWidget {
  const myRoute({Key? key}) : super(key: key);

  @override
  _myRouteState createState() => _myRouteState();
}

class _myRouteState extends State<myRoute> {
  var myindx = 0;
  List<Widget> mywid = [
    Container(
      child: Text(
        "first container",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      color: Colors.amber,
    ),
    Container(
      child: Text(
        "second container",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      color: Colors.red,
    ),
    Container(
      child: Text(
        "third container",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      color: Colors.green,
    ),
    Container(
      child: Text(
        "fourth container",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      color: Colors.teal,
    ),
    Container(
      child: Text(
        "fifth container",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      color: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps & routing"),
        centerTitle: true,
      ),
      body: Center(
        child: mywid.elementAt(myindx),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(
            () {
              myindx = index;
              if (myindx == 2) {
                Navigator.pushNamed(context, '/profile');
              }
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "import"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: "share"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "call"),
        ],
        currentIndex: myindx,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
