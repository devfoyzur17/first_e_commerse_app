// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 

class WeekPromotionSingleItem extends StatefulWidget {
  final String image;
  final String productTitle;
  const WeekPromotionSingleItem({Key? key, required this.image, required this.productTitle}) : super(key: key);

  @override
  State<WeekPromotionSingleItem> createState() => _WeekPromotionSingleItemState();
}

class _WeekPromotionSingleItemState extends State<WeekPromotionSingleItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(right: 20),
     
      height: 160,
      width: 135,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(widget.image,height: 80,fit: BoxFit.fitHeight,),
          Text(widget.productTitle,textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Color(0xff0066ff), fontWeight: FontWeight.bold),)
        ],
      ),
      
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(40),
         color: Color(0xfff2f2f2)

      ),

    );
    
  }
}