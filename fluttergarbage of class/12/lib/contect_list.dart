import 'package:flutter/material.dart';

class Contectlist extends StatelessWidget {
  const Contectlist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Listview & ListTile"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("background.jpg"),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("pokemon.png"),
                      ),
                      Text(
                       "Pokemon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "pokemon12@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),


                // Positioned(
                //   top: 110,
                //   left: 20,
                //   child: Text(
                //     "Pokemon",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 25,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   top: 140,
                //   left: 20,
                //   child: Text(
                //     "pokemon12@gmail.com",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
              ],
            ),


            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.music_note,
                color: Colors.blue,
              ),
              title: Text("Music"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.video_call,
                color: Colors.blue,
              ),
              title: Text("Video"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              // minLeadingWidth: 20,
              title: Text("Setting"),
            ),
            
            Material(
              color: Colors.teal,
              child: InkWell(
                onTap: (){
                  print("Button Tapped");
                },
                hoverColor: Colors.brown,
                focusColor: Colors.blue,
                highlightColor: Colors.grey,
                child: Container(
                  child: Center(child: Text("Log out")),
                  width: double.infinity,
                  height: 48,
                  // color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            thickness: 2,
            color: Color(0xFF84FFFF),
          );
        },
        
        itemCount: 40,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            tileColor: Colors.white70,
            onTap: (){

            },
            leading: CircleAvatar(
              radius: 20,
              child: Icon(Icons.person),
            ), 
            minLeadingWidth: 50,
            title: Text("+880123456789"),
            subtitle: Text("flutter developer"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call_end_outlined),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.delete),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          );
        }
      ),
    );
  }
}