import 'package:flutter/material.dart';

class expand extends StatelessWidget {
  const expand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expanded Widget"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.rtl,
        children: [
          Expanded(
            //flex: 2,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              //color: Colors.blue,
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
              // flex: 1,
              child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Text(
              "2",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 30,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
