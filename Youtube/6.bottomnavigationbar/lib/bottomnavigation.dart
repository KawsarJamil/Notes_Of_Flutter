import 'package:flutter/material.dart';

class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({Key? key}) : super(key: key);

  @override
  _bottomnavigationbarState createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          //count.toString(),
          "$count",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          setState(() {});
        },
        tooltip: "Just click & see",
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Text(
            "bottom bar",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
