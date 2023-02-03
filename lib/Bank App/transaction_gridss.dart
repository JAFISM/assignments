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
    "assets/icons/payment history.png",
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
    return Scaffold(
      body: Column(
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
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shadowColor: Colors.indigoAccent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    color: Colors.white,
                    height: 300,
                    width: 200,
                    child: Column(
                      children: [
                        Image(image: AssetImage(iconss[index])),
                        Text(
                          gridnamess[index],
                          style: TextStyle(color: Colors.indigo),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: iconss.length,
          ),
        ],
      ),
    );
  }
}
