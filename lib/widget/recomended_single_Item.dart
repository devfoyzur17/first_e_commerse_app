// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:first_e_commerse_app/provider/data/recomended_item_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../provider/model/recomended_data_model.dart';

class RecomendedSingleItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  RecomendedSingleItem(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);
    
        

  @override
  Widget build(BuildContext context) {

      final _recomendedItem = Provider.of<RecomendedItemModel>( context, listen: false);

    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),

      child: //     start main collumn
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Expanded(
              flex: 5,
              child: InkWell(
                //Start Image Container
                child: Container(
                  height: 130,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      image,
                      fit: BoxFit.scaleDown,
                    ),
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
            ),

            //start text Widgets

            Expanded(
              flex: 1,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),

            //start first row
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
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
                      child: Consumer<RecomendedItemModel>(
                          builder: (context, value, child) {
                        return IconButton(
                          icon: Icon(
                           value.isFavourite?Icons.favorite: Icons.favorite_outline,
                            size: 20,
                            color:value.isFavourite?Colors.blue:Colors.grey,
                          ),
                          onPressed: () {
                            value.toggoleFavouriteStatus();
                          },
                        );
                      }))
                ],
              ),
            ), ////end first row

            //start second Row
            Expanded(
              flex: 1,
              child: Row(
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
            ),

            //end second row
          ]),
      //end main column
    );
  }
}
