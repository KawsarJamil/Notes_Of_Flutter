import 'package:flutter/material.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "All about tab",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.call_missed),
                text: "missed call",
              ),
              Tab(
                icon: Icon(Icons.call_received),
                text: "received call",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "all missed call",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "All received call here",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
