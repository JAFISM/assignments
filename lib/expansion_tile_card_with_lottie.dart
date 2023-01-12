import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ex_tile_lottie(),
  ));
}
class Ex_tile_lottie extends StatefulWidget{
  @override
  State<Ex_tile_lottie> createState() => _Ex_tile_lottieState();
}

class _Ex_tile_lottieState extends State<Ex_tile_lottie> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.cyan,
     body:ListView(
       children: [
         Center(child: Text("Experience",style: TextStyle(color: Colors.black,fontSize: 50,),)),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Stack(
             children: [Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: MediaQuery.of(context).size.height/6,
                 width: MediaQuery.of(context).size.width*6,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                   border: Border.all(width: 5,color: Colors.black)

                 ),
                 child: Lottie.network(
                   'https://assets5.lottiefiles.com/packages/lf20_uhnbbycj.json',
                   width: double.infinity,
                   height: double.infinity,
                   fit: BoxFit.cover,
                 )
               ),
             ),
             ]
           ),
         )
       ],
     ) ,
   );
  }
}