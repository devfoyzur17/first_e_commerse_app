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
        elevation: 0,
      ),

      body: GridView.builder(
        
        
        padding: EdgeInsets.symmetric(horizontal: 5),
      itemCount: menuItemData.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 20,
        childAspectRatio: 1/2,

            maxCrossAxisExtent: 100, mainAxisExtent: 100, crossAxisSpacing: 0),
        itemBuilder: (context, index) =>MenuSingleItem(menuIcon: menuItemData[index].image, menuTitle: menuItemData[index].title)
            )
    );
  }
}
