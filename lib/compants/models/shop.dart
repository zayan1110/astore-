import 'package:astore_app/compants/models/product.dart';
import 'package:flutter/widgets.dart';

class Shop extends ChangeNotifier {
  final List<Product> _Shop = [
    Product(
      name: "ًًWatch",
      price: 150.55,
      descripition: "Item descripition.. more descripition.....",
      imagePath:
          'https://th.bing.com/th/id/R.ef2b531a9dc81b72aa3036dcc9e11c19?rik=%2fdIpsaHadtZrNw&pid=ImgRaw&r=0',
    ),

    // Product 2
    Product(
      name: "BOOts",
      price: 99.99,
      descripition: "Item description",
      imagePath:
          'https://content.backcountry.com/images/items/1200/KEN/KEN00LR/BK_D1.jpg',
    ),

    // Product 3
    Product(
      name: "shirt",
      price: 60.0,
      descripition: "Item description",
      imagePath:
          'https://oldnavy.gap.com/webcontent/0050/590/576/cn50590576.jpg',
    ),

    // Product 4
    Product(
      name: "glasses",
      price: 50.5,
      descripition: "Item description",
      imagePath:
          'https://i.pinimg.com/originals/5c/ae/b1/5caeb16f96e2555267862957c5bfe0c7.jpg',
    ),
    Product(
      name: "coach",
      price: 500.0,
      descripition: "Item description",
      imagePath:
          'https://i.pinimg.com/originals/df/0f/18/df0f18d9020e9e75956df3ab1d696621.jpg',
    ),
  ];

  List<Product> _Cart = [];

  List<Product> get shop => _Shop;

  List<Product> get Cart => _Cart;

  void addToCart(Product item) {
    _Cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _Cart.remove(item);
    notifyListeners();
  }
}
