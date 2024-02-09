

import 'package:astore_app/astore.dart';
import 'package:astore_app/compants/models/shop.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
    child:  astore(),
    ),
  );
}
