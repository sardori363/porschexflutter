import 'package:flutter/material.dart';
import 'package:lesson6/favorites_page.dart';
import 'package:lesson6/feed.dart';

class HomePage extends StatefulWidget {
  static const String id = '/home_page_id';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 0);

  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void changeIndex(int index) {
    currentPageIndex = index;
    _pageController.jumpToPage(currentPageIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
              height: 800,
              child: PageView(
                controller: _pageController,
                physics: BouncingScrollPhysics(),
                children: [
                  FeedPage(),
                  FavoritesPage()
                ],
              ),
            ),
            
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                iconSize: 30,
                currentIndex: currentPageIndex,
                onTap: changeIndex,
                backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled, color: Colors.grey),
                    activeIcon: Icon(Icons.home_filled, color: Colors.black87),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite, color: Colors.grey),
                    label: 'hey',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.grey),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket, color: Colors.grey),
                    label: '',
                  ),
                ],
              
            ),
              ],
            )
      ),
    );
  }
}
