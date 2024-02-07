import 'package:astore_app/compants/My_Button.dart';
import 'package:flutter/material.dart';




class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
body: Center(
  child:   Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  
  Icon(Icons.shopping_bag,
  size: 72,
  color : Theme.of(context).colorScheme.inversePrimary,
  ),
  SizedBox(height: 25,),

Text('Minimal Shop',
style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 24,
),

),


   SizedBox(height: 10,),

Text('premium Quality products',
style: TextStyle(
   color : Theme.of(context).colorScheme.inversePrimary,
),),
   SizedBox(height: 25,),

  
  My_Button( onTap: ()=> Navigator.pushNamed(context, '/Shop Page') ,
  child:Icon(Icons.arrow_forward) ,
  )
  
  ],
  
  
  
  ),
),
    );
  }
}