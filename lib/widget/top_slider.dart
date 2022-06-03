 // ignore_for_file: sort_child_properties_last

 import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:flutter/material.dart'; 
 
class TopSlider extends StatelessWidget {
  const TopSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
 
      child: ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/image/a.png',
                  fit: BoxFit.fill,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/image/b.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/image/c.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        
    );
    
    
  }
}