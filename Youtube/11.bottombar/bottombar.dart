import 'package:demo_project/bottomnavigation.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  _bottomState createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int valueset = 2;
  void _ontapitem(int index) {
    setState(() {
      valueset = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("focus on bottombar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("index no -$valueset"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: "share"),
        ],
        currentIndex: valueset,
        onTap: _ontapitem,
        selectedItemColor: Colors.red,
      ),
    );
  }
}
