import 'dart:js';

import 'package:flutter/material.dart';
import 'package:learn_flutter/newsapp/all.dart';
import 'newsapp/home_screen.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      debugShowCheckedModeBanner: false,
      home: scaff(),
    );
  }
}

class scaff extends StatelessWidget {
  // const scaff({Key? key}) : super(key: key);
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogue Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Alert"),
            onPressed: () async {
              //textfieldalert(context,_textEditingController);
              final selectopt option =
                  await selectionalalertdialogwidget(context);
              print(option);
            },
          ),
        ),
      ),
    );
  }
}

enum selectopt { c, java, python, php }
Future selectionalalertdialogwidget(BuildContext context) async {
  return showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text("choose any one"),
        children: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, selectopt.c);
            },
            child: Text("C"),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, selectopt.java);
            },
            child: Text("java"),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, selectopt.python);
            },
            child: Text("python"),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, selectopt.php);
            },
            child: Text("php"),
          )
        ],
      );
    },
  );
}

// textfieldalert(BuildContext context,TextEditingController textEditingController) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
        
//         title: Text("Alert!"),
//         content: TextField(
//           decoration: InputDecoration(hintText: "Enter Your name"),
//           controller: textEditingController,
//         ),
        
//         actions: [
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text("Ok"),
//           ),
//         ],
//       );
//     },
//   );
// }
// alert(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text("Alert!"),
//         content: Text("This is alert box!!"),
//         actions: [
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text("Ok"),
//           ),
//         ],
//       );
//     },
//   );
// }
