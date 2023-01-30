import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Pro_File(), debugShowCheckedModeBanner: false,));
}

class Pro_File extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.indigo.shade100,
              Colors.indigo.shade50,
              Colors.indigo.shade100,
              // Color(0xff4fc3f7),
              // Colors.white,
              // Color(0xfff48fb1),
            ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                // color: Colors.white,
                decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20))),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:20,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {}, icon: Icon(Icons.chevron_left),),
                          // SizedBox(width: 150,),
                          Padding(
                            padding: const EdgeInsets.only(left:115),
                            child: Text("Account"),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: Container(
                            height:100,width:100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage('assets/images/profile1.jpg',),fit: BoxFit.fill)),
                            // child: Image.asset('assets/images/profile1.jpg',height: 75,width: 100,),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text("Jafis M",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, ),)),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height:8,),
                          Center(child: Icon(Icons.mark_email_read_sharp)),
                          Text("jafism2000@gmail.com")
                        ],),
                      SizedBox(height: 5,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_android),Text("+91 8921253955")
                        ],
                      ),
                      SizedBox(height: 5,),
                      Center(
                          child: ElevatedButton(onPressed: (){}, child: Text("Edit Profile",)))
                    ]),),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top:12,left: 5,right: 5),
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius:BorderRadius.circular(10),
                              border: Border.all(width: 2,color: Colors.black12)),
                          child: ListTile(
                              title: Text("My Wallet"),
                              leading:Icon(Icons.wallet,color: Colors.indigo),
                              trailing:IconButton(onPressed: () {  }, icon: Icon(Icons.chevron_right,color: Colors.indigo,),)
                          ),
                        )),
                    Padding(padding: EdgeInsets.only(top:12,left: 5,right: 5),
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius:BorderRadius.circular(10),
                              border: Border.all(width: 2,color: Colors.black12)),
                          child: ListTile(
                              title: Text("Terms & Policies"),
                              leading:Icon(Icons.policy,color: Colors.indigo,),
                              trailing:IconButton(onPressed: () {  }, icon: Icon(Icons.chevron_right,color: Colors.indigo,),)
                          ),
                        )),
                    Padding(padding: EdgeInsets.only(top:12,left: 5,right: 5),
                        child:
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(width: 2,color: Colors.black12)),
                          child: ListTile(
                              title: Text("About"),
                              leading:Icon(Icons.info_outline,color: Colors.indigo),
                              trailing:IconButton(onPressed: () {  }, icon: Icon(Icons.chevron_right,color: Colors.indigo,),)
                          ),
                        )),
                    Padding(padding: EdgeInsets.only(top:12,left: 5,right: 5),
                        child:
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(width: 2,color: Colors.black12)),
                          child: ListTile(
                              title: Text("Logout"),
                              leading:Icon(Icons.logout,color: Colors.indigo),
                              trailing:IconButton(onPressed: () {  }, icon: Icon(Icons.chevron_right,color: Colors.indigo,),)
                          ),
                        ))
                  ],
                ),
              )
            ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.blue,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.app_registration,
      //           color: Colors.blue,
      //         ),
      //         label: 'Cart'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.card_giftcard,
      //           color: Colors.blue,
      //         ),
      //         label: 'Account'),
      //     BottomNavigationBarItem(
      //         icon: IconButton(
      //
      //           color: Colors.blue, onPressed: () {  }, icon:Icon(Icons.account_circle)
      //         ),
      //         label: 'Account')
      //   ],
      // ),
    );
  }

}