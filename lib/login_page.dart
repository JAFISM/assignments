import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Log_Inn(),debugShowCheckedModeBanner: false,));
}

class Log_Inn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Login",style: TextStyle(fontSize:45),),
              SizedBox(height: 25,),
              Text("Welcome back! Login with your credentials",style: TextStyle(fontSize:15),),

              Padding(
                padding: const EdgeInsets.only(right:300,bottom: 5,top: 25),
                child:   Text("Email",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      label: Text("Username"),

                      hintText: "Email / Phone Number",
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
                      label: Text("Enter your password"),


                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),

                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
              TextButton(onPressed: (){}, child: Text("Dont have an account? Sign Up")),
            ]
        ),
      ),
    );
  }

}