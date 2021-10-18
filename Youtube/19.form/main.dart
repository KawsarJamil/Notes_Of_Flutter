import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My practice",
      home: Myprac(),
    ),
  );
}

class Myprac extends StatefulWidget {
  const Myprac({Key? key}) : super(key: key);

  @override
  _MypracState createState() => _MypracState();
}

class _MypracState extends State<Myprac> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
      ),
      body: Form(
        key: keys,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                ),
                hintText: "name",
                labelText: "enter",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "fill the box";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "name",
                hintText: "father",
                icon: Icon(
                  Icons.person,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'fill the box';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
                labelText: "TEXT",
                icon: Icon(
                  Icons.person,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'fill the box';
                } else
                  null;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ElevatedButton(
                  child: Text("button"),
                  onPressed: () {
                    if (keys.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "validation complete",
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
