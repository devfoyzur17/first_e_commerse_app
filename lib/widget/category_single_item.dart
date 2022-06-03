
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategorySingleItem extends StatelessWidget {
  final String image;
  final String title;
  const CategorySingleItem({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        
        
        alignment: Alignment.center,
        children: [
               Container(
                 
                        height: 150,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                     
                      
                      Positioned(
                        bottom: 15,
                        child: Text(title, style: TextStyle(color:  Colors.white, fontWeight: FontWeight.w500, letterSpacing: 1),))

        ],
      ),
    );
  }
}