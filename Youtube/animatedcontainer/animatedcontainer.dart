import 'package:flutter/material.dart';

class animatedcontainer extends StatefulWidget {
  const animatedcontainer({Key? key}) : super(key: key);

  @override
  _animatedcontainerState createState() => _animatedcontainerState();
}

class _animatedcontainerState extends State<animatedcontainer> {
  var x = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              AnimatedContainer(
                curve: Curves.bounceIn,
                height: x ? 200 : 100,
                width: x ? 200 : 100,
                duration: Duration(seconds: 2),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black12,
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
                      x = !x;
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
