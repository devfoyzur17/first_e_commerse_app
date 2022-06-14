// ignore_for_file: unused_field, prefer_final_fields

import 'package:first_e_commerse_app/provider/model/recomended_data_model.dart';
import 'package:flutter/foundation.dart';

import '../model/category_brand_model.dart';

class CategoryBrandItems with ChangeNotifier {
  List<CategoryBrandModel> _categoryBrandData = [
    CategoryBrandModel(
      image: "assets/brand/nike.jpg",
      brandName: "Nike Sport",
      id: 'cb1',
       singleCategoryItemList: [
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike1.png",
            title:
                "Lather Ledis Bag jksdh sudhf usdf sjdf dhusfa usdf sudhyfl      sae",
            price: "\$299"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike2.png",
            title: "Nike Air Max 270 ",
            price: "\$780"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike3.png",
            title: "Jens Sirt",
            price: "\$450"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike4.png",
            title: "Gold nekles women",
            price: "\$30000"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike5.png",
            title: "Men Watch ",
            price: "\$1200"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike6.png",
            title: "Mens Panjabi Easy",
            price: "\$1800"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike7.png",
            title: "Wairless Mouse",
            price: "\$999"),
        RecomendedItemModel(
            image: "assets/image/nike_sport/nike8.png",
            title: "Wairless Mouse",
            price: "\$999"),
      ], imageHeader: "assets/image/nike_sport/nikeheader.jpg",
      
    ),
    CategoryBrandModel(
      imageHeader: "assets/image/sony/sonyheader.jpg",
      image: "assets/brand/sony.jpg",
      brandName: "Sony Tech",
      id: 'cb2',
      singleCategoryItemList: [
        RecomendedItemModel(
            image: "assets/image/sony/sony1.png",
            title:
                "Sony Mobile PHB78 ",
            price: "\$150"),
        RecomendedItemModel(
            image: "assets/image/sony/sony2.png",
            title: "Camera HGS93",
            price: "\$780"),
        RecomendedItemModel(
            image: "assets/image/sony/sony3.png",
            title: "Watch Digital",
            price: "\$450"),
        RecomendedItemModel(
            image: "assets/image/sony/sony4.png",
            title: "Wifi Router",
            price: "\$30000"),
        RecomendedItemModel(
            image: "assets/image/sony/sony5.png",
            title: "AirPod Headphone ",
            price: "\$1200"),
        RecomendedItemModel(
           image: "assets/image/sony/sony6.png",
            title: "Smart Phone J27",
            price: "\$1800"),
         
      ],
      
    ),
    CategoryBrandModel(
      imageHeader: "assets/image/samsung/samsungheader.jpg",
      image: "assets/brand/samsung.jpg",
      brandName: "Samsung",
      id: 'cb3',
      singleCategoryItemList: [
        RecomendedItemModel(
            image: "assets/image/samsung/samsung1.png",
            title:
                "Lather Ledis Bag jksdh sudhf usdf sjdf dhusfa usdf sudhyfl      sae",
            price: "\$299"),
        RecomendedItemModel(
            image: "assets/image/samsung/samsung2.png",
            title: "Nike Air Max 270 ",
            price: "\$780"),
        RecomendedItemModel(
            image: "assets/image/samsung/samsung3.png",
            title: "Jens Sirt",
            price: "\$450"),
        RecomendedItemModel(
            image: "assets/image/samsung/samsung4.png",
            title: "Gold nekles women",
            price: "\$30000"),
        RecomendedItemModel(
            image: "assets/image/samsung/samsung5.png",
            title: "Men Watch ",
            price: "\$1200"),
        RecomendedItemModel(
            image: "assets/image/samsung/samsung6.png",
            title: "Mens Panjabi Easy",
            price: "\$1800"),
        
      ],
      
    ),
    CategoryBrandModel(
      imageHeader: "assets/image/suprime/suprimeheader.jpg",
      image: "assets/brand/suprim.jpg",
      brandName: "Suprime",
      id: 'cb4',
      singleCategoryItemList: [
        RecomendedItemModel(
            image: "assets/image/suprime/suprime1.png",
            title:
                "Lather Ledis Bag jksdh sudhf usdf sjdf dhusfa usdf sudhyfl      sae",
            price: "\$299"),
        RecomendedItemModel(
            image: "assets/image/suprime/suprime2.png",
            title: "Nike Air Max 270 ",
            price: "\$780"),
        RecomendedItemModel(
            image: "assets/image/suprime/suprime3.png",
            title: "Jens Sirt",
            price: "\$450"),
        RecomendedItemModel(
            image: "assets/image/suprime/suprime4.png",
            title: "Gold nekles women",
            price: "\$30000"),
        RecomendedItemModel(
            image: "assets/image/suprime/suprime5.png",
            title: "Men Watch ",
            price: "\$1200"),
        RecomendedItemModel(
            image: "assets/image/suprime/suprime6.png",
            title: "Mens Panjabi Easy",
            price: "\$1800"),
         
      ],
      
    ),
    CategoryBrandModel(
      imageHeader: "assets/image/prada/pradaheader.jpg",
      image: "assets/brand/prada.jpg",
      brandName: "Prada",
      id: 'cb5',
      singleCategoryItemList: [
        RecomendedItemModel(
            image: "assets/image/prada/prada1.png",
            title:
                "Lather Ledis Bag jksdh sudhf usdf sjdf dhusfa usdf sudhyfl      sae",
            price: "\$299"),
        RecomendedItemModel(
            image: "assets/image/prada/prada2.png",
            title: "Nike Air Max 270 ",
            price: "\$780"),
        RecomendedItemModel(
            image: "assets/image/prada/prada3.png",
            title: "Jens Sirt",
            price: "\$450"),
        RecomendedItemModel(
            image: "assets/image/prada/parada4.png",
            title: "Gold nekles women",
            price: "\$30000"),
        RecomendedItemModel(
            image: "assets/image/prada/parada5.png",
            title: "Men Watch ",
            price: "\$1200"),
        RecomendedItemModel(
            image: "assets/image/prada/parada6.png",
            title: "Mens Panjabi Easy",
            price: "\$1800"),
      ],
      
    ),
  ];
  List<CategoryBrandModel> get categoryBrandItems {
    return [..._categoryBrandData];
  }
   CategoryBrandModel findById(var id) {
    return _categoryBrandData.firstWhere((element) => element.id == id);
  }
}
