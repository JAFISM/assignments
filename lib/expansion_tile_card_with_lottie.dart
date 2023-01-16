import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Expansion_tilee(),
    debugShowCheckedModeBanner: false,
  ));
}

class Expansion_tilee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
                  "EXPERIENCE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black, fontSize:45),
                )),
            Stack(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),),
                  child: Lottie.network(
                      "https://assets6.lottiefiles.com/private_files/lf30_72kogvb9.json",
                      fit: BoxFit.contain,
                      height: 200,
                      width: double.infinity),
                ),
                const Positioned(
                  left: 10,
                  top: 25,
                  bottom: 10,
                  right: 10,
                  child: ExpansionTile(
                    title: Text("Flutter Internship",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize:15)),
                    subtitle: Text("6 months+",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 10)),
                    children: [
                      ListTile(
                        title: Center(child: Text("Duration : 2 months",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black),)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Lottie.network(
                      "https://assets2.lottiefiles.com/packages/lf20_enkk4mul.json",
                      fit: BoxFit.contain,
                      height: 200,
                      width: double.infinity),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  bottom: 10,
                  right: 10,
                  child: ExpansionTile(
                    title: Text("Android Training",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 15)),
                    subtitle: Text("2 months",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize:10)),
                    children: [
                      Container(
                        child: ListTile(
                          title: Center(child: Text("Duration : 2 months",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Lottie.network(
                        "https://assets9.lottiefiles.com/packages/lf20_zh6xtlj9.json",
                        fit: BoxFit.contain,
                        height: 200,
                        width: double.infinity)),
                const Positioned(
                  left: 10,
                  top: 10,
                  bottom: 10,
                  right: 10,
                  child: ExpansionTile(
                    title: Text("Java Training",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize:15)),
                    subtitle: Text("2 months",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize:10)),
                    children: [
                      ListTile(
                        title: Center(child: Text("Duration : 2 months",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}