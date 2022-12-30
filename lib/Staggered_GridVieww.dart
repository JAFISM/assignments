import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: Staggered_Gridvieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class Staggered_Gridvieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        staggeredTiles: [
          StaggeredTile.count(
            3,
            3,
          )
        ],
        children: [
          Customchild(
            text: Text(
              "Hello",
            ),
            images: AssetImage('assets/images/David bekham.jpg'),
            bgcolors: Colors.grey,
          )
        ],
      ),
    );
  }
}

class Customchild extends StatelessWidget {
  final Color? bgcolors;
  final Text? text;
  final AssetImage? images;

  Customchild({this.bgcolors, this.text, this.images});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolors,
      child: Container(
          child: Column(
        children: [Image.asset('$images'), Text("Heloo")],
      )),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: Colors.teal,
      elevation: 10,
    );
  }
}
