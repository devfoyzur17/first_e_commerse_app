// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

import '../model/menu_item_model.dart';

class MenuItems with ChangeNotifier {
  List<MenuItemModel> _menuItemData = [
    MenuItemModel(image: "assets/image_icon/menu1.png", title: "Camera"),
    MenuItemModel(image: "assets/image_icon/menu2.png", title: "Food"),
    MenuItemModel(image: "assets/image_icon/menu3.png", title: "Hand Phone"),
    MenuItemModel(image: "assets/image_icon/menu4.png", title: "Gamming"),
    MenuItemModel(image: "assets/image_icon/menu5.png", title: "Laptop"),
    MenuItemModel(image: "assets/image_icon/menu6.png", title: "Fashion"),
    MenuItemModel(image: "assets/image_icon/menu7.png", title: "Health Care"),
    MenuItemModel(image: "assets/image_icon/menu8.png", title: "Equipment"),
    MenuItemModel(image: "assets/image_icon/menu9.png", title: "Otomotif"),
    MenuItemModel(image: "assets/image_icon/menu10.png", title: "Sport"),
    MenuItemModel(image: "assets/image_icon/menu11.png", title: "Ticket Cinema"),
    MenuItemModel(image: "assets/image_icon/menu12.png", title: "Book"),
  ];

  List<MenuItemModel> get menuItemData {

    return [..._menuItemData];

    
  }

    
  




}
