import 'package:flutter/material.dart';

class mycontact extends StatelessWidget {
  const mycontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY CONTACT"),
        centerTitle: true,
        elevation: 9,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/background.jpg"),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/pokemon.png"),
                      ),
                      Text(
                        "Pokemon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "ajaira app",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: () {
                print("Clicked in Drawer");
              },
              leading: Icon(
                Icons.music_note,
                color: Colors.blue,
              ),
              title: Text("MUSIC"),
              subtitle: Text("audio player"),
            ),
            ListTile(
              onTap: () {
                print("Clicked in Drawer");
              },
              leading: Icon(
                Icons.video_camera_back_outlined,
                color: Colors.blue,
              ),
              title: Text("VIDEO player"),
              subtitle: Text("lots of image"),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Gallery"),
              subtitle: Text("image"),
            ),
            Material(
              color: Colors.teal,
              child: InkWell(
                onTap: () {
                  print("Button tapped");
                },
                hoverColor: Colors.brown,
                highlightColor: Colors.black,
                child: Container(
                  child: Center(
                    child: Text("Log out"),
                  ),
                  width: double.infinity,
                  height: 48,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.teal,
            thickness: 1,
          );
        },
        itemCount: 40,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              print("clicked");
            },
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            minLeadingWidth: 50,
            title: Text("Jamil Vai"),
            subtitle: Text("+88021465465"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call_end),
                SizedBox(width: 10),
                Icon(Icons.delete),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          );
        },
      ),
    );
  }
}
