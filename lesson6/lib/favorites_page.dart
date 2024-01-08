import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  static const String id = '/favorites_page_id';
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  int i1 = 0;
  int i2 = 0;
  int i3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: Image.asset("assets/images/911.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Porsche 911 GT3RS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Price: \$250.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  i1--;
                                  setState(() {});
                                },
                                child: Image.asset("assets/icons/delete.png"),
                              ),
                              Text(
                                i1.toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                onPressed: () {
                                  i1++;
                                  setState(() {});
                                },
                                child:
                                    Image.asset("assets/icons/plus-circle.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: Image.asset("assets/images/911.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Porsche 911 GT3RS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Price: \$250.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  i2--;
                                  setState(() {});
                                },
                                child: Image.asset("assets/icons/delete.png"),
                              ),
                              Text(
                                i2.toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                onPressed: () {
                                  i2++;
                                  setState(() {});
                                },
                                child:
                                    Image.asset("assets/icons/plus-circle.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: Image.asset("assets/images/911.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Porsche 911 GT3RS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Price: \$250.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  i3--;
                                  setState(() {});
                                },
                                child: Image.asset("assets/icons/delete.png"),
                              ),
                              Text(
                                i3.toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                onPressed: () {
                                  i3++;
                                  setState(() {});
                                },
                                child:
                                    Image.asset("assets/icons/plus-circle.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cart Total:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Text(
                "\$750.000",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Deliver to Leslie:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Text(
                "2972 Westheimer Rd.\n Santa Ana, Illinois\n 85486 ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 82, 82, 82), // Background color
                onPrimary: Colors.white, // Text color
                elevation: 5, // Elevation (shadow)
              ),
              child: Text(
                "Checkout",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            )),
      ]),
    );
  }
}
