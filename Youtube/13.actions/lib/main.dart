import 'dart:js';
import 'package:demo_project/notifications.dart';
import 'package:demo_project/profie.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/route.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "bottomnavigationbar",
      initialRoute: '/',
      routes: {
        '/': (context) => myRoute(),
        '/profile': (context) => profilescreen(),
        '/notification':(context)=>notifications(),
      },
    ),
  );
}
