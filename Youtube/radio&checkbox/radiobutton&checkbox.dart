import 'package:flutter/material.dart';

class radiocheckbox extends StatefulWidget {
  radiocheckbox({Key? key}) : super(key: key);

  @override
  State<radiocheckbox> createState() => _radiocheckboxState();
}

class _radiocheckboxState extends State<radiocheckbox> {
  var groupval = 0;
  var checkval = false;
  Map<String, bool> item = {'one': false, 'two': false, 'three': false};
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "radio & checkbox",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio & Checkbox"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...item.keys.map((e) {
                return Row(
                  children: [
                    Checkbox(
                        value: item[e],
                        onChanged: (value) {
                          setState(() {
                            item[e] = value!;
                          });
                        }),
                    Text(e + "\n"),
                  ],
                );
              }),

              // Row(
              //   children: [
              //     Radio(
              //       value: 1,
              //       groupValue: groupval,
              //       onChanged: (int? val) {
              //         setState(() {
              //           groupval = val!;
              //         });
              //       },
              //     ),
              //     Text("One"),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Radio(
              //       value: 2,
              //       groupValue: groupval,
              //       onChanged: (int? val) {
              //         setState(() {
              //           groupval = val!;
              //         });
              //       },
              //     ),
              //     Text("Two"),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Radio(
              //       value: 3,
              //       groupValue: groupval,
              //       onChanged: (int? val) {
              //         setState(() {
              //           groupval = val!;
              //         });
              //       },
              //     ),
              //     Text("Three"),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
