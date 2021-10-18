import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("all types button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  print("clicked textbutton");
                },
                child: Text(
                  "textbutton",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                elevation: 20,
                shadowColor: Colors.red[500],
                //padding: EdgeInsets.all(10),
                side: BorderSide(
                  color: Colors.green,
                  width: 3,
                ),
                //shape: CircleBorder(),
                textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 5,
                ),
              ),
              onPressed: () {
                print("clicked outlinedbutton");
              },
              child: Text("outlined"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  print("pressed");
                },
                child: Text(
                  "elevated",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.pink,
                  backgroundColor: Colors.yellow,
                  elevation: 20,
                  shadowColor: Colors.green,
                  //padding: EdgeInsets.all(10),
                  side: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ),
                  //shape: CircleBorder(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 48,
              child: ElevatedButton(
                // onPressed: null,
                onPressed: () {},
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 24),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 20,
                  shadowColor: Colors.green,
                  // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)
                  // shape: CircleBorder()
                  shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.green,
                      width: 3,
                      // style: BorderStyle.none
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
