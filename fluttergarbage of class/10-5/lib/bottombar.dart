import 'package:flutter/material.dart';
import 'package:demo/tempo.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int selecetindx = 0;
  List<Widget> scrn = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),
    // Container(
    //   height: double.infinity,
    //   width: double.infinity,
    //   color: Colors.amber,
    // )
    tempo(),
  ];
  void myfunc(int index) {
    setState(() {
      selecetindx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation"),
        centerTitle: true,
      ),
      body: scrn.elementAt(selecetindx),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 18,
        elevation: 9,
        fixedColor: Colors.teal,
        // type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple[200],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: "Share",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: selecetindx,
        onTap: myfunc,
      ),
    );
  }
}
