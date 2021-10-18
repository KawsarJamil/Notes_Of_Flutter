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
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1633198327994-9c00775f2664?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80"),
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1633198327994-9c00775f2664?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Image(
            image: AssetImage("background.jpg"),
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Image.asset(
            "pokemon.png",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child:
            //Icon(Icons.add),
            Text("Click"),
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
