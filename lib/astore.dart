import 'package:astore_app/pages/Login_page.dart';
import 'package:astore_app/pages/cart_page.dart';
import 'package:astore_app/pages/shop_page.dart';
import 'package:astore_app/thems/light_mode.dart';
import 'package:flutter/material.dart';

class astore extends StatelessWidget {
  const astore({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/ShopPage': (context) => ShopPage(),
        '/CartPage': (context) => CartPage(),
      },
    );
  }
}
