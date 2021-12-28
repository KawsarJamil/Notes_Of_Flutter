import 'package:flutter/material.dart';
import 'temp.dart';

class hero extends StatelessWidget {
  const hero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                tag: "flutter",
                child: Container(
                  height: 100,
                  child: FlutterLogo(),
                ),
              ),
              SizedBox(
                height: 30,
                width: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page2(),
                      ),
                    );
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
