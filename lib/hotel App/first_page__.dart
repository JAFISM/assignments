import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home_page(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColorLight: Colors.white),
  ));
}
class Home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
         SliverToBoxAdapter(
           child: ListTile(
             title: Text("Hello @ Jafis"),
             subtitle: Text("Find your Favourite Hotel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             trailing: Image.network("https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=600"),
           ),
         ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "search....",
                    prefixIcon: Icon(
                      Icons.search
                    ),
                    hintStyle: TextStyle(color: Colors.pink),
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          )
        ],
      )
    );
  }

}