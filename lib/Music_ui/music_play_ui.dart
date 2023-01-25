import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlay_list(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.pink),
  ));
}

class MusicPlay_list extends StatelessWidget {
  var images = [
    "https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc",
    "https://i.scdn.co/image/ab67616d0000b2738651a2375e4a763fefd29b75",
    "https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/b9/de/d7/b9ded714-598a-4566-dfe8-2ecd1d8958f4/artwork.jpg/1200x1200bf-60.jpg",
    "https://images.genius.com/28417d8f2f4d5da33ae32dd2ec8f0d4c.1000x1000x1.jpg",
    "https://i1.sndcdn.com/artworks-000585893159-qra1pk-t500x500.jpg",
    "https://i.scdn.co/image/ab67616d0000b2735675e83f707f1d7271e5cf8a",
    "https://pbs.twimg.com/media/FVNZ7wXWYAAWjB9.jpg",
    "https://i.scdn.co/image/ab67616d0000b273d304ba2d71de306812eebaf4",
    "https://i.scdn.co/image/ab67616d0000b2732b8f214c8fa36e338b71ec41",
    "https://i.scdn.co/image/ab67616d0000b273d304ba2d71de306812eebaf4",
  ];

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.pinkAccent.withOpacity(.2),
            )
          ],
        ),
        // child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: GNav(
            style: GnavStyle.google,
            rippleColor: Colors.black,
            hoverColor: Colors.black26,
            gap: 5,
            activeColor: Colors.black,
            iconSize: 25,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.pink,
            color: Colors.pinkAccent.shade100,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.more_horiz_outlined,
                text: 'More',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverAppBar(
              backgroundColor: Colors.black,
              title: Center(
                  child: Text(
                "Playlists",
                style: TextStyle(
                    color: Colors.pink.shade200,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
              floating: false,
              pinned: true,
              bottom: AppBar(
                backgroundColor: Colors.black,
                elevation: 0,
                title: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(200, 10, 18, 10),
                        hintText: "search....",
                        suffixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.pink,
                        ),
                        hintStyle: TextStyle(color: Colors.pink),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 30),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Image.network(
                                images[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: images.length,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
