import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Freshers_farm_zone(),
    debugShowCheckedModeBanner: false,
    //theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Freshers_farm_zone extends StatefulWidget {
  @override
  State<Freshers_farm_zone> createState() => _Freshers_farm_zoneState();
}

class _Freshers_farm_zoneState extends State<Freshers_farm_zone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "Farmers Fresh Zone",
              style: GoogleFonts.bitter(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            floating: true,
            pinned: true,
            actions: const [
              Icon(
                Icons.location_on_outlined,
                size: 15,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Kochi",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 40,
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for vegetables and fruits...",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Text(
                        "OFFERS",
                        style: TextStyle(
                            color: Colors.lightGreen.shade700,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueGrey.shade100),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Text(
                        "FRUITS",
                        style: TextStyle(
                            color: Colors.lightGreen.shade700,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blueGrey.shade100,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Text(
                        "VEGETABLES",
                        style: TextStyle(
                            color: Colors.lightGreen.shade700,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueGrey.shade100),
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 100,
                    //   child: Center(child: Text("VEGETABLES",style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),)),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(100),
                    //       color: Colors.blueGrey.shade100
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              CarouselSlider(
                items: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/952353/pexels-photo-952353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Text(
                          "Hurry Up!!",
                          style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ),
                    )
                  ]),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1657310217253-176cd053e07e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  // aspectRatio: 16 / 9,
                  //  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(
                    milliseconds: 800,
                  ),
                  enableInfiniteScroll: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  //  height: 80,
                  //  width: double.infinity,
                  // color: Colors.blueGrey.shade50,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      border: Border.all(width: 1, color: Colors.black)),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Image(
                              image: AssetImage(
                                  "assets/icons/icons8-timer-48.png")),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "30 MIN POLICY",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.mobile_friendly,
                            size: 48,
                            color: Colors.lightGreen,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "TRACEABILITY",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Image(
                              image: AssetImage(
                                  "assets/icons/icons8-shop-local-48.png")),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "LOCAL SOURCING",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shop By Category",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: .1,
            ),
            Veg_card_grids(),
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, size: 30), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 30,
              ),
              label: "Account"),
        ],
      ),
    );
  }
}

class Veg_card_grids extends StatelessWidget {
  List images = [
    "https://images.pexels.com/photos/248420/pexels-photo-248420.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/5945954/pexels-photo-5945954.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/7195248/pexels-photo-7195248.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/10819662/pexels-photo-10819662.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4443487/pexels-photo-4443487.jpeg?auto=compress&cs=tinysrgb&w=600"
    "https://images.pexels.com/photos/4443482/pexels-photo-4443482.jpeg?auto=compress&cs=tinysrgb&w=600"
   //"https://images.pexels.com/photos/5945669/pexels-photo-5945669.jpeg?auto=compress&cs=tinysrgb&w=600"
    //"https://images.pexels.com/photos/4443497/pexels-photo-4443497.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    //"https://images.pexels.com/photos/3651044/pexels-photo-3651044.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];
  List<String> names = [
    "vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Dry Fruits",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    // double screenWidth = queryData.size.width;
    // double cardWidth = screenWidth * 0.8;
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .55,
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext, int index) => Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                  ),
                  // child: Container(
                  //   width: cardWidth,
                  //   height: cardWidth * 0.7,
                    child: Card(
                      //borderOnForeground: true,
                      shadowColor: Colors.blueGrey,
                      elevation: 8,
                      child: Column(
                        // height: MediaQuery.of(context).size.height / 5,
                        // width: MediaQuery.of(context).size.width * .3,
                        // decoration: BoxDecoration(
                        //   boxShadow: [BoxShadow(color: Colors.greenAccent, blurRadius: 4)],
                        //   borderRadius: BorderRadius.circular(10),
                        //   image: DecorationImage(
                        //       fit: BoxFit.cover, image: NetworkImage(images[index])),
                        //     border: Border.all(width: 2, color: Colors.lightGreen)
                        children: [
                          Image(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(names[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                          )
                        ],
                      ),
                    ),
                  //),
                ),
                // SizedBox(
                //   height: 8,
                // ),
                // Text(names[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ));
  }
}
