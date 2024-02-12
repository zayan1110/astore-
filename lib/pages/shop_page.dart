import 'package:astore_app/compants/models/shop.dart';
import 'package:astore_app/compants/drawer_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../compants/product_tile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Shop Page  ',
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/CartPage'),
                icon: Icon(Icons.add_shopping_cart_outlined))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: DrawerShop(),
        body: ListView(
          children: [
            Center(
                child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(25),
                itemBuilder: (context, index) {
                  final Product = products[index];
                  return MyProductTile(
                    product: Product,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
