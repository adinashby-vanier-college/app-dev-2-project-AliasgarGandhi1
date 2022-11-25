import 'package:flutter/material.dart';
import 'package:mtl_chassures/cart.dart';
import 'package:mtl_chassures/checkout.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';
import 'package:mtl_chassures/wishlist.dart';

import 'home.dart';

void main() {
  runApp(Product());
}

class Product extends StatelessWidget {
  String imgPath="Images/sneakers2.jpg";
  String productName="NIKE Sneakers";
  String price="\$ 89.99 cad";
  String category="Running Shoes";
  String  color ="Blue - Orange Tint";
  String size="11";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: Color(0xFFF1EDEC),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1EDEC),
        title: Text('Product'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        centerTitle: true,
        leading: Builder(
          builder: (context)=> GestureDetector(
          onTap: () => {
            Navigator.pop(context,MaterialPageRoute(
              builder: (context) => (Home()),
            ),),
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Builder(
              builder: (context) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => (Wishlist()),
                  ),
                ),
                child: Icon(MyFlutterApp.heart,color: Colors.black),
            ),
            ),),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      child:Divider(

                        thickness: 2,
                        color: Colors.black,
                      ),
                    )

                  ],
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  
                    child: Column(
                      
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: productName, style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),
                                ),
                                TextSpan(text: '\n'+price,style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nCategory: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: category,style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nColor: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: color,style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nSize: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: size,style: TextStyle(color: Colors.black))
                              ],
                            ),
                        ),
                        )
                      ],
                    ),

                    )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                      child:Column(
    children: <Widget>[
      Container(
        width: 300,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffED4232),),

      child: Builder(
          builder: (context)=> TextButton(
              child: Text('Add to cart', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(text: imgPath+","+productName+","+price+","+category+","+color+","+size),
                  ),
                );
              }),),
    ),




      SizedBox(height: 10),
      Container(
        width: 300,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffED4232),),
        child: Builder(
          builder: (context)=>TextButton(
            child: Text('Buy now', style: TextStyle(color: Colors.white)),
            onPressed: ()=> Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => (Checkout()),
              ),
            ),
          ),
        ),


      )
    ],
    )

                    ),
                )
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
