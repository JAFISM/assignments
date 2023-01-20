import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Grid_cardss.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreeen_ui(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
  ));
}

class HomeScreeen_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.short_text_rounded,
                size: 50,
                color: Colors.grey.shade800,
              ),
            ),
            // bottom: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Go",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "Fast",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/DB.jpg",
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:  Center(
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                      hintText: "    Search for.....",
                      suffixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1,color: Colors.indigo,)
                     )
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Popular places",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          TextButton(onPressed: () {}, child: const Text("View all")),
                    )
                  ],
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Places(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const ListTile(
                      title: Center(
                        child: Text(
                          "Explore",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      backgroundColor: Colors.indigo.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
