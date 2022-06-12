// ignore_for_file: prefer_const_constructors

import 'package:first_e_commerse_app/widget/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../provider/data/recomended_item_data.dart';
import '../widget/recomended_single_Item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recomendedData = Provider.of<RecomendedItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Center(
            child: Text(
          "Favorite",
          style: TextStyle(color: Colors.black),
        )),
        leading: Builder(builder: (context)=> IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.notes_outlined))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
              ))
        ],
      ),
      // ignore: avoid_unnecessary_containers
      drawer: AppDrawer(),
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
    );
  }
}
