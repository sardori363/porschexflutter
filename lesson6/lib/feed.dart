import 'package:flutter/material.dart';
import 'package:lesson6/product.dart';
import 'package:like_button/like_button.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  static int currentIndex1 = 0;
  static int currentIndex2 = 0;
  static int currentIndex3 = 0;
  static int currentIndex4 = 0;
  static int currentIndex5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 36,
              margin: EdgeInsets.fromLTRB(36, 22, 36, 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    labelText: "Search...",
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Jane",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto')),
                  Text(
                    "we have some reccommendations for you",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Just for you",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "see all",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 26,
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ProductPage.id);
                    },
                    child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 167,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 33, top: 20),
                        // width: double.infinity,
                        child: PageView(
                          onPageChanged: (int page) {
                            setState(() {
                              currentIndex5 = page;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset("assets/images/PCGB16_1189_fine.webp",
                                fit: BoxFit.cover),
                            Image.asset("assets/images/911.png",
                                fit: BoxFit.cover),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildIndicator(currentIndex5),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 40,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 2),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: LikeButton(),
                        ),
                      ),
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Porsche 918 Spyder",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "\$1,000,000",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "You may get lost but not in the crowd. Porsche has made many outstanding sportscars – but few, if any, can match this hybrid-powered supercar.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Deals",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "see all",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 26)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            ),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: PageView(
                                      onPageChanged: (int page) {
                                        setState(() {
                                          currentIndex1 = page;
                                        });
                                      },
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset("assets/images/911.webp"),
                                        Image.asset(
                                            "assets/images/d-cartoon.png"),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: _buildIndicator(currentIndex1),
                                    ),
                                  ),
                                  Positioned(
                                      top: 20, right: 20, child: LikeButton())
                                ],
                              ),
                              Text(
                                "Porsche 911 gt3rs",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$250,000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            ),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: PageView(
                                      onPageChanged: (int page) {
                                        setState(() {
                                          currentIndex2 = page;
                                        });
                                      },
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset("assets/images/911.webp"),
                                        Image.asset(
                                            "assets/images/d-cartoon.png"),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: _buildIndicator(currentIndex2),
                                    ),
                                  ),
                                  Positioned(
                                      top: 20, right: 20, child: LikeButton())
                                ],
                              ),
                              Text(
                                "Porsche 911 gt3rs",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$250,000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            ),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: PageView(
                                      onPageChanged: (int page) {
                                        setState(() {
                                          currentIndex3 = page;
                                        });
                                      },
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset("assets/images/911.webp"),
                                        Image.asset(
                                            "assets/images/d-cartoon.png"),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: _buildIndicator(currentIndex3),
                                    ),
                                  ),
                                  Positioned(
                                      top: 20, right: 20, child: LikeButton())
                                ],
                              ),
                              Text(
                                "Porsche 911 gt3rs",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$250,000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            ),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: PageView(
                                      onPageChanged: (int page) {
                                        setState(() {
                                          currentIndex4 = page;
                                        });
                                      },
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset("assets/images/911.webp"),
                                        Image.asset(
                                            "assets/images/d-cartoon.png"),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: _buildIndicator(currentIndex4),
                                    ),
                                  ),
                                  Positioned(
                                      top: 20, right: 20, child: LikeButton())
                                ],
                              ),
                              Text(
                                "Porsche 911 gt3rs",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$250,000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "see all",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 26)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              child: ListView(
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    height: 86,
                    width: 108,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ]),
                    child: Center(
                      child: Text(
                        "911",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    height: 86,
                    width: 108,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ]),
                    child: Center(
                      child: Text(
                        "718",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    height: 86,
                    width: 108,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ]),
                    child: Center(
                      child: Text(
                        "Taycan",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    height: 86,
                    width: 108,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ]),
                    child: Center(
                      child: Text(
                        "gt3rs",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    ));
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 20 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator(int currentPage) {
    List<Widget> indicators = [];
    for (int i = 0; i < 2; i++) {
      if (currentPage == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
