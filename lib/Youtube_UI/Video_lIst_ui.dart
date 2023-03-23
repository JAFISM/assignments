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
    "Man Utd | HighLights",
    "Man Utd vs Man city",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
    "Man Utd | Old Trafford",
  ];
  var time=[
    "2:30",
    "20:30",
    "1:45",
    "5:45",
    "6:30",
    "2:30",
    "20:30",
    "1:45",
    "5:45",
    "6:30",
  ];
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
     physics: const NeverScrollableScrollPhysics(),
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
                     child:  Center(child: Text(time[index],style: const TextStyle(color: Colors.white),))),
               )
             ],
           ),
         ),
          ListTile(
           tileColor: const Color(0xFF1b1c1e),
           leading: const CircleAvatar(
             backgroundImage: NetworkImage("https://1000logos.net/wp-content/uploads/2017/03/Color-of-the-Manchester-United-Logo.jpg"),
             radius: 15,
           ),
           title: Text(titles[index],
             style: const TextStyle(color: Colors.white),),
           subtitle: const Text("Manchester United  1.1 lakh views .1 day ago",style: TextStyle(color: Colors.grey),),
           trailing:const Icon(
             Icons.more_vert_rounded,color: Colors.white,size: 15,
           )
         )
       ],
     );
   });
  }

}