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
                  child: Icon(Icons.monitor_heart, color: Colors.redAccent),
                ),
              ),
            ],
          ),
          //body: orderTile(),
        ),
      ),
    );
  }
}
