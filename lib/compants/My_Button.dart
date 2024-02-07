import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  const My_Button({
    super.key,
   this.onTap, 
   this.child
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
     child: Container(
      
decoration: BoxDecoration(
    color:Colors.white,
borderRadius: BorderRadius.circular(12),
),
padding: EdgeInsets.all(25),
       child: child,

     ),
    );
  }
}
