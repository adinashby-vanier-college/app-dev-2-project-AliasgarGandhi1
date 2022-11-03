import 'package:flutter/material.dart';

const List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_outlined)),
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
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 30.0),
                  height: 150.0,
                  width: 350.0,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete_rounded)),
                      Image.asset(
                        'Images/sneakers1.webp',
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
                              onPressed: () {},
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
                      Container(
                        margin: EdgeInsets.only(top: 15.0, bottom: 26.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButtonExample(),
                            Container(
                              child: TextButton(
                                onPressed: () {},
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
                                onHover: (value) => ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white),
                                    foregroundColor:
                                        MaterialStatePropertyAll(Colors.red)),
                              ),
                            )
                          ],
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
      icon: const Icon(Icons.arrow_drop_down_circle_outlined),
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
