import 'package:astore_app/compants/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/shop.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  MyProductTile({super.key, required this.product});

void addToCart(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Add This Item to Your Cart?"),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            context.read<Shop>().addToCart(product);
          },
          child: Text("Yes"),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromARGB(141, 255, 255, 255)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  child: Image.network(product.imagePath),
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                product.descripition,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$'+product.price.toStringAsFixed(2)),
              Container(
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(12),
  ),

                child: IconButton(
                  icon:Icon (Icons.add),
                  onPressed:() =>addToCart(context),
                   ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
