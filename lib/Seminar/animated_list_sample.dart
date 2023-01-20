import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main(){
  runApp(MaterialApp(
    home:Animated_list_ex() ,
    debugShowCheckedModeBanner: false,
  ));
}
class Animated_list_ex extends StatefulWidget{
  @override
  State<Animated_list_ex> createState() => _Animated_list_exState();
}

class _Animated_list_exState extends State<Animated_list_ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(seconds: 5),
              child: SlideAnimation(
               // verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: MyList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyList  extends StatelessWidget{
  @override
  Widget build(BuildContext context) 
    =>const ListTile(
      title: Text("Mylist_tile"),
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/kitty-cat-kitten-pet-45201.jpeg"),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
    // => Card(
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20)
    //   ),
    //   child: Image.asset("assets/images/kitty-cat-kitten-pet-45201.jpeg",),
    // );
}