import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    title: "text.rich",
    home:Center(
      child: Text.rich(
        
        TextSpan(
          
          text: "Welcome to",
        children: <TextSpan>[
          TextSpan(
            text: "My ",
            style: TextStyle(fontStyle: FontStyle.italic,
            fontSize: 70.0)
          ),
          TextSpan(
            text: "World",style: TextStyle(fontSize: 20.0)
          )

        ]
        )

      ),
    ),

  )
  );
}