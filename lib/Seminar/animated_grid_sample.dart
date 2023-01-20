import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(
    home: Myanimated_grid(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myanimated_grid extends StatefulWidget {
  @override
  State<Myanimated_grid> createState() => _Myanimated_gridState();
}

class _Myanimated_gridState extends State<Myanimated_grid> {
  var count=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount:count,
          children: List.generate(20, (int index) {
              return AnimationConfiguration. staggeredGrid(
                position: index,
                duration: const Duration(seconds: 5),
                columnCount: count,
               // child: ScaleAnimation(
                 // child:FlipAnimation(
                    //child: FadeInAnimation(
                      //child: FlipAnimation(
                        child: ScaleAnimation(
                          child: MyGridCard(),
                        ),
                     // ),
                    //),
                  //),
               // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
class MyGridCard extends StatelessWidget {
  @override
  Widget build(BuildContext context)
   => Card(
     color: Colors.cyan,
     shadowColor: Colors.blueAccent,
     elevation: 10,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(30),
     ),
   );

}


