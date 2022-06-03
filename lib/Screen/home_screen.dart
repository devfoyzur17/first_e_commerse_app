// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:first_e_commerse_app/data/menu_item_data.dart';
import 'package:first_e_commerse_app/widget/mainAppBar.dart';
import 'package:first_e_commerse_app/widget/menu_single_item.dart';
import 'package:first_e_commerse_app/widget/top_slider.dart';
import 'package:flutter/material.dart';
import '../data/category_item_data.dart';
import '../data/recomended_item_data.dart';
import '../data/week_promotion_data.dart';
import '../widget/category_header.dart';
import '../widget/category_single_item.dart';
import '../widget/recomended_single_Item.dart';
import '../widget/week_promotion_single_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar("Delivery to  ˅", "lekki phase 1, Estate"),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            //todo This is top slider

            TopSlider(),

            //todo This is menu section
            CategoryHeaderTitle("Menu"),

            //todo This is menu product section
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: menuItemData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MenuSingleItem(
                        menuIcon: menuItemData[index].image,
                        menuTitle: menuItemData[index].title,
                      )),
            ),

            SizedBox(
              height: 20,
            ),

            //todo This is Week promotion title

            Text(
              "Week Promotion",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),

            //todo This is Week Promotion Item

            Container(
                height: 160,
                child: ListView.builder(
                    itemCount: weekPromotionData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => WeekPromotionSingleItem(
                        image: weekPromotionData[index].image,
                        productTitle: weekPromotionData[index].title))),

            SizedBox(
              height: 20,
            ),

            //todo this is middle baner

            InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/image/shoue.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Column(
                      children: [
                        Text(
                          "Super Flash Sale",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "50% Off",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Column(
                      children: [
                        Text(
                          "End Sale In:",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              child: Text("08",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              child: Text("34",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              child: Text(
                                "52",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            //todo This is category title

            Text(
              "Category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),

            //todo This is Category Item section

            Container(
                height: 150,
                child: ListView.builder(
                    itemCount: categoryItemData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CategorySingleItem(
                        image: categoryItemData[index].image,
                        title: categoryItemData[index].title))),

            CategoryHeaderTitle("Recomended"),

            //todo This is Recomended Item section

            Container(
              height: 500,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
               
                  itemCount: recomendedItemData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => RecomendedSingleItem(
                      image: recomendedItemData[index].image,
                      title: recomendedItemData[index].title,
                      price: recomendedItemData[index].price)),
            )
          ],
        ),
      ),
    );
  }
}
