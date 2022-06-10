// ignore_for_file: prefer_const_constructors

import 'package:first_e_commerse_app/data/menu_item_data.dart';
import 'package:first_e_commerse_app/widget/menu_single_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          title: Center(
              child: Text(
            "Favorite",
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                ))
          ],
        ),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: menuItemData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                childAspectRatio: 1 / 1.5,
                mainAxisExtent: 100,
                crossAxisSpacing: 20,
                crossAxisCount: 4),
            itemBuilder: (context, index) => MenuSingleItem(
                menuIcon: menuItemData[index].image,
                menuTitle: menuItemData[index].title)));
  }
}
