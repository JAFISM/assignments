import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_with_Cards(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_with_Cards extends StatelessWidget {
  var colors=[
    Colors.tealAccent.shade400,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.blueGrey,
    Colors.yellowAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.blueGrey,
    Colors.yellowAccent,
    Colors.yellowAccent,
  ];
  var icons=[
    Icons.home,
    Icons.notification_important_outlined,
    Icons.camera,
    Icons.table_chart,
    Icons.message_outlined,
    Icons.access_alarm,
    Icons.video_library_sharp,
    Icons.phone,
    Icons.search,
    Icons.table_chart,
    Icons.account_box_sharp,
    Icons.access_alarm,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
        body: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            children: List.generate(12, (index){
              return SizedBox(
                height: 200,
                width: 300,
                child: Card(
                  color: colors[index],
                  semanticContainer: true,
                  child: Row
                    (
                    children: [
                      Icon(icons[index],size: 50,color: Colors.grey.shade900,),
                      Text(("Heart Shaker"),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 12,
                  margin: EdgeInsets.all(10),
                  shadowColor: Colors.lightBlueAccent,
                ),
              );
            }),
        ),
    );
  }
}
