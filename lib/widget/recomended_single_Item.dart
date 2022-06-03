// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecomendedSingleItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const RecomendedSingleItem(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),

      child: //     start main collumn
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
          //Start Image Container
          child: Container(
            height: 130,
            width: double.maxFinite,
            alignment: Alignment.center,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              color: Color(0xffe6e6e6),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          //end image container
          onTap: () {
            //start show dialogue
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Image.asset(
                      image,
                    ),
                  );

                  //end show dialouge
                });
          },
        ),

        //start text Widgets

        Text(
          title,
          style: TextStyle(fontSize: 13),
        ),

        //start first row
        Row(
          children: [
            Expanded(
                flex: 6,
                child: Text(
                  price,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 2,
                child: IconButton(
                  icon: const ImageIcon(AssetImage("assets/image/heart.png"),
                      size: 45, color: Colors.red),
                  onPressed: () {},
                ))
          ],
        ), ////end first row

        //start second Row
        Row(
          children: [
            Expanded(
              flex: 5,
              child: RatingBar.builder(
                unratedColor: Theme.of(context).scaffoldBackgroundColor,
                itemSize: 15,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                wrapAlignment: WrapAlignment.start,
                initialRating: 5,
                itemPadding: const EdgeInsets.symmetric(vertical: 1.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            Expanded(
                flex: 3,
                child: Text(
                  "932 Sale",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ))
          ],
        ),

        //end second row
      ]),
      //end main column
    );
  }
}
