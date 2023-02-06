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
         ),
         const ListTile(
           tileColor: Color(0xFF1b1c1e),
           leading: CircleAvatar(
             backgroundImage: AssetImage("assets/images/DB.jpg"),
             radius: 15,
           ),
           title: Text("blahhhh blahh",style: TextStyle(color: Colors.white),),
           subtitle: Text("cysgfycguch",style: TextStyle(color: Colors.white),),
           trailing:Icon(
             Icons.more_vert_rounded,color: Colors.white,size: 15,
           )
         )
       ],
     );
   });
  }

}