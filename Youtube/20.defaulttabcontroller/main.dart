import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My practice",
      home: Myprac(),
    ),
  );
}

class Myprac extends StatefulWidget {
  const Myprac({Key? key}) : super(key: key);

  @override
  _MypracState createState() => _MypracState();
}

class _MypracState extends State<Myprac> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Practice"),
          backgroundColor: Colors.black,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: ('Home'),
              ),
              Tab(
                icon: Icon(Icons.home),
                text: ('Home'),
              ),
              Tab(
                icon: Icon(Icons.home),
                text: ('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
