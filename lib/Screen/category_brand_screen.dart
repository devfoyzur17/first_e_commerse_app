
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
 
import 'package:first_e_commerse_app/widget/app_drawer.dart';
import 'package:first_e_commerse_app/widget/category_brand_single_item.dart';
import 'package:flutter/material.dart';

import '../provider/data/category_brand_data.dart';
 

class CategoryBrandScreen extends StatelessWidget {
  const CategoryBrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        leading: Builder(builder: (context)=> IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.notes_outlined))),
        title: Center(
            child: Text(
          "Category Brand",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
      drawer: AppDrawer(),
      
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 800,
        child: ListView.builder(
          itemCount: categoryBrandData.length,
          itemBuilder: ((context, index) =>  CategoryBrandSingleItem(image: categoryBrandData[index].image, brandName: categoryBrandData[index].brandName)),
    ),
      ),
      );
    
  }
}