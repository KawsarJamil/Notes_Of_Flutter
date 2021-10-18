//introduction of stateless & statefull widget

import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch : Colors.tealAccent,
        brightness: Brightness.light,
        accentColor: Colors.green,
      ),
      title: "My App",
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}



class _HomepageState extends State<Homepage> {

  String mytext= "My World";
 void _changeText()
 {
   
   setState(() {
     if(mytext.startsWith("M"))
     {
       mytext= "IF I WANT";
     }
     else
     {
       mytext= "My World";
     }
   });
 }

Widget _bodywidget()
{
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(mytext,
          style:TextStyle(fontSize: 50),),
        ),
      ],),
    ),

  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My app")
        ),
      body: _bodywidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeText,
        child: Icon(Icons.add),),

    );
  }
}