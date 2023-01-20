import 'package:assignments/Tourism_App%20_ui/toursim%20ui2.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "second":(context)=> Travpage(),
    },
    home: FirstScreen(),));
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(

            children:[
              Text("Places"),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8),
                child: Text("Popular",style:TextStyle(fontSize: 25),),
              ),
              Column(
                  children: traveldatas.map((travdata) => GestureDetector(onTap: ()=>gotonext(context,travdata["id"]),
                    child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.blue.shade200, BlendMode.modulate),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            '${travdata["images"]}',
                          ),
                        ),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Text(
                            '${travdata["place"]}',
                            style: TextStyle(color: Colors.white,fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),)).toList()
              ),
            ],),
        )
    );

  }

}

void gotonext(BuildContext context, travdata) {
  Navigator.of(context).pushNamed("second",arguments: travdata);
}