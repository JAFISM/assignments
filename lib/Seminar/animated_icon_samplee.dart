import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Animat_icon_sample(),
    debugShowCheckedModeBanner: false,
  ));
}

class Animat_icon_sample extends StatefulWidget {
  @override
  State<Animat_icon_sample> createState() => _Animat_icon_sampleState();
}

class _Animat_icon_sampleState extends State<Animat_icon_sample> {
  @override
  Widget build(BuildContext context) {
    AnimateIconController controller;
    controller = AnimateIconController();
    return Scaffold(
      body: Center(
        child: AnimateIcons(
          startIcon: Icons.play_circle,
          endIcon: Icons.pause_circle,
          size: 150.0,
          controller: controller,
          // add this tooltip for the start icon
          startTooltip: "Play",
          // add this tooltip for the end icon
          endTooltip: 'Pause',
          onStartIconPress: () {
            return true;
          },
          onEndIconPress: () {
            return true;
          },
          duration: Duration(milliseconds: 500),
          startIconColor: Colors.deepPurple,
          endIconColor: Colors.deepOrange,
          // clockwise: true,
        ),
      ),
    );
  }
}
