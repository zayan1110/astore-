import 'package:astore_app/compants/my_list_tile.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
backgroundColor : Theme.of(context).colorScheme.background,
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
Column(children: [
  
 DrawerHeader( 
  child: Center(
    child: Icon(Icons.shopping_bag,
    size: 72,
    color : Theme.of(context).colorScheme.inversePrimary,
    ),
  ),
),
SizedBox(
  height: 25,
),
MyListTile(
  
  text: "Shop",
   icon: Icons.home, 
onTap:() => Navigator.pop(context),
),
MyListTile(
  
  text: "Cart",
   icon: Icons.shopping_cart, 
onTap:() {

   Navigator.pop(context);

   
 Navigator.pushNamed(context, '/Cart_Page' );
},
),
],),

Padding(
  padding:  EdgeInsets.only(bottom: 25),
  child:   MyListTile(
  
    
  
    text: "Exit",
  
     icon: Icons.logout, 
  
  onTap:() =>Navigator.pushNamedAndRemoveUntil(context, '/Page1', (route) => false)
  
  ),
)
  ],
),

    );
  }
}