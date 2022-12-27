
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Sign_Upp(),debugShowCheckedModeBanner: false,));
}

class Sign_Upp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Sign Up",style: TextStyle(fontSize:45),),
              SizedBox(height: 25,),
              Text("Create an Account,its free",style: TextStyle(fontSize:15),),

              Padding(
                padding: const EdgeInsets.only(right:300,bottom: 5,top: 25),
                child:   Text("Email",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:300,bottom: 5,top:10),
                child:   Text("Password",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:250,bottom: 5,top:10),
                child:Text("Confirm Password",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),

                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Sign Up"),),
              TextButton(onPressed: (){}, child: Text("Already have an account? Login")),
            ]
        ),
      ),
    );
  }

}