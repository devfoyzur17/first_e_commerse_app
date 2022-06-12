 
import 'package:flutter/cupertino.dart';

class RecomendedItemModel with ChangeNotifier{

  final String image;
  final String title;
  final String price;

  RecomendedItemModel({required this.image, required this.title, required this.price});
    
}