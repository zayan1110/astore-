

import 'package:astore_app/compants/models/shop.dart';
import 'package:astore_app/pages/cart_page.dart';
import 'package:astore_app/pages/page1.dart';
import 'package:astore_app/pages/shop_page.dart';
import 'package:astore_app/thems/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
    child: const MyWidget(),
    ),
  );
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page1(),
      theme: lightMode,

routes: {
'/Page1':(context) => page1(),
'/Shop Page':(context) => ShopPage(),
'/Cart_Page':(context) => Cart_Page(),


},

    );
  }
}