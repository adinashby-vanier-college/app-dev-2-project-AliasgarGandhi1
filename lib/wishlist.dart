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
                  children: [
                    Container(
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
                          Text(
                            "Wishlist",
                            style: TextStyle(
                              fontSize: 20,
                              height: 2,
                              //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                              color: Colors.black,
                              //font color
                              letterSpacing: 4,
                              //letter spacing
                              fontWeight: FontWeight.bold,
                              // decorationThickness: 5, //decoration 'underline' thickness
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.home))
                        ],
                      ),
                    )
                  ]
              ),
            ))
    );
  }
}