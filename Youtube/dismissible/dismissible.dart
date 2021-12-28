import 'package:flutter/material.dart';

class dismsble extends StatelessWidget {
  const dismsble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PopUpmenuButton",
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          color: Colors.red,
          thickness: 5,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: dismsble2(),
    );
  }
}

class dismsble2 extends StatefulWidget {
  const dismsble2({Key? key}) : super(key: key);

  @override
  State<dismsble2> createState() => _dismsble2State();
}

class _dismsble2State extends State<dismsble2> {
  final items = List.generate(20, (index) => "Item${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.all(20),
        itemBuilder: (BuildContext, index) {
          var item = items[index];
          return Dismissible(
            direction: DismissDirection.horizontal,
            background: Material(
              color: Colors.green,
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            secondaryBackground: Material(
              color: Colors.red,
            ),
            key: Key(item),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(item),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.blue, width: 2)),
              ),
            ),
          );
        },
      ),
    );
  }
}
