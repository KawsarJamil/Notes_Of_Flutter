import 'package:flutter/material.dart';

class animatedalign extends StatefulWidget {
  const animatedalign({Key? key}) : super(key: key);

  @override
  _animatedalignState createState() => _animatedalignState();
}

class _animatedalignState extends State<animatedalign> {
  var x = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: AnimatedAlign(
                  alignment: x ? Alignment.bottomCenter : Alignment.topRight,
                  duration: Duration(seconds: 4),
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 80,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    x = !x;
                  });
                },
                child: Text("Go"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
