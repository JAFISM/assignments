import 'package:action_slider/action_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAutomation extends StatefulWidget {
  const HomeAutomation({Key? key}) : super(key: key);

  @override
  State<HomeAutomation> createState() => _HomeAutomationState();
}

class _HomeAutomationState extends State<HomeAutomation> {
  var text = ["Home", "Light", "TV", "Air Condition"];

  var icon = [
    CupertinoIcons.home,
    CupertinoIcons.brightness,
    CupertinoIcons.tv,
    CupertinoIcons.wind_snow,
  ];

  int selected = 0;

  final _controller = ActionSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xffB721FF),
                Color(0xff21D4FD),
              ])),
          child: ListView(children: [
            Container(
              height: MediaQuery.of(context).size.height / 14,
              color: Colors.transparent,
              margin: const EdgeInsets.only(left: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Home",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              itemCount: text.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.015,
                    width: MediaQuery.of(context).size.width * 0.015,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index
                          ? const Color(0xffB721FF)
                          : Colors.white.withOpacity(0.2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffB721FF),
                          child: Icon(
                            icon[index],
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          text[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height * 0.095,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(
                      CupertinoIcons.home,
                      size: 35,
                      color: selected == 0
                          ? const Color(0xffB721FF)
                          : Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: Icon(
                        CupertinoIcons.brightness,
                        size: 35,
                        color: selected == 1
                            ? const Color(0xffB721FF)
                            : Colors.white,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: Icon(
                        CupertinoIcons.tv,
                        size: 35,
                        color: selected == 2
                            ? const Color(0xffB721FF)
                            : Colors.white,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: Icon(
                        CupertinoIcons.wind_snow,
                        size: 35,
                        color: selected == 3
                            ? const Color(0xffB721FF)
                            : Colors.white,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: ActionSlider.custom(
                toggleMargin: EdgeInsets.zero,
                width: 300.0,
                controller: _controller,
                toggleWidth: 60.0,
                height: 60.0,
                backgroundColor: Colors.white.withOpacity(0.03),
                // Colors.white.withOpacity(0.1),
                foregroundChild: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffB721FF),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: const Icon(CupertinoIcons.mic_solid,
                        color: Colors.white)),
                foregroundBuilder: (context, state, child) => child!,
                backgroundChild: const Center(
                  child: Text(
                    'Tap to Control',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                backgroundBuilder: (context, state, child) => ClipRect(
                    child: OverflowBox(
                        maxWidth: state.standardSize.width,
                        maxHeight: state.toggleSize.height,
                        minWidth: state.standardSize.width,
                        minHeight: state.toggleSize.height,
                        child: child!)),
                backgroundBorderRadius: BorderRadius.circular(30.0),
                action: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                  await Future.delayed(const Duration(seconds: 1));
                  controller.reset(); //resets the slider
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
