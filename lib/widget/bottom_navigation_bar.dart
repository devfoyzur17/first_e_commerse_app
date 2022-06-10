// ignore_for_file: prefer_const_constructors

import 'package:first_e_commerse_app/Screen/cart_screen.dart';
import 'package:first_e_commerse_app/Screen/category_brand_screen.dart';
import 'package:first_e_commerse_app/Screen/favorite_screen.dart';
import 'package:first_e_commerse_app/Screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<IconData> navbarIcons = [
    Icons.home,
    Icons.favorite,
    Icons.shop_two_sharp,
    Icons.shopping_cart_outlined
  ];
  List widgets = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    CategoryBrandScreen(),
    CartScreen()
  ];

  List<String> bottomNavigationName = ['Home', 'Favorite', 'Category', 'Cart'];

  List<Color> color = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.red,
  ];

  List<Color> colorShade = [
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.green.shade100,
    Colors.red.shade100,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 12, left: 12, right: 12, top: 6),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navbarIcons.map(
            (e) {
              int i = navbarIcons.indexOf(e);
              return AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(8),
                height: 40,
                decoration: BoxDecoration(
                  color: i == selectedIndex ? colorShade[i] : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        child: Icon(
                          e,
                          size: 25,
                          color: i == selectedIndex
                              ? color[i]
                              : Colors.blueGrey[300],
                        ),
                        onTap: () {
                          selectedIndex = i;
                          setState(() {});
                        }),
                    (i == selectedIndex)
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(bottomNavigationName[i],
                                style: TextStyle(
                                    color: color[i],
                                    fontWeight: FontWeight.bold)))
                        : Container(),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
