import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Pop_hotel(),
    debugShowCheckedModeBanner: false,
  ));
}

class Pop_hotel extends StatelessWidget {
  var images = [
    'https://images.pexels.com/photos/2467558/pexels-photo-2467558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2467558/pexels-photo-2467558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2467558/pexels-photo-2467558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2467558/pexels-photo-2467558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2467558/pexels-photo-2467558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  var hotelname = [
    "Taj Malabar",
    "Marriot",
    "Lemeridean",
    "Crown Plaza",
    "Hyatt",
    "Taj Malabar",
    "Marriot",
    "Lemeridean",
    "Crown Plaza",
    "Hyatt",
  ];
  var description = [
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
    "A four Star Hotel in kochin",
  ];
  var rate = [
    "\$69/night",
    "\$79/night",
    "\$89/night",
    "\$99/night",
    "\$69/night",
    "\$99/night",
    "\$59/night",
    "\$89/night",
    "\$99/night",
    "\$119/night",
  ];
  var rating = [
    "3.8",
    "3.5",
    "4.5",
    "5.0",
    "3.5",
    "4.5",
    "3.8",
    "3.5",
    "4.5",
    "5.0",
    "3.5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Popular Hotel',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                // physics:NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            spreadRadius: 1,
                            blurRadius: 3,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(images[index]))),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  hotelname[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Text(
                                  description[index],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  rate[index],
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      rating[index],
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: Colors.blue,
                                      size: 16,
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
