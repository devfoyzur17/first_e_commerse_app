// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_escapes

import 'package:first_e_commerse_app/widget/cart_single_item.dart';
import 'package:flutter/material.dart';

import '../widget/app_drawer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Center(
            child: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        )),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.notes_outlined))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
              ))
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Flexible(
            flex: 7,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => CartSingleItem()),
               
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  //todo this is subtotal amount row
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "subtotal:",
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text("\৳ 2,890.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ))
                      ],
                    ),
                  ),
                  //todo this is taxes amount row
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Taxes:",
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text("\৳ 40.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ))
                      ],
                    ),
                  ),

                  // todo this is Total amount row
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount:",
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text("\৳ 2,890.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ))
                      ],
                    ),
                  ),

                  //todo This is pay now elevated button
                  Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Text("Pay Now")),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
