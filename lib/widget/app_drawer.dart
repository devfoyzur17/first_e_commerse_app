// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

 
import 'package:first_e_commerse_app/Screen/home_screen.dart';
import 'package:flutter/material.dart';
final Color drawerElementColor = Color(0xff8000ff);

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 20,
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(HomeScreen());
                  },
                  icon: Icon(Icons.close)),
              decoration: BoxDecoration(color: Colors.white10),
            ),
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white10),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/image/profile.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text(
                  "MD: Foyzur Rahaman",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                accountEmail: Text(
                  "foyzur17@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
      
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.account_circle_outlined, color: drawerElementColor),
                  title: Text("My Profile"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.language, color: drawerElementColor),
                  title: Text("Language"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.category_outlined, color: drawerElementColor),
                  title: Text("All Categories"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.online_prediction_rounded, color: drawerElementColor),
                  title: Text("My Order"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.settings_outlined, color: drawerElementColor),
                  title: Text("Setting"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.description_outlined, color: drawerElementColor,),
                  title: Text("My Profile"),
                ),
      
                 Container(
                   padding: EdgeInsets.only(left: 20, top: 20),
                   child: OutlinedButton(
                     
                     style: ElevatedButton.styleFrom(
                       textStyle: TextStyle(color: drawerElementColor),
                       
                       side: BorderSide(
                         color:  drawerElementColor
                       )
                     ),
                     
                     onPressed: (){}, child: Text("Log Out", style: TextStyle(color: drawerElementColor, fontWeight: FontWeight.bold))),
                 )
          ],
        ),
      ),
    );
  }
}
