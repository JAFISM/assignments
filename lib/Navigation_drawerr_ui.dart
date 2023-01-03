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
        backgroundColor: Colors.deepOrangeAccent,
      ),
     drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.deepOrangeAccent,
                Colors.deepOrange,
                Colors.orange
              ])),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.1,right: 0.1,top: 50),
                child: SizedBox(
                  height: 70,
                  width: 90,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/DB.jpg"),
                      radius: 30,
                    ),
                    title: Text(
                      "David Bekham",
                      style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
                    ),
                    subtitle: Text(
                      "administrator",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    trailing: Icon(Icons.close),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                // onTap:() {Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
                // },
              ),
              const ListTile(
                leading: Icon(Icons.dashboard,color: Colors.white,),
                title: Text(
                  "DashBord",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.group,color: Colors.white,),
                title: Text(
                  "Clients",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.notification_important,color: Colors.white,),
                title: Text(
                  "Project",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.group_add_rounded,color: Colors.white,),
                title: Text(
                  "Partners",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.subtitles,color: Colors.white,),
                title: Text(
                  "Subbscriptions",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.payment,color: Colors.white,),
                title: Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.person,color: Colors.white,),
                title: Text(
                  "User",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              const ListTile(
                leading: Icon(Icons.library_books,color: Colors.white,),
                title: Text(
                  "Library",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
