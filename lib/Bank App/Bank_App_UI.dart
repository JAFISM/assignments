import 'package:assignments/Bank%20App/transaction_gridss.dart';
//import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bank_main(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.indigo),
  ));
}

class Bank_main extends StatefulWidget {
  @override
  State<Bank_main> createState() => _Bank_mainState();
}

class _Bank_mainState extends State<Bank_main> {
  // int _selectedIndex = 0;
  //
  // List<Widget> tabItems = [
  //   Center(child: Text("0")),
  //   Center(child: Text("1")),
  //   Center(child: Text("2")),
  //   Center(child: Text("3")),
  //   Center(child: Text("4"))
  // ];
  //
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: FlashyTabBar(
      //   selectedIndex: _selectedIndex,
      //   showElevation: true,
      //   onItemSelected: (index) => setState(() {
      //     _selectedIndex = index;
      //   }),
      //   items: [
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text('Explore'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Profile'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('Settings'),
      //     ),
      //   ],
      // ),
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text("Welcome Jafis M")),
        leading: const Icon(Icons.list),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_rounded),
          )
        ],
      ),
      body: CustomScrollView(
         // physics: BouncingScrollPhysics(),
         // shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent.shade100),
                    ),
                    Center(
                      heightFactor: 0.001,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 1.12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.indigo.shade200,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CircleAvatar(
                                radius: 43,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(
                                      "https://images.news18.com/ibnlive/uploads/2022/07/5b64ef07d608085cf4b239ddfeda4a8d.png"),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "State Bank Of India",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    "NPR.132664997978",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  ),
                                  const Text(
                                    "32616444448884488",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Wrap(
                                    spacing: 25,
                                    children: const [
                                      Icon(
                                        Icons.qr_code_2_sharp,
                                        color: Colors.indigo,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.mobile_friendly,
                                        color: Colors.indigo,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.sell,
                                        color: Colors.indigo,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Trans_grid(),
          //     ],
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Trans_grid(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
