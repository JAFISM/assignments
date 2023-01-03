import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Navdrawer(),
    debugShowCheckedModeBanner: false,
  ));
}
class Navdrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight,
          end: Alignment.bottomCenter,colors: [
            Colors.deepOrangeAccent,Colors.deepOrange,Colors.orange
              ])
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/David bekham.jpg"),
                  radius: 20,
                ),
                title: Text("Terra Crowall",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.close),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios),
                // onTap:() {Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
                // },
              ),
              const ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("DashBord",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Clients",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              TextButton(onPressed: (){}, child: child)
            ],
          ),
        ),
      ),
    );
  }

}