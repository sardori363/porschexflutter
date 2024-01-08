import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ProductPage extends StatefulWidget {
  static const String id = '/product_page_id';
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  static int currentIndex5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// product image and info
              Container(
                height: 200,
                color: Colors.black,
                child: Stack(
                  children: [
                    Container(
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
                          Image.asset("assets/images/911.webp",
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
              Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Porsche 918 Spyder",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "\$1,000,000",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "You may get lost but not in the crowd. Porsche has made many outstanding sportscars – but few, if any, can match this hybrid-powered supercar.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              /// add-to-cart button
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromARGB(255, 82, 82, 82), // Background color
                      onPrimary: Colors.white, // Text color
                      elevation: 5, // Elevation (shadow)
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/alert close.png"),
                        Spacer(),
                        Text(
                          "Add to Cart",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                      ],
                    ),
                    onPressed: () {},
                  )),

              /// comments
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// reviews
                    Container(
                        margin: EdgeInsets.only(
                            top: 3, right: 30, left: 30, bottom: 36),
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Image.asset(
                                      "assets/icons/user-circle.png")),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jane Cooper",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Text("01/01/2021")),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// title and comment
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Timeless car, masterpiece",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "The Porsche 918 Spyder is a groundbreaking hybrid hypercar with sleek design and remarkable performance. Its potent V8 engine and electric motors create astounding acceleration. Its limited production and meticulous craftsmanship make it a sought-after collector's item, showcasing Porsche's innovation and driving experiences.",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Image.asset(
                                      "assets/icons/user-circle.png")),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jane Cooper",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Text("01/01/2021")),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// title and comment
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Timeless car, masterpiece",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "The Porsche 918 Spyder is a groundbreaking hybrid hypercar with sleek design and remarkable performance. Its potent V8 engine and electric motors create astounding acceleration. Its limited production and meticulous craftsmanship make it a sought-after collector's item, showcasing Porsche's innovation and driving experiences.",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Image.asset(
                                      "assets/icons/user-circle.png")),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jane Cooper",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 19.0,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Text("01/01/2021")),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// title and comment
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Timeless car, masterpiece",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "The Porsche 918 Spyder is a groundbreaking hybrid hypercar with sleek design and remarkable performance. Its potent V8 engine and electric motors create astounding acceleration. Its limited production and meticulous craftsmanship make it a sought-after collector's item, showcasing Porsche's innovation and driving experiences.",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// see-more button
              Container(
                margin: EdgeInsets.all(30),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 196, 196, 196),
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text(
                    "See more reviews",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
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
