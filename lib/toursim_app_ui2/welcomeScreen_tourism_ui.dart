import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'HomeScreen_ui.dart';

void main(){
  runApp(MaterialApp(
    home:WelcomeScreen(),
    debugShowCheckedModeBanner: false,
    routes: {
       "secondpage":(context)=>HomeScreeen_ui(),
    },
  ));
}
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              heightFactor: 4,
              child: CircleAvatar(
                radius: 50,
                  backgroundColor: Colors.blue.shade900,
                  child: Icon(Icons.flight,color: Colors.white,size: 70,)
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreeen_ui()));
                Navigator.pushNamed(context, "secondpage");
              },
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: Colors.blue.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Text("-or-",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: ListTile(
                  title: Text("Login with facebook",style: TextStyle(color: Colors.white),),
                  trailing: SvgPicture.asset("assets/icons/icons8-facebook (1).svg"),

                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: ListTile(
                  title: Text("Login with twitter",style: TextStyle(color: Colors.white),),
                  trailing: SvgPicture.asset("assets/icons/icons8-twitter-circled.svg"),

                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: ListTile(
                  title: Text("Login with Google",style: TextStyle(color: Colors.white),),
                  trailing: SvgPicture.asset("assets/icons/icons8-google-plus.svg"),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.red.shade500,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
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