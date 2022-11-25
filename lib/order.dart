import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Order());
}

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFF1EDEC),
          appBar: AppBar(
            backgroundColor: Color(0xFFF1EDEC),
            title: Text('Order'),
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
            child:Column(
              children: <Widget>[
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
                SizedBox(height: 10,),
                OrderCard(),
              ],
            )
            ),
          ),
        ),
      ),
    );
  }

  Widget OrderCard() {
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
                child: Image.asset('Images/sneakers2.jpg',fit: BoxFit.fill),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Order#: ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: '123456',style: TextStyle(color: Colors.black)),

                      TextSpan(text: '\nOrder Date: ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: '30/09/2022',style: TextStyle(color: Colors.black)),

                      TextSpan(text: '\nStatus',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: 'Shipped',style: TextStyle(color: Colors.black)),

                      TextSpan(text: '\nDelivered Date: ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: '08/10/2022',style: TextStyle(color: Colors.black)),

                    ],
                  ),
                ),
              )
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );//Card
  }
}
