import 'package:flutter/material.dart';
import 'package:mtl_chassures/cart.dart';
import 'package:mtl_chassures/checkout.dart';
import 'package:mtl_chassures/home.dart';

import 'my_flutter_app_icons.dart';

const List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// void main() => runApp(Wishlist());

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
            appBar: AppBar(
              backgroundColor: Colors.white70,
              iconTheme: IconThemeData(size: 30),
              actions: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'WISHLIST',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 19.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(children: [

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  // height: 150.0,
                  // width: 350.0,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete_rounded)),
                      Image.asset(
                        'Images/sneakers1.webp',
                        //Wishlist['image']
                        height: 150.0,
                        width: 100.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text('PUMA',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text('Snekers for Men',
                                style: TextStyle(fontSize: 12)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Text(r"$129.99",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Checkout(),
                                  ),
                                );
                              },
                              child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.all(10.0)),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red),
                              ),
                              onHover: (value) => ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.red)),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 35.0),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButtonExample(),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cart(text: "",),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(10.0)),
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            )));
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  int dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_circle_rounded),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      onChanged: (int? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}
