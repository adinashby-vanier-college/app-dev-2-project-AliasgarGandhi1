import 'package:flutter/material.dart';
import 'package:mtl_chassures/Model/product.dart';
import 'package:mtl_chassures/cart.dart';
import 'package:mtl_chassures/checkout.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';
import 'package:mtl_chassures/wishlist.dart';

import 'home.dart';



class Product extends StatefulWidget {

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String imgPath= ProductClass.productMap['img'];
  String productName=ProductClass.productMap['brand'];
  String price= "\$ " +ProductClass.productMap['price'];
  String category= ProductClass.productMap['category'];
  String  color = ProductClass.productMap['color'];
  String size= ProductClass.productMap['size'];

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
                leading:  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(MyFlutterApp.arrow_left, color: Colors.black,)),
                actions: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: IconButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Wishlist()))),
                        icon: Icon(MyFlutterApp.heart, color: Colors.black),
                      )
                  ),
                ],
              ),
              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
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
                                      image: NetworkImage(imgPath),
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
