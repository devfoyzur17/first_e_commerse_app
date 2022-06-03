import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CategoryHeaderTitle(String title){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      TextButton(onPressed: (){}, child: Text("View all >>"))
    ],
  );
}