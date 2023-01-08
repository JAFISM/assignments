import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_ui extends StatelessWidget {
  var name=[
    "Privacy",
    'Purchase History',
    'Help & Support',
    'Settings',
    'Invite a friend',
    'Logout'
  ];
  var icons=[
    Icons.privacy_tip,
    Icons.history,
    Icons.help_outline,
    Icons.settings,
    Icons.person_add_alt_outlined,
    Icons.logout
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.grey.shade900,
          size: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.short_text_rounded,
                color: Colors.grey.shade900,
                size: 35,
              ))
        ],
        elevation: 0,
      ),
      body: Container(
            child: Column(
          children: [
            Center(
              heightFactor: 1,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/prof_pic.jpeg"),
                radius: 80,
              ),
            ),
            Center(
              heightFactor: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        SvgPicture.asset("assets/icons/icons8-facebook (1).svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        SvgPicture.asset("assets/icons/icons8-twitter-circled.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        SvgPicture.asset("assets/icons/icons8-linkedin-circled (1).svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        SvgPicture.asset("assets/icons/icons8-github.svg"),
                  ),
                ],
              ),
            ),
            Center(
              heightFactor: .8,
              child: Column(
                children: [
                  Text(
                    "Jafis",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                        fontSize: 40),
                  ),
                  Text(
                    "@webrror",
                    style: TextStyle(
                        color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Mobile App Developer",
                      style: TextStyle(fontSize: 25, color: Colors.grey.shade800),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.40,
              child: ListView.builder(itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                  child: Container(
                    child: ListTile(
                        title: Text(name[index],style: TextStyle(fontSize: 20,color: Colors.grey.shade900),),
                        leading: Icon(icons[index],color: Colors.grey.shade900),
                      trailing: Icon(Icons.arrow_forward_ios,color:Colors.grey.shade900),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.all(Radius.circular(100),),
                      border: Border.all(color: Colors.white),
                      color: Colors.grey.shade200,
                    ),
                  ),
                );
              },
                itemCount: icons.length,),
            ),
          ],
        )),
    );
  }
}

