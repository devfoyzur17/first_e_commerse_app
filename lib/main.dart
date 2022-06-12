// ignore_for_file: prefer_const_constructors
import 'package:first_e_commerse_app/Screen/single_category_brand_screen.dart';
import 'package:first_e_commerse_app/provider/data/category_brand_data.dart';
import 'package:first_e_commerse_app/provider/data/category_item_data.dart';
import 'package:first_e_commerse_app/provider/data/recomended_item_data.dart';
import 'package:first_e_commerse_app/provider/data/week_promotion_data.dart';
import 'package:first_e_commerse_app/provider/model/category_brand_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/data/menu_item_data.dart';
import 'widget/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> MenuItems()),
        ChangeNotifierProvider(create: (context)=> WeekPromotionItems()),
        ChangeNotifierProvider(create: (context)=> CategoryItems()),
        ChangeNotifierProvider(create: (context)=> RecomendedItems()),
        ChangeNotifierProvider(create: (context)=> CategoryBrandItems()),
         
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My first e commerse app",
        theme: ThemeData(
          fontFamily: 'Quicksand',
          
    
          //shadowColor: Color(0xffff80ff),
          cardTheme: CardTheme(shadowColor: Color(0xffff80ff)),
    
          textTheme: TextTheme(
            titleMedium: TextStyle(
                color: Colors.black,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
        ),
         routes: {

        SingleCategoryBrandScreen.routeName: (context)=> SingleCategoryBrandScreen(),

         },
        home: BottomNavBar(),
      ),
    );
  }
}
