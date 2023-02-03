import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bank_main(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.indigo),
  ));
}

class Bank_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Welcome Jafis M")),
        leading: const Icon(Icons.list),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_rounded),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.indigoAccent.shade100),
              ),
              Center(
                heightFactor: 0.01,
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.shade200,
                        spreadRadius: 1,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage:AssetImage("assets/images/DB.jpg"),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("State Bank Of India",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                        Text("NPR.132664997979945",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                        Text("3261644444888448845",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.remove_red_eye_outlined,color: Colors.indigo.shade100,size: 20,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}