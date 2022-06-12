import 'package:first_e_commerse_app/provider/model/recomended_data_model.dart';
import 'package:flutter/cupertino.dart';

class CategoryBrandModel with ChangeNotifier {
  final String id;
  final String image;
  final String imageHeader;
  final String brandName;
  final List<RecomendedItemModel> singleCategoryItemList;

  CategoryBrandModel(
      {required this.id,
      required this.imageHeader,
      required this.image,
      required this.brandName,
      required this.singleCategoryItemList
      });
}
