import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
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
              onTap: () {},
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
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CartCard(),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget CartCard() {
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
                        Image.asset('Images/sneakers2.jpg', fit: BoxFit.fill),
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
                                  text: 'Addidas Runner Shoes: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text: '\n\$ 89.99 cad',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: <Widget>[

                            Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffED4232),
                                ),

                                child: TextButton(
                                  child: Text('Add to cart',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {},
                                )),
                            SizedBox(width: 10,),
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffED4232),
                              ),
                              child: TextButton(
                                child: Text('Buy now',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {},
                              ),
                            )
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
