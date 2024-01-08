import 'package:flutter/material.dart';
import 'package:lesson6/home_page.dart';

class SplashScreen2 extends StatefulWidget {
  static const String id = '/splash_screen2_id';
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  late PageController _pageController;

  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Skip",
                style: TextStyle(color: Color.fromARGB(255, 107, 119, 141)),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                  image: "assets/images/3d cartoon.png",
                  title: "Shop Online Products",
                  content:
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet."),
              makePage(
                  image: "assets/images/splash2.png",
                  title: "Fastest Delivery",
                  content:
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet."),
              makePage(
                  image: "assets/images/d-cartoon.png",
                  title: "Contactless Delivery",
                  content:
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet."),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.only(bottom: 15, right: 10),
              width: double.infinity,
              height: 50,
              child: currentIndex == 0
                  // here1
                  ? Container(
                      // margin: EdgeInsets.only(bottom: 16, right: 10),
                      child: GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Text('Next',
                            style: TextStyle(color: Colors.red, fontSize: 20)),
                      ),
                    )
                  : currentIndex == 1

                      /// here2
                      ? Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    _pageController.previousPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear);
                                  },
                                  child: Text('Prev',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20)),
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _pageController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear);
                                  },
                                  child: Text('Next',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20)),
                                ),
                              ),
                            ],
                          ),
                        )
                      : currentIndex == 2
                          /// here3
                          ? Container(
                              padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, HomePage.id);
                                },
                                child: Text('Start',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            )
                          : SizedBox()),
        ],
      ),
    );
  }

  Widget makePage({image, title, content}) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(image),
            Spacer(),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
            ),
            Text(
              content,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(105, 38, 56, 89)),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
