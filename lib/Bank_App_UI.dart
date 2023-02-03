import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bank_main(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.indigo),
  ));
}

class Bank_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Welcome Jafis M")),
        leading: const Icon(Icons.list),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_rounded),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.indigoAccent.shade100),
              ),
              Center(
                heightFactor: 0.01,
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
                        padding: EdgeInsets.all(8.0),
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
    );
  }
}
