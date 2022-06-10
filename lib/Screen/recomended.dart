// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import '../data/recomended_item_data.dart';
import '../widget/recomended_single_Item.dart'; 

class RecomendedScreen extends StatelessWidget {
  const RecomendedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Center(
            child: Text(
          "Recomended",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
           Container(
        margin: EdgeInsets.symmetric(horizontal: 6,vertical: 6),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/image_icon/filter.png",color: Colors.black87,),
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
      )
        ],
      ),
      body:  GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                   
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
    );
  }
}
