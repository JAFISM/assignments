import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MaterialApp(
    home: Negotiate(),
    debugShowCheckedModeBanner: false,
  ));
}

class Negotiate extends StatelessWidget {
  const Negotiate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF262e39),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF262e39),
        title: const Text("Negotiate"),
        leading:  IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back_ios),),
        actions:  [IconButton(icon:const Icon(Icons.more_vert_rounded),onPressed: (){},)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Text(
                            "Ceiling Light Repairing",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.favorite,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: SizedBox(
                            height: 130,
                            child: Text(
                              "Before you begin, turn off power switch \ncontrolling the light fixture to OFF position. Turn of the main power if there is any chance another person/childern turning on the wall power switch while you are working",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Amount"),
                          ),
                          subtitle: Text("800 Per Day"),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type description"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Type your Amount",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "\$ 750",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SliderButton(
                  action: () {
                    ///Do something here OnSlide
                    // print("working");
                  },

                  ///Put label over here
                  label: const Text(
                    "Swipe to confirm",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: const Center(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),

                  //Put BoxShadow here
                  boxShadow: const BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),

                  //Adjust effects such as shimmer and flag vibration here
                  shimmer: true,
                  vibrationFlag: true,

                  ///Change All the color and size from here.
                  width: 230,
                  radius: 100,
                  buttonColor: Colors.black,
                  backgroundColor: Colors.amber,
                  highlightedColor: Colors.white,
                  baseColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
