import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Anima_btn_sample(),
    debugShowCheckedModeBanner: false,
  ));
}
class Anima_btn_sample extends StatefulWidget{
  @override
  State<Anima_btn_sample> createState() => _Anima_btn_sampleState();
}

class _Anima_btn_sampleState extends State<Anima_btn_sample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIconButton(
          animationDirection: AnimationDirection.forward(),
          hoverColor: Colors.blueGrey.shade100,
            focusColor: Colors.green,
          size: 100,
          onPressed: () {},
          duration: const Duration(milliseconds: 500),
          //splashColor: Colors.yellowAccent,
          icons: const [
            AnimatedIconItem(
             icon: Icon(Icons.home,color: Colors.red,),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.settings, color: Colors.purple),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.notifications_active, color: Colors.purple),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.search, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}