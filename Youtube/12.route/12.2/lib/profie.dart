import 'package:flutter/material.dart';
import 'dart:core';

class profilescreen extends StatelessWidget {
  //const profilescreen({Key? key}) : super(key: key);
  //Map userdata = {};
  @override
  Widget build(BuildContext context) {
    //userdata = ModalRoute.of(context)!.settings.arguments;
    //print(userdata);
    return Scaffold(
      appBar: AppBar(
        title: Text("route"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
