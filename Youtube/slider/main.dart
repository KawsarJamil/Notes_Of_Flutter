import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double _value = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.volume_up,
              size: 50,
            ),
            Expanded(
              child: Slider(
                value: _value,
                min: 1,
                max: 20,
                activeColor: Colors.red,
                inactiveColor: Colors.green,
                onChanged: (double val) {
                  setState(() {
                    _value = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
