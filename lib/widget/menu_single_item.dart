// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 

class MenuSingleItem extends StatefulWidget {
  final String menuIcon;
  final String menuTitle;
  const MenuSingleItem({Key? key, required this.menuIcon, required this.menuTitle}) : super(key: key);

  @override
  State<MenuSingleItem> createState() => _MenuSingleItemState();
}

class _MenuSingleItemState extends State<MenuSingleItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      
      height: 75,
      width: 78,
      child: Container(
        padding: EdgeInsets.all(7),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.menuIcon,height: 30,fit: BoxFit.fitHeight,),
            Text(widget.menuTitle,textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
          ],
        ),
        
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(60),
           color: Color(0xfff2f2f2)

        ),

      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff0066ff),width: 1),
        borderRadius: BorderRadius.circular(60)
      ),
    );
    
  }
}