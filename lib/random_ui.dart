import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Simple(),
    debugShowCheckedModeBanner: false,
  ));
}

class Simple extends StatelessWidget {
  const Simple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.amber),
              )),
          Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.indigoAccent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.separated(
                    itemBuilder: (BuildContext, context) => ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      tileColor: Colors.red,
                      leading: Icon(Icons.person),
                      trailing: Icon(CupertinoIcons.forward_fill),
                      title: Text("person"),
                    ),
                    separatorBuilder: (BuildContext, context) => SizedBox(
                      height: 10,
                    ),
                    itemCount: 20,
                  ),
                ),
              )),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.center,
                                colors: [
                                  Colors.pink.shade600,
                                  Colors.pinkAccent.shade100
                                ]
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(onPressed: (){}, child: Text("View"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 100,
                    ),
                  ],
                ),
              ))
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Expanded(
          //       child: Container(
          //         height: MediaQuery.of(context).size.height/8,
          //         decoration: BoxDecoration(
          //           //color: Colors.white
          //         ),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //         Container(
          //         decoration: BoxDecoration(
          //           color: Colors.red
          //         ),
          //           height: 50,
          //           width:200 ,
          //     ),
          //         Container(
          //           decoration: BoxDecoration(
          //             color: Colors.blueAccent
          //           ),
          //           height: 50,
          //           width:80 ,
          //         )
          //     ],
          //   ),
          //       )),
          // )
        ],
      ),
    );
  }
}
