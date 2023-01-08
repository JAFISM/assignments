import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel_details(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel_details extends StatefulWidget {
  @override
  State<Hotel_details> createState() => _Hotel_detailsState();
}

class _Hotel_detailsState extends State<Hotel_details> {
  List screen = [Text("search"), Text('favourite'), Text("settings")];
  var index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: 0,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 270,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1631049035182-249067d7618e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVsJTIwcm9vbXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60'),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Container(
                        height: 270,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black45, Colors.transparent],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                      ),
                      Container(
                        height: 270,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Center(
                                    child: Text(
                                  "DETAIL",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                              ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 89,
                                    width: 160,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Text(
                                            "GrandHyatt Kochi ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24,
                                                color: Colors.white),
                                            textAlign: TextAlign.justify,
                                            maxLines: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, bottom: 5),
                                          child: Container(
                                            height: 25,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey,
                                            ),
                                            child: const Center(
                                                child: Text(
                                              "8.5/150 reviews",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                          radius: 25,
                                          backgroundColor: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 25,
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: Colors.black38,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "8 km to LuluMall",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black38),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            children: const [
                              Text(
                                "\$ 200",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.redAccent),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "/per night",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black38),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF00C853)),
                    child: const Text(
                      "Book Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 8),
                          child: Text(
                            "DESCRIPTION",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          "Cochin Grand Hyatt Kochi Bolgatty is a waterfront resort featuring two swimming pools a tennis court as well as a fitness center.All rooms are air-conditioned with private bathrooms and hot tub. Rooms and suites are well equipped with workstations & flat screen TV. The rooms offer spectacular views of lake garden city or pool.Guests have access to the business center spa & salon ids play area and some of the finest signature restaurants in the city.A continental or buffet breakfast is available daily at the property.Guests can rent a car to explore the area. Speaking English and Hindi at the reception staff are always on hand to help.Colony Clubhouse & Grill is a classic Old World grill on the hotel’s rooftop while Malabar Cafe is an all- day outlet that showcases the culinary expertize of Kerala.The property is 3.1 mi away from Durbar Hall Art Gallery which houses painting by illustrious local artists and 3.8 mi away from Greenix Village which showcases traditional music and arts. Kochi Interational Airport is 20 mi from the property and a 45-minute drive away.",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          textAlign: TextAlign.justify,
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
