import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Hero(
          tag: "flutter",
          child: Container(
            height: 200,
            width: 200,
            child: FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}
