import 'package:flutter/material.dart';

import 'Detalis.dart';
void main(){
  runApp(MaterialApp(home: Places(),
    debugShowCheckedModeBanner: false,));
}

class Places extends StatelessWidget {
  List<String> images = [
    'https://images.unsplash.com/photo-1485738422979-f5c462d49f74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1199&q=80',
    'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3631051/pexels-photo-3631051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1427579/pexels-photo-1427579.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  List<String> title = ['USA', 'Russia', 'France', 'England', 'Canada'];
  List<String> rate = ["\$250", "\$300", "\$440", "\$400"];

  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         // childAspectRatio: 1,
            crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Detailss()));
                    },
                    child: Center(
                      child: Container(
                        height: 180,
                        width: 150,
                        // height: MediaQuery.of(context).size.height / 4.5,
                        // width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                images[index],
                              )),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 18,
                      child: Container(
                          height: 15,
                          width: 40,
                          color:Colors.blue,
                          child: Center(
                            child: Text(
                              rate[index],
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ))),
                  Positioned(
                    top: 120,
                    left: 10,
                    child: TextButton(
                      child: Text(title[index],
                          style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold)),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}