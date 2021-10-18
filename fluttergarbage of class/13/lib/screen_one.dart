import 'package:flutter/material.dart';
import 'package:thirteenproject/screen_two.dart';
// ignore: camel_case_types
class Screen_one extends StatelessWidget {
  const Screen_one({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen One"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_two()));

              },
              child: Text("next Page"),),
            ],
          ),),
    );
  }
}