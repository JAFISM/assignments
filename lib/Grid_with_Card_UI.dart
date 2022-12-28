import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_With_Card(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_With_Card extends StatelessWidget {
  var name = [
    'Phone',
    'Message',
    'Camera',
    'Skype',
    'Gallery',
    'Play Store',
    'Phone',
    'Message',
    'Camera',
    'Skype',
    'Gallery',
    'Play Store',

  ];
  var logo = ['assets/icons/WhatsappLogo.png',
    'assets/icons/Messagelogo.png',
    'assets/icons/camera.png',
  'assets/icons/Skype.png',
  'assets/icons/GalleryIcon.png',
    'assets/icons/playstore.png',
    'assets/icons/WhatsappLogo.png',
    'assets/icons/Messagelogo.png',
    'assets/icons/camera.png',
    'assets/icons/Skype.png',
    'assets/icons/GalleryIcon.png',
    'assets/icons/playstore.png'
  ];
  var color = [
    Colors.blue.shade100,
    Colors.grey.shade300,
    Colors.red.shade100,
    Colors.yellow.shade400,
    Colors.green.shade300,
    Colors.orange.shade300,
    Colors.pink.shade300,
    Colors.brown.shade300,
    Colors.purple.shade300,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.yellowAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: color[index]),
              child: Center(
                child: ListTile(
                  title: Text(name[index]),
                  leading: Image.asset(logo[index]),
                ),
              ),
            ),
          );
        },
        itemCount: color.length,
      ),
    );
  }
}
