import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Upload(),
    debugShowCheckedModeBanner: false,));
}

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff81d4f4),
                  Colors.white70,
                  Color(0xfff48bbd),
                ])),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.arrow_back_ios, color: Colors.indigo),
                  Text(
                    "Rewards Wallet",
                    style: TextStyle(fontSize: 25, color: Colors.indigo),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 70,
                        width: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Colors.indigo, Colors.indigoAccent])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Total Balance",
                              style:
                              TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Text(
                              "14,325 🪙",
                              style:
                              TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 70,
                        width: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Redeemable",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Points",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "12,000🪙",
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 20),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Expired",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Points",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "12,000🪙",
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 160,
                  width: 150,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child:
                  Image.network("https://cdn1.iconfinder.com/data/icons/scenes-10/1000/e-commerce___gift_present_wrapping_delivery_shopping-512.png"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Color.fromARGB(179, 240, 243, 250),
                      constraints: BoxConstraints.expand(height: 50),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 61, 61, 165),
                              width: 3,
                            ),
                          ),
                        ),
                        unselectedLabelColor:
                        Color.fromARGB(255, 130, 130, 132),
                        labelColor: Color.fromARGB(255, 61, 61, 165),
                        indicatorColor: Color.fromARGB(255, 61, 61, 165),
                        tabs: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Tab(text: "Rewards"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_atm,
                                color: Color.fromARGB(255, 130, 130, 132),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Tab(text: "Transaction"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 15),
                    // SizedBox(height: 25),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.separated(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 5,
                                      ),
                                      child: ListTile(
                                        leading: Text(
                                          '${index * 12}',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 60, 98, 212),
                                          ),
                                        ),
                                        trailing: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Valid Till",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              "jan ${index * 2 + 4},2023",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        title: Text(
                                          "Order ID - 1050855${index + 15}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Container(
                                  height: 10,
                                );
                              }),
                          // Container(
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(90),
                          //     child: Image.asset("images/bg.png"),
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.blue,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.app_registration,
      //           color: Colors.blue,
      //         ),
      //         label: 'Cart'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.card_giftcard,
      //           color: Colors.blue,
      //         ),
      //         label: 'Account'),
      //     BottomNavigationBarItem(
      //         icon: IconButton(
      //
      //           color: Colors.blue, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>  Pro_File())); }, icon: Icon(  Icons.person_pin,),
      //         ),
      //         label: 'Account')
      //   ],
      // ),
    );
  }
}