import 'package:flutter/material.dart';

void main(){
   runApp(MaterialApp(
     home:Category_() ,
     debugShowCheckedModeBanner: false,
   ));
}
class Category_ extends StatelessWidget{
  var category=[
    "All",
    "Music",
    "News",
    "Comedy",
    "Mixes",
    "Gaming",
    "Film",
    "Fun"
  ];
  @override
  Widget build(BuildContext context) {
   return Container(
     height: MediaQuery.of(context).size.height / 20,
     width: double.infinity,
     child: ListView.builder(
       // physics: NeverScrollableScrollPhysics(),
       // shrinkWrap: true,
       scrollDirection: Axis.horizontal,
       itemCount: 8,
         itemBuilder: (BuildContext,int index){
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           height: 30,
           width: 80,
           child: Center(child: Text(category[index],style: TextStyle(color: Colors.white),)),
           decoration: BoxDecoration(
               color: Color.fromARGB(200, 10, 18, 10),
               boxShadow: const [
                 BoxShadow(
                   color: Colors.grey,
                   spreadRadius: 1,
                   blurRadius: 0,
                 ),
               ],
               borderRadius: BorderRadius.circular(20))
         ),
       );
     }
     ),
   );
  }

}