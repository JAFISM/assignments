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
    Colors.greenAccent,
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
    Icons.home,
    Icons.phone,
    Icons.search,
    Icons.table_chart,
    Icons.account_box_sharp,
    Icons.access_alarm,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(12, (index){
              return Card(
                color: colors[index],
                child: Row
                  (
                  children: [
                    Icon(icons[index],size: 50,),
                    Text(("Heart Shaker")),
                  ],
                ),
              );
            }),
        ),
    );
  }
}
