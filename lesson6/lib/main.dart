import 'package:flutter/material.dart';
import 'package:lesson6/favorites_page.dart';
import 'package:lesson6/home_page.dart';
import 'package:lesson6/product.dart';
import 'package:lesson6/splash_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homework',
      initialRoute: SplashScreen2.id,
      home: HomePage(),
      routes: {
        SplashScreen2.id: (context) => SplashScreen2(),
        HomePage.id: (context) => HomePage(),
        ProductPage.id: (context) => ProductPage(),
        FavoritesPage.id: (context) => FavoritesPage(),
      },
    );
  }
}
