import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Secondpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade100, Colors.white,Colors.white,Colors.indigo.shade100])),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.indigo.shade900,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(5, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text(
                "Enter the invoice number",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey.shade50,
                    hintText: "    Eg:1232544",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.white,
                        ))),
              ),
            ),
            Image(
                image: AssetImage(
                    "assets/images/bsckground-removebg-preview.png")),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.indigo,
                        size: 15,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ],
                  ),
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(150, 40)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.indigo,
                          size: 15,
                        )
                      ],
                    ),
                    style:
                    ElevatedButton.styleFrom(
                        minimumSize: Size(150, 40),backgroundColor: Colors.white ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
