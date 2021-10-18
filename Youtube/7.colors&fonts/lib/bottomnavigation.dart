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
        backgroundColor: Colors.teal[600],
        title: Text(
          "bottom navigation bar",
          style: TextStyle(fontFamily: "GreyQo", fontSize: 40),
        ),
        centerTitle: true,
        elevation: 9,
      ),
      body: Center(
        child: Text(
          count.toString(),
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
        backgroundColor: Colors.cyan[200],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        color: Colors.deepPurple[100],
        child: Container(
          height: 50,
          child: Center(
            child: Text(
              "bottom bar",
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: "GreyQo"),
            ),
          ),
        ),
      ),
    );
  }
}
