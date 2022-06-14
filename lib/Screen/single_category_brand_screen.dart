// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_declarations, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/data/category_brand_data.dart';
import '../provider/data/recomended_item_data.dart';
import '../widget/recomended_single_Item.dart';

class SingleCategoryBrandScreen extends StatefulWidget {
  @override
  _SingleCategoryBrandScreenState createState() =>
      _SingleCategoryBrandScreenState();
  static final routeName = 'single-category-brand-screen';
}

class _SingleCategoryBrandScreenState extends State<SingleCategoryBrandScreen> {
  @override
  Widget build(BuildContext context) {
    final recomendedData = Provider.of<RecomendedItems>(context);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loaderProduct =
        Provider.of<CategoryBrandItems>(context, listen: false)
            .findById(productId);

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder:
              ((BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background:
                      Image.asset(loaderProduct.imageHeader, fit: BoxFit.cover),
                  collapseMode: CollapseMode.parallax,
                ),
                elevation: 0,
                backgroundColor: Colors.white.withOpacity(0),
                leading: Padding(
                  padding: EdgeInsets.only(left: 18, bottom: 12, top: 6),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(2, 5))
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: BackButton(
                      color: Colors.black87,
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
            ];
          }),
          body: Container(
            
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            height: double.infinity,
            child: GridView.builder(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),

                itemCount: loaderProduct.singleCategoryItemList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => RecomendedSingleItem(
                    image: loaderProduct.singleCategoryItemList[index].image,
                    title: loaderProduct.singleCategoryItemList[index].title,
                    price: loaderProduct.singleCategoryItemList[index].price)),
          ),
        ),
      ),
    );
  }
}
