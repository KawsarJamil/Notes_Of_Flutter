import 'dart:js';

import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  //const homescreen({Key? key}) : super(key: key);
  List notific = List<String>.generate(100, (index) => "notification $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notific.length,
        itemBuilder: (context, index) {
          return Card(
            // child: ListTile(
            //   leading: FlutterLogo(),
            //   title: Text(
            //     notific[index],
            //     style: TextStyle(fontSize: 25),
            //   ),
            // ),
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 40,
                child: Icon(Icons.person),
              ),
              title: Text(
                notific[index],
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text("subtitle"),
              trailing: Icon(Icons.person),
            ),
          );
        },
      ),
    );
  }
}
