import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel_packages(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel_packages extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hotel Packages",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(color: Colors.grey.shade600),
                    )),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 4,
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
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(images[index]))),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hotelname[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Text(
                                  description[index],
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      rate[index],
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("Book")),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.car_rental,
                                      color: Colors.blue,
                                    ),
                                    Icon(
                                      Icons.wine_bar_rounded,
                                      color: Colors.blue,
                                    ),
                                    Icon(
                                      Icons.wifi,
                                      color: Colors.blue,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
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
