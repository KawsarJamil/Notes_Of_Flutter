import 'package:flutter/material.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
