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
                colors: [
              Colors.indigo.shade100,
              Colors.indigo.shade50,
              Colors.indigo.shade100,
            ])),
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text(
                "Select invoice Date",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor:Color.fromARGB(255,238,244,241),
                    hintText: "    December 12 2023",
                    suffixIcon: Icon(Icons.calendar_month,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.white,
                        ))),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 215, top: 3),
              child: Text(
                "Enter the amount",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255,238,244,241),
                    hintText: "   Eg: 2500",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.white,
                        ))),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: 300,
              child: Image(
                  image: AssetImage(
                      "assets/images/bsckground-removebg-preview.png")),
            ),
            SizedBox(
              height: 2,
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
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(150, 40)),
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
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 40),
                        backgroundColor: Colors.white),
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
