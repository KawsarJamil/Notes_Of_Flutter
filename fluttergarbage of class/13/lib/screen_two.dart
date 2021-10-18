import 'package:flutter/material.dart';
import 'package:thirteenproject/screen_three.dart';

// ignore: camel_case_types
class Screen_two extends StatelessWidget {
  const Screen_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => Screen_three(),
                );
                Navigator.push(context, route);
              },
              child: Text("Screen_three"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}
