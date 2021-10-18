import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.brightness_2),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 9,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 120,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Age (in Year)",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Material(
                                      color: Colors.grey.withOpacity(.5),
                                      child: InkWell(
                                        splashColor: Colors.red,
                                        onTap: () {},
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ClipOval(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Material(
                                      color: Colors.grey.withOpacity(.5),
                                      child: InkWell(
                                        splashColor: Colors.red,
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 9,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 120,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Weight(Kg)",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Material(
                                      color: Colors.grey.withOpacity(.5),
                                      child: InkWell(
                                        splashColor: Colors.red,
                                        onTap: () {},
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ClipOval(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Material(
                                      color: Colors.grey.withOpacity(.5),
                                      child: InkWell(
                                        splashColor: Colors.red,
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 9,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "cm",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Switch(value: true, onChanged: (bool x) {}),
                                Text(
                                  "ft",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
