import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  State<Home> createState() => _MyAppState();
}

// This widget is the root of your application.
class _MyAppState extends State<Home> {
  bool _heart_filled = true;

  Padding cards() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0x8B57636C), width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Image.asset(
                'Images/sneakers2.jpg',
                width: 120,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 8, 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'NIKE',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Sneakers for Men',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    r'$129.99',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    r'$149.99',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red),
                        ),
                        onHover: (value) => ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _heart_filled
                              ? _heart_filled = false
                              : _heart_filled = true;
                          print(_heart_filled);
                        });
                        print(_heart_filled);
                      },
                      icon: Icon(
                        _heart_filled
                            ? Icons.favorite_border_outlined
                            : Icons.favorite,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  // final scaffoldKey = GlobalKey<ScaffoldState>();

  Expanded offers(String title) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 20.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        actions: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.black),
                  tooltip: 'Show Snackbar',
                  mouseCursor: MouseCursor.uncontrolled,
                  onPressed: () {},
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 19.0),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_alt_sharp, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              offers("Weekly Deal's"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [cards(), cards(), cards(), cards()],
                ),
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              offers("Best Seller's"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [cards(), cards(), cards(), cards()],
                ),
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [cards(), cards(), cards(), cards()],
                ),
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [cards(), cards(), cards(), cards()],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        backgroundColor: Colors.red,
      ),
    ));
  }
}
