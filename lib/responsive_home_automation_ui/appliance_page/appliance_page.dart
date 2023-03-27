import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: AppliancePage(),));
}
class AppliancePage extends StatelessWidget {
  const AppliancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            colors: [
                Color(0xffB721FF),
                Color(0xff21D4FD),
            ]
          )
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)
            ),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Icon(
                CupertinoIcons.brightness,
                color: Colors.white,
                size: 50,
              ),
              Text("Light",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.white),),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
