
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/drawer.dart';

String? string; // Nullable String


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late CarouselController carouselController;

  @override
  void initState() {
    carouselController = CarouselController();
    // TODO: implement initState
    super.initState();
  }


  final myitems = [
    Image.asset('assets/home.images/Mask group@3x.png'),
    Image.asset('assets/home.images/Mask group5@3x.png'),
    Image.asset('assets/home.images/Mask group4@3x.png'),
    Image.asset('assets/home.images/Mask group3@3x.png'),
    Image.asset('assets/home.images/Mask group2@3x.png'),
  ];

  int myCurrentIndex = 0;

  // int _current = 0;
  // final List<Widget> jobSlider = [
  //   (job: dummyJobs[0]),
  //   JobCard(job: dummyJobs[1]),
  //   JobCard(job: dummyJobs[2]),
  // ];
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Widget> buildScreens() {
      return [
        Scaffold(

          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(239, 108, 77, 1),

            title: Center(
              child: Image.asset(
                'assets/home.images/logo@3x.png',
                scale: 3,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Image(
                  image: AssetImage(
                    'assets/home.images/Vector.png',
                  ),
                ),
              )
            ],
            leading: Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Image.asset('assets/home.images/icon.png'),
              );
            }),
          ),
          drawer: drawerHome(),
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                        viewportFraction: 2,
                        height: 300,
                        onPageChanged: (index, reason) {
                          setState(() {
                            myCurrentIndex = index;
                          });
                        }),
                    items: myitems,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: widget.carouselList.map((e){},
                  // ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              const Color.fromRGBO(0, 0, 0, 1).withOpacity(.2),
                              const Color.fromRGBO(0, 0, 0, 1).withOpacity(.4),
                              const Color.fromRGBO(0, 0, 0, 1).withOpacity(.7),
                            ])),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Shop ',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'TT Norms Pro Bold.otf',
                              color: Colors.white),
                        ),
                        Text('Better, ',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'TT Norms Pro Bold.otf',
                                color: Color.fromRGBO(3, 188, 164, 1),
                                fontWeight: FontWeight.bold)),
                        Text(
                          'look',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'TT Norms Pro Bold.otf',
                              color: Colors.white),
                        ),
                        Text(' good',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'TT Norms Pro Bold.otf',
                                color: Color.fromRGBO(3, 188, 164, 1),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'My Piles',
                        style: TextStyle(
                            color: Color.fromRGBO(48, 48, 49, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MainButton(
                        text: 'View all',
                        textColor: const Color.fromRGBO(239, 108, 77, 1),
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: const Color.fromRGBO(239, 108, 77, 1),
                        textSize: 16,
                        onTap: () {},
                        backgroundColor: null,
                      ),
                    ),
                  ],
                ),
              ),

              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 2,
                    height: 100,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myitems,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'My Piles',
                        style: TextStyle(
                            color: Color.fromRGBO(48, 48, 49, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MainButton(
                        text: 'View all',
                        textColor: const Color.fromRGBO(239, 108, 77, 1),
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: const Color.fromRGBO(239, 108, 77, 1),
                        textSize: 16,
                        onTap: () {},
                        backgroundColor: null,
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 2,
                    height: 100,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myitems,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'My Piles',
                        style: TextStyle(
                            color: Color.fromRGBO(48, 48, 49, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MainButton(
                        text: 'View all',
                        textColor: const Color.fromRGBO(239, 108, 77, 1),
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: const Color.fromRGBO(239, 108, 77, 1),
                        textSize: 16,
                        onTap: () {},
                        backgroundColor: null,
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 2,
                    height: 100,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myitems,
              ),

              // SizedBox(
              //   height: context.screenHeight * .3,
              //   child: Column(children: [
              //     Expanded(
              //       child: CarouselSlider(
              //         items: jobSlider,
              //         carouselController: _controller,
              //         options: CarouselOptions(
              //             autoPlay: false,
              //             enlargeCenterPage: true,
              //             aspectRatio: 2,
              //             onPageChanged: (index, reason) {
              //               setState(() {
              //                 _current = index;
              //               });
              //             }),
              //       ),
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: jobSlider.asMap().entries.map((entry) {
              //         return GestureDetector(
              //           onTap: () => _controller.animateToPage(entry.key),
              //           child: Container(
              //             width: 8,
              //             height: 8,
              //             margin:
              //             const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
              //             decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               color: (Theme.of(context).brightness == Brightness.dark
              //                   ? Colors.white
              //                   : Colors.black)
              //                   .withOpacity(_current == entry.key ? 0.9 : 0.4),
              //             ),
              //           ),
              //         );
              //       }).toList(),
              //     ),
              //   ]),
              // );


            ]),
          ),
        ),        screen2(),
        screen3(),
        screen4(),
        screen5(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_filled),
          activeColorPrimary: Colors.deepOrangeAccent,
          inactiveColorPrimary: Colors.grey,
        ),  PersistentBottomNavBarItem(
          icon: const Icon(Icons.mail),
          activeColorPrimary: Colors.deepOrangeAccent,
          inactiveColorPrimary: Colors.grey,
        ),  PersistentBottomNavBarItem(
          icon: const Icon(Icons.add,color: Colors.white, size: 40),
          activeColorPrimary: Color.fromRGBO(3, 188, 164, 1),
        ),  PersistentBottomNavBarItem(
          icon: const Icon(Icons.compare_arrows_outlined),
          activeColorPrimary: Colors.deepOrangeAccent,
          inactiveColorPrimary: Colors.grey,
        ),  PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month),
          activeColorPrimary: Colors.deepOrangeAccent,
          inactiveColorPrimary: Colors.grey,
        ),

      ];
    }
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:     PersistentTabView(
          context,
          controller: controller,
          screens: buildScreens(),
          items: navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.black,
          // Default is Colors.white.
          handleAndroidBackButtonPress: true,
          // Default is true.
          resizeToAvoidBottomInset: true,
          // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true,
          // Default is true.
          hideNavigationBarWhenKeyboardShows: true,
          // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.black,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style15, // Choose the nav bar style with this property.
        ),);
  }
}


class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen1'),),
    );
  }
}class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen2'),),
    );
  }
}class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen3'),),
    );
  }
}class screen4 extends StatelessWidget {
  const screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen4'),),
    );
  }
}class screen5 extends StatelessWidget {
  const screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen5'),),
    );
  }
}
