import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_UI_Stack(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_UI_Stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.list),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Stack(children: [
        Container(
          child: Image(
            image: AssetImage("assets/images/Man utd background.jpg"),
          ),
        ),
        Positioned(
          child: Center(
            heightFactor: 2,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 105,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/David bekham.jpg"),
                radius: 100,
              ),
            ),
          ),
        ),
        Positioned(
            left: 20,
            top: 200,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              radius: 20,
            )),
        Positioned(
            right: 20,
            top: 200,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
              radius: 20,
            )),
        Positioned(
          left: 90,
          top: 340,
          child: Center(
            child: Text(
              "David Beckham",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.grey.shade700),
            ),
          ),
        ),
        Positioned(
            left: 120,
            top: 380,
            child: Text(
              "model / superstar",
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
            ))
      ]),
    );
  }
}
