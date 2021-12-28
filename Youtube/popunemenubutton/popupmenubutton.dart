import 'package:flutter/material.dart';

class popupbtn extends StatelessWidget {
  const popupbtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            offset: Offset(-40, 50),
            itemBuilder: (BuildContext context) {
              final list = <PopupMenuEntry<int>>[];
              list.add(
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
              list.add(
                PopupMenuDivider(
                  height: 4,
                ),
              );
              list.add(
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
              list.add(
                PopupMenuDivider(
                  height: 40,
                ),
              );
              return list;
              // return [
              //   PopupMenuItem(
              //     child: Text("Page OONNEE"),
              //     value: "page one",
              //   ),
              //   PopupMenuItem(
              //     child: Text("Page Twwo"),
              //     value: "page two",
              //   ),
              //   PopupMenuItem(
              //     child: Text("Page Three"),
              //     // value: "page three",
              //   ),
              // ];
            },
          ),
        ],
      ),
    );
  }
}
