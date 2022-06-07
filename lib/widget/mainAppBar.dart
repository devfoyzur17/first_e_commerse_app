
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last
 
import 'package:flutter/material.dart';

MainAppBar(String title, String subTitle) {
  return AppBar(
    backgroundColor: Colors.white10,
    iconTheme: IconThemeData(color: Colors.black54),
    elevation: 0,
    title: Center(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 14, color: Colors.red),
          )
        ],
      ),
    ),
    leading: Container(
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 6),
      child: Builder(builder: (context)=> IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
      }, icon: Icon(Icons.notes_rounded))),
      decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15))
    ),
    
    actions: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 6,vertical: 6),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined),
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
      )
    ],
    
  );
  
}
