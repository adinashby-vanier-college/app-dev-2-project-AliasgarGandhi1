
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/checkout.dart';

import 'home.dart';

// void main() {
//   runApp(Cart());
//}

class Cart extends StatelessWidget {
  final String text;
  const Cart({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFF1EDEC),
          appBar: AppBar(
            backgroundColor: Color(0xFFF1EDEC),
            title: Text('Cart'),
            titleTextStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () => {
              Navigator.pop(context,)
            },
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.filter_alt, color: Colors.black),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    CartCard(text),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget CartCard(String text) {
    text=text.isNotEmpty?text:"Images/sneakers2.jpg,NIKE Sneakers,\$ 89.99 cad";
    var arr = text.split(',');

    return Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                  width: 350,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child:
                          Image.network(arr[0], fit: BoxFit.fill),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: arr[1],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: '\n'+arr[2],
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: <Widget>[

                                  Container(
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffED4232),
                                      ),

                                      child: Builder(
                                          builder: (context)=> TextButton(
                                            child: Text('Buy Now',
                                            style: TextStyle(color: Colors.white)),
                                            onPressed: () =>{
                                              Navigator.push(context,MaterialPageRoute(
                                                builder: (context) => (Checkout()),
                                              )),
                                            },
                                      ))),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffED4232),
                                    ),
                                    child: Builder(
                                      builder: (context)=> TextButton(
                                      child: Text('Remove',
                                          style: TextStyle(color: Colors.white)),
                                      onPressed: () => {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
                                      }
                                    ),
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )));



  }
}
