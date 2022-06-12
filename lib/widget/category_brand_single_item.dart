// ignore_for_file: prefer_const_constructors

import 'package:first_e_commerse_app/Screen/single_category_brand_screen.dart';
 
import 'package:flutter/material.dart'; 

class CategoryBrandSingleItem extends StatelessWidget {
  final String image;
  final String brandName;
  const CategoryBrandSingleItem({Key? key, required this.image, required this.brandName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingleCategoryBrandScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          
          alignment: Alignment.center,
          children: [
    
            Container(
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.fitWidth,),
                
              ),
            ),
    
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.black.withOpacity(0.6),
              child: Text(brandName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),))
    
    
    
          ],
        ),
      ),
    );
  }
}