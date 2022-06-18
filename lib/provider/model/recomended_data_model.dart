import 'package:flutter/cupertino.dart';

class RecomendedItemModel with ChangeNotifier {
  final String image;
  final String title;
  final String price;
  bool isFavourite;

  RecomendedItemModel(
      {required this.image,
      required this.title,
      required this.price,
      this.isFavourite = false});


      void toggoleFavouriteStatus(){
        
        isFavourite =! isFavourite;
         notifyListeners();
      }
}
