
// ignore_for_file: prefer_const_constructors

import 'package:bottom_bar/bottom_bar.dart';
import 'package:first_e_commerse_app/Screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../Screen/category_brand_screen.dart';
import '../Screen/favorite_screen.dart';  

class BottomNavBar extends StatefulWidget {
    BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _currentPage = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          FavoriteScreen(),
          CategoryBrandScreen(),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          

          border: Border.all(color: Colors.white54,width: 1),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: BottomBar(
          
          
          selectedIndex: _currentPage,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() => _currentPage = index);
          },
          items: <BottomBarItem>[
            BottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.blue,
            ),
            BottomBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
              activeColor: Colors.red,
            ),
            BottomBarItem(
              icon: Icon(Icons.shopping_bag),
              title: Text('Category'),
              activeColor: Colors.greenAccent.shade700,
            ),
            BottomBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              title: Text('Cart'),
              activeColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}