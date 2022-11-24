import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/splash_screen.dart';

import 'checkout.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: Checkout(),
    );
  }
}
