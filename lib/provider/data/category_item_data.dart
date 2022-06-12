  
 
 

// ignore_for_file: prefer_final_fields

import 'package:first_e_commerse_app/provider/model/menu_item_model.dart';
import 'package:flutter/cupertino.dart';

class CategoryItems with ChangeNotifier{
  List<MenuItemModel> _categoryItemData =[
 MenuItemModel(image: "assets/image/category1.jpg", title: "Fashion Man"),
 MenuItemModel(image: "assets/image/category2.jpg", title: "Smart Phone"),
 MenuItemModel(image: "assets/image/category3.jpg", title: "Fashion Girl"),
 MenuItemModel(image: "assets/image/category4.jpg", title: "Laptop"),
];
List<MenuItemModel> get categoryItems{
  return [..._categoryItemData];
}
}

 