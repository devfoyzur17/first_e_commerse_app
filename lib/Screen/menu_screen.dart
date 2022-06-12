// ignore_for_file: prefer_const_constructors
 
import 'package:first_e_commerse_app/widget/menu_single_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data/menu_item_data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuData =  Provider.of<MenuItems>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          title: Center(
              child: Text(
            "Menu",
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
            itemCount: menuData.menuItemData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                childAspectRatio: 1 / 1.5,
                mainAxisExtent: 100,
                crossAxisSpacing: 15,
                crossAxisCount: 4),
            itemBuilder: (context, index) => MenuSingleItem(
                menuIcon: menuData.menuItemData[index].image,
                menuTitle: menuData.menuItemData[index].title,)));
  }
}
