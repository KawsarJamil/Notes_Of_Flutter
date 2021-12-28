import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  void toast() {
    Fluttertoast.showToast(
      msg: "this is a toast",
      backgroundColor: Colors.yellow,
      fontSize: 20,
      gravity: ToastGravity.SNACKBAR,
      textColor: Colors.white,
      timeInSecForIosWeb: 2,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Toast"),
            onPressed: () {
              toast();
            },
          ),
        ),
      ),
    );
  }
}
