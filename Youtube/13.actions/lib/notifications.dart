import 'package:flutter/material.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Text(
          "Notification Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
