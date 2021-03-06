  

// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

import '../model/recomended_data_model.dart';

class RecomendedItems with ChangeNotifier{
  List<RecomendedItemModel> _recomendedItemData =[
  RecomendedItemModel(image: "assets/image/recomended1.png", title: "Lather Ledis Bag jksdh sudhf usdf sjdf dhusfa usdf sudhyfl      sae", price: "\$299"),
  RecomendedItemModel(image: "assets/image/recomended2.png", title: "Nike Air Max 270 ", price: "\$780"),
  RecomendedItemModel(image: "assets/image/recomended3.png", title: "Jens Sirt", price: "\$450"),
  RecomendedItemModel(image: "assets/image/recomended4.png", title: "Gold nekles women", price: "\$30000"),
  RecomendedItemModel(image: "assets/image/recomended5.png", title: "Men Watch ", price: "\$1200"),
  RecomendedItemModel(image: "assets/image/recomended6.png", title: "Mens Panjabi Easy", price: "\$1800"),
  RecomendedItemModel(image: "assets/image/recomended7.png", title: "Wairless Mouse", price: "\$999"),
  RecomendedItemModel(image: "assets/image/recomended8.png", title: "Apple Laptop", price: "\$250000"),
  RecomendedItemModel(image: "assets/image/recomended9.png", title: "Iphone 13 pro max", price: "\$12000"),
  RecomendedItemModel(image: "assets/image/recomended10.png", title: "KTM Bike Indian", price: "\$42000"),
  RecomendedItemModel(image: "assets/image/recomended11.png", title: "Gaming chair", price: "\$5500"),
  RecomendedItemModel(image: "assets/image/recomended12.png", title: "DRLS Camera Nickon", price: "\$80000"),
];

List<RecomendedItemModel> get recomendedItems{
  return [..._recomendedItemData];
}

List<RecomendedItemModel> get favouriteItems{
  return _recomendedItemData.where((element) => element.isFavourite).toList();
}


}