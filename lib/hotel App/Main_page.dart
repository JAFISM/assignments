import 'package:assignments/hotel%20App/popular_hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Hotel_packages.dart';

void main() {
  runApp(MaterialApp(
    home: Home_page(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColorLight: Colors.white),
  ));
}

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: ListTile(
            title: const Text("Hello @ Jafis"),
            subtitle: const Text(
              "Find your Favourite Hotel",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            trailing: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=600")),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                        // BoxShadow(
                        //   color: Colors.grey.shade300,
                        //   offset: const Offset(0, 0),
                        // )
                      ],
                      border: Border.all(color: Colors.grey.shade300),
                      // boxShadow: [BoxShadow(blurRadius: 15, offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search for hotel",
                          border: InputBorder.none),
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Column(
            children: [
              Pop_hotel(),
              Hotel_packages(),
            ],
          )
        ]))
      ],
    ));
  }
}
