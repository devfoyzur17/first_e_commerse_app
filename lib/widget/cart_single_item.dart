// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class CartSingleItem extends StatefulWidget {
  const CartSingleItem({Key? key}) : super(key: key);

  @override
  State<CartSingleItem> createState() => _CartSingleItemState();
}

class _CartSingleItemState extends State<CartSingleItem> {
  int cart_item = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black,
      child: ListTile(
        contentPadding: EdgeInsets.all(20),
        leading: Image.asset("assets/image/cart_item.jpg"),
        title: Text("Samsung Galaxy Note 11 ppro"),
        subtitle: Text(
          "\৳ 120000.00",
          style: TextStyle(color: Colors.red),
        ),
        trailing: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        content:
                            StatefulBuilder(builder: (context, setState) {
                              return  Column(
                                mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if(cart_item >=0)
                        {
                          cart_item++;
                        }
                      });
                    }, icon: Icon(Icons.add_box_rounded,size: 35,color: Colors.grey,)),
               Text(cart_item.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
               IconButton(onPressed: (){
                 setState(() {
                    if(cart_item >0)
                        {
                          cart_item--;
                        }
                 });
               }, icon: Icon(Icons.do_disturb_on_rounded, size: 35,color: Colors.grey,)),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                    primary: Colors.red
                 ),
                 onPressed: (){}, child: Text("Add to cart"))
                 ],
               );
                            }),
                      ));
            },
            icon: Icon(
              Icons.add_box,
              color: Colors.red,
              size: 35,
            )),
      ),
    );
  }
}
