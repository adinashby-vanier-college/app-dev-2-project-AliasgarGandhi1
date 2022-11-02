import 'package:flutter/material.dart';

void main() {
  runApp(Wishlist());
}

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
          body: SafeArea(
              child: Column(

              ))
      ),
    );
  }
}