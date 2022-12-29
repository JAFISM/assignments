import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_With_Stack(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_With_Stack extends StatelessWidget {
  var images = [
    'assets/images/pexels-pixabay-33235.jpg',
    'assets/images/pexels-pixabay-33235.jpg',
    'assets/images/pexels-pixabay-33235.jpg',
    'assets/images/pexels-pixabay-33235.jpg',
    'assets/images/pexels-pixabay-33235.jpg',
  ];
  var places = ['USA', 'Russia', 'France', 'England', 'Canada'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Stack'),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Stack(
                  children:[ Card(
                    child: Image(
                      image: AssetImage(images[index]),
                    ),
                  ),

                Positioned(
                  top: 110,
                  child: Text(
                    places[index],
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
