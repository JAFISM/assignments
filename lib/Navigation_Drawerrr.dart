import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Navdrawer(),
    debugShowCheckedModeBanner: false,
  ));
}

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.orangeAccent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Jafis M"),
                accountEmail:const Text("jafis2999@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap:() {
                    print("Current Profile ");
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dafault avatar.jpg"),
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pexels-photo-1108099.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pexels-photo-235805.jpeg"),
                  )
                ],
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage("assets/images/4k-wallpaper.jpg"),
                  ),
                ),
              ),
              const ListTile(

                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
                // onTap:() {Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
                // },
              ),
              const ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("DashBord"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Clients"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Clients"),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
