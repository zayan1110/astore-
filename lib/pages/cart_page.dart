
import 'package:astore_app/compants/My_Button.dart';
import 'package:astore_app/compants/models/product.dart';
import 'package:astore_app/compants/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});
void removeItemFromCart(BuildContext context,Product product){
showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Remove This Item From Your Cart?"),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            context.read<Shop>().removeFromCart(product);
          },
          child: Text("Yes"),
        ),
      ],
    ),
  );

}


void payButtonPres(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
 
      actions: [
        AlertDialog(
          content: Text("User Wants to pay! Connect This App to your payment backend"),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {



final cart = context . watch<Shop>().Cart;

    return Scaffold(
   appBar:AppBar(
  title: Center(
    child: Text(
        'Cart Page           ',
    ),
    ),
  backgroundColor: Colors.transparent,
  elevation: 0,
  foregroundColor: Theme.of(context).colorScheme.inversePrimary,
  
),
  backgroundColor:Theme.of(context).colorScheme.background,


  body: Column(
children: [
Expanded(child:cart.isEmpty?Center(child: Text("Your cart is empty..")) :ListView.builder(
  itemCount: cart.length,
  itemBuilder:(context, index) {
    
   final item =cart[index];
   return ListTile(
title: Text(item.name),
subtitle: Text(item.price.toStringAsFixed(2)),
trailing: IconButton(
  icon: Icon(Icons.remove),

  onPressed: () =>removeItemFromCart(context, item),
  ),

   );
  }, 
),
),
Padding(
  padding:  EdgeInsets.all(50),
  child:   My_Button(
  
    onTap: ()=>payButtonPres(context),
  
    child: Text("PAY NOW"),
  
  ),
)


],
    
  ),

    );
  }
}