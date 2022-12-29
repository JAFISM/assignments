import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_With_Stack(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_With_Stack extends StatelessWidget {
  var images = [
    'https://images.unsplash.com/photo-1485738422979-f5c462d49f74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1199&q=80',
    'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3631051/pexels-photo-3631051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1427579/pexels-photo-1427579.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3671394/pexels-photo-3671394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
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
              children: [
                Card(
                  child: Image(
                      image: NetworkImage(images[index])
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 5,
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
