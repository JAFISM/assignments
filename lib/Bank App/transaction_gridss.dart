import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Trans_grid(),
    debugShowCheckedModeBanner: false,
  ));
}

class Trans_grid extends StatelessWidget {
  var iconss = [
    "assets/icons/MyAccount.png",
    "assets/icons/seva.png",
    "assets/icons/payment.png",
    "assets/icons/fund transfer.png",
    "assets/icons/Scheduledpayment.png",
    "assets/icons/p-history.png",
  ];
  var gridnamess = [
    'My Account',
    'E-Seva',
    'Payment',
    'Transfer',
    'Deposit',
    'History'
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        slivers: [
      SliverToBoxAdapter(
        child: Center(
          heightFactor: 1.3,
          child: Column(
            children: [
              Row(
                children: const [
                  Image(image: AssetImage("assets/icons/badge.png")),
                  Text(
                    "Would You Like To?",
                    style: TextStyle(color: Colors.indigo, fontSize: 18),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Card(
                      shadowColor: Colors.indigoAccent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        color: Colors.white,
                        // height: 400,
                        // width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage(iconss[index])),
                            Text(
                              gridnamess[index],
                              style: const TextStyle(color: Colors.indigo),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: iconss.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Image(image: AssetImage("assets/icons/badge.png")),
                    Text(
                      "Last Transaction",
                      style: TextStyle(color: Colors.indigo, fontSize: 18),
                    )
                  ],
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height /8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.indigoAccent,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.indigo,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "CWDR/",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    "9857/9856/9855/98659",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.indigo,fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "10-06-2023",
                                        style:
                                        TextStyle(color: Colors.indigoAccent),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "NPR 2325555514",style: TextStyle(color: Colors.indigo),
                                        )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height /8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.indigoAccent,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "CWDR/",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    "9857/9856/9855/98632",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.indigo,fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "10-08-2023",
                                        style:
                                        TextStyle(color: Colors.indigoAccent),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "NPR 2323455514",style: TextStyle(color: Colors.indigo),
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height /8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.indigoAccent,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "CWDR/",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    "9857/9856/9855/98659",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.indigo,fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "10-06-2023",
                                        style:
                                        TextStyle(color: Colors.blue),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "NPR 2325555514",style: TextStyle(color: Colors.indigo),
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
