// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api
 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../provider/data/recomended_item_data.dart';
import '../widget/recomended_single_Item.dart';

class SingleCategoryBrandScreen extends StatefulWidget {
  @override
  _SingleCategoryBrandScreenState createState() =>
      _SingleCategoryBrandScreenState();
}

class _SingleCategoryBrandScreenState extends State<SingleCategoryBrandScreen> {
 
  @override
  Widget build(BuildContext context) {
           final recomendedData = Provider.of<RecomendedItems>(context);


    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder:
              ((BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                      "https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",fit: BoxFit.cover),
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
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: double.infinity,
        child: GridView.builder(
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),

            itemCount: recomendedData.recomendedItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) => RecomendedSingleItem(
                image: recomendedData.recomendedItems[index].image,
                title: recomendedData.recomendedItems[index].title,
                price: recomendedData.recomendedItems[index].price)),
      ),
        ),
      ),
    );
  }
}