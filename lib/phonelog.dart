import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: phonelog(),
    ),
  );
}

class phonelog extends StatefulWidget {
  @override
  State<phonelog> createState() => _phonelogState();
}

class _phonelogState extends State<phonelog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Contact Book'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: ListView(
        children: [
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 1'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 2'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 3'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 4'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 5'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 6'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 7'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 8'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.cyan,
            color: Colors.blue.shade50,
            child: Card(
              child: ListTile(
                title: Text('Person 9'),
                leading: const CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/dafault avatar.jpg'),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.video_camera_front_rounded,
                      color: Colors.blue.shade400,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade400,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
