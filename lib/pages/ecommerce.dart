import 'package:division/division.dart';
import 'package:ecommerce_ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EcommercePages extends StatefulWidget {
  @override
  _EcommercePagesState createState() => _EcommercePagesState();
}

class _EcommercePagesState extends State<EcommercePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      defaultMargin, 2 * defaultMargin, defaultMargin, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Parent(
                            child: Txt("Hello Patar Chims!",
                                style: TxtStyle()
                                  ..textColor(Colors.black)
                                  ..fontSize(18)
                                  ..fontWeight(FontWeight.w800)),
                          ),
                          SizedBox(
                            height: 48,
                            width: 48,
                            child: Icon(MdiIcons.text),
                          ),
                        ],
                      ),
                      Parent(
                        child: Txt(
                          "Discover our gear",
                          style: TxtStyle()
                            ..bold()
                            ..fontSize(30),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildContainer("New arrivals", 3, Colors.black),
                            buildContainer("Popular", 0, textColor),
                            buildContainer("Dasypacks", 0, textColor),
                            buildContainer("Out Doors", 0, textColor),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    // Bag
                    Parent(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, defaultMargin, defaultMargin, 0),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  buildBag("Kaken Forest", "\$49.00",
                                      "assets/image/bag1.png"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  buildBag("Moyar Grey", "\$56.00",
                                      "assets/image/bag2.png"),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 400,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: lightGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Kaken Blak",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 14)),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text("\$89.00",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: yellowColor,
                                                          fontSize: 14)),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text("\$49.00",
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 14)),
                                                ],
                                              )
                                            ],
                                          ),
                                          Parent(
                                            child: Txt("Best Seller",
                                                style: TxtStyle()
                                                  ..textColor(yellowColor)
                                                  ..textAlign.center()
                                                  ..padding(all: 10)),
                                            style: ParentStyle()
                                              ..boxShadow(
                                                  blur: 3,
                                                  spread: 1,
                                                  color: Colors.black)
                                              ..height(40)
                                              ..width(100)
                                              ..borderRadius(all: 20)
                                              ..background.color(Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/image/bag3.png",
                                      ),
                                      fit: BoxFit.cover,
                                      width: 250,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      style: ParentStyle()
                        ..height(MediaQuery.of(context).size.height)
                        ..background.color(darkGrey)
                        ..borderRadius(topLeft: 25, topRight: 25),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              child: BottomNavigationBar(
                selectedItemColor: darkGrey,
                backgroundColor: darkGrey,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        MdiIcons.calendar,
                        color: yellowColor,
                      ),
                      backgroundColor: darkGrey,
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        MdiIcons.magnify,
                        color: lightGrey,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        MdiIcons.shoppingOutline,
                        color: lightGrey,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        MdiIcons.accountOutline,
                        color: lightGrey,
                      ),
                      label: "")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Expanded buildBag(String title, String price, String image) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lightGrey, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: whiteColor, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            price,
            style: TextStyle(color: yellowColor, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Image.asset(image))
        ],
      ),
    ));
  }

  Container buildContainer(String text, double height, Color color) {
    return Container(
      width: 100,
      height: 200,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Parent(
              style: ParentStyle()
                ..width(90)
                ..height(height)
                ..background.color(Colors.black)
                ..borderRadius(all: 2))
        ],
      ),
    );
  }
}
