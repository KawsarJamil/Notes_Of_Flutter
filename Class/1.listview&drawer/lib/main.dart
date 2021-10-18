import 'package:demo_project/contect_list.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/mycontact.dart';
//import 'package:demo_project/profile.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MY CONTACT",
      debugShowCheckedModeBanner: false,
    //    home: ProfileScreen(),
      //home: Contectlist(),
      home: mycontact(),
    ),
  );
}
