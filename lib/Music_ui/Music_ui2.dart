import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: PlayList(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColorDark: Colors.black),
  ));
}

class PlayList extends StatelessWidget {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.black,
            hoverColor: Colors.black26,
            gap: 3,
            activeColor: Colors.black,
            iconSize: 25,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.pink,
            color: Colors.pinkAccent,
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
                icon: Icons.favorite_border,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Musify.",
          style: TextStyle(
              color: Colors.pink.shade200,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Suggested playlists",
              style: TextStyle(
                  color: Colors.pink.shade200,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://i.scdn.co/image/ab67616d0000b2738651a2375e4a763fefd29b75"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/b9/de/d7/b9ded714-598a-4566-dfe8-2ecd1d8958f4/artwork.jpg/1200x1200bf-60.jpg"),
                        fit: BoxFit.fill),
                  ),
                )
              ],
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: .56,
                //enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                //  autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(
                  milliseconds: 800,
                ),
                enableInfiniteScroll: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Recommended for you",
              style: TextStyle(
                  color: Colors.pink.shade200,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://images.genius.com/28417d8f2f4d5da33ae32dd2ec8f0d4c.1000x1000x1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Hero",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'Taylor Swift',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://i1.sndcdn.com/artworks-000585893159-qra1pk-t500x500.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Bad Guy",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'Billie Eilish',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://i.scdn.co/image/ab67616d0000b2735675e83f707f1d7271e5cf8a",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Origins",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'Imagine Dragons',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://pbs.twimg.com/media/FVNZ7wXWYAAWjB9.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Divenire",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'Ludovico Einaudi',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://i.scdn.co/image/ab67616d0000b273d304ba2d71de306812eebaf4",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Night changes",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'One Direction',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://i.scdn.co/image/ab67616d0000b2732b8f214c8fa36e338b71ec41",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Dusk Till Dawn",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'Zayn',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/e/ee/Xxxtentacion_%28cropped%29.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "MoonLight",
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      subtitle: const Text(
                        'XTENTACION',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.pink.shade200,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.pink.shade200,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
