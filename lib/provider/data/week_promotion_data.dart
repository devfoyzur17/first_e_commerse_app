 

// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

import '../model/menu_item_model.dart';

class WeekPromotionItems with ChangeNotifier{

  List<MenuItemModel> _weekPromotionData=[
  MenuItemModel(image: "assets/image/weekpromotion1.png", title: "Discount 10%"),
  MenuItemModel(image: "assets/image/weekpromotion2.png", title: "State From 50\$"),
  MenuItemModel(image: "assets/image/weekpromotion3.png", title: "State From 20\$"),
];

  List<MenuItemModel> get weekPromotionItems{
    return [..._weekPromotionData];
  }

}