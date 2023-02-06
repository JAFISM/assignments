import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Category_.dart';
import 'Video_lIst_ui.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: Youtube_main(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: const Color(0xFF1b1c1e))),
  ));
}

class Youtube_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1c1e),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            title: const Text(
              "YouTube",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //spacing: 10,
                  children: const [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.cast),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.notifications_none_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.search)
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            "https://images.news18.com/ibnlive/uploads/2022/07/5b64ef07d608085cf4b239ddfeda4a8d.png"),
                      ),
                    )
                  ],
                ),
              ),
            ],
            leading: Image.asset("assets/images/YoutubeImage.png"),
          ),
         SliverList(delegate: SliverChildListDelegate([
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Category_(),
               ),
               Video_list_ui(),
             ],
           ),
         ]))
        ],
      ),
    );
  }
}
