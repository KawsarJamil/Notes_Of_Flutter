import 'package:flutter/material.dart';

class animatedopacity extends StatefulWidget {
  const animatedopacity({Key? key}) : super(key: key);

  @override
  _animatedopacityState createState() => _animatedopacityState();
}

class _animatedopacityState extends State<animatedopacity> {
  var x = 1.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black12,
                child: AnimatedOpacity(
                  curve: Curves.bounceIn,
                  opacity: x,
                  duration: Duration(seconds: 2),
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 80,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x == 1 ? 0 : 1;
                    });
                  },
                  child: Text("Go"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
