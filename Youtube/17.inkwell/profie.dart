import 'package:flutter/material.dart';
import 'dart:core';

class profilescreen extends StatelessWidget {
  //const profilescreen({Key? key}) : super(key: key);
  //Map userdata = {};
  @override
  Widget build(BuildContext context) {
    //userdata = ModalRoute.of(context)!.settings.arguments;
    //print(userdata);
    return Scaffold(
      appBar: AppBar(
        title: Text("route"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notification');
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.red.withAlpha(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.label),
                title: Text("Title"),
                subtitle: Text("Sub title"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ),
              Image.asset(
                "assets/pokemon.png",
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
