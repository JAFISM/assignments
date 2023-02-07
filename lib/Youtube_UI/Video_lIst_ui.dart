import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Video_list_ui(),
    debugShowCheckedModeBanner: false,
  ));
}
class Video_list_ui extends StatelessWidget{
  var imagess=[
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
    "assets/images/Man utd background.jpg",
  ];
  var titles=[
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
  ];
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
     physics: NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     scrollDirection: Axis.vertical,
     itemCount: 10,
       itemBuilder: (BuildContext,int index){
     return Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
           height: MediaQuery.of(context).size.height/4,
           width: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(imagess[index]),
               fit: BoxFit.cover
             )
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
              // Text("CC"),
               Padding(
                 padding: const EdgeInsets.only(left: 310,bottom: 25),
                 child: Container(
                   height: 20,
                     width: 35,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(3)
                     ),
                     child: const Center(child: Text("1:35",style: TextStyle(color: Colors.white),))),
               )
             ],
           ),
         ),
         const ListTile(
           tileColor: Color(0xFF1b1c1e),
           leading: CircleAvatar(
             backgroundImage: NetworkImage("https://1000logos.net/wp-content/uploads/2017/03/Color-of-the-Manchester-United-Logo.jpg"),
             radius: 15,
           ),
           title: Text("Man UTD | Old Trafford",style: TextStyle(color: Colors.white),),
           subtitle: Text("Manchester United  1.1 lakh views .1 day ago",style: TextStyle(color: Colors.grey),),
           trailing:Icon(
             Icons.more_vert_rounded,color: Colors.white,size: 15,
           )
         )
       ],
     );
   });
  }

}