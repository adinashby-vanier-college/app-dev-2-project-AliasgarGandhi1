import 'package:flutter/material.dart';
import 'package:mtl_chassures/Model/product.dart';
import 'package:mtl_chassures/account_info.dart';
import 'package:mtl_chassures/cart.dart';
import 'package:mtl_chassures/dialog.dart';
import 'package:mtl_chassures/login.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:mtl_chassures/checkout.dart';
import 'package:mtl_chassures/order.dart';
import 'package:mtl_chassures/product.dart';
import 'package:mtl_chassures/search.dart';
import 'package:mtl_chassures/Model/user.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mtl_chassures/wishlist.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  State<Home> createState() => _MyAppState();
}

// This widget is the root of your application.
class _MyAppState extends State<Home> {
  bool _heart_filled = true;
  Query dbRef = FirebaseDatabase.instance.ref().child('Products');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Products');
  String loginText = "";

  @override
  void initState() {
    super.initState();
    getProductData();
    setState(() {
      UserData.login ? loginText = "Log Out" : loginText = "Log In";
    });
  }

  void getProductData() async {
    DataSnapshot snapshot = (await reference.get());
    if (snapshot.exists) {
      Map productMap = snapshot.value as Map;
      ProductClass.productList = productMap.values.toList();
    }
  }

  @override
  Widget listItem({required Map product}) {
    return GestureDetector(
      onTap: () {
        ProductClass.productMap = product;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Product()));
      },
      child: Padding(
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
            children: [
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Image.network(
                  product['img'],
                  width: 120,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 8, 2),
                child: Row(
                  children: [
                    Text(
                      product['brand'],
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Text(
                      product['category'],
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(5, 20, 20, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "  \$ " + product['price'],
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            ProductClass.productMap = product;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Checkout()));
                          },
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _heart_filled
                                ? _heart_filled = false
                                : _heart_filled = true;
                          });
                        },
                        icon: Icon(
                          _heart_filled
                              ? MyFlutterApp.heart
                              : Icons.favorite_border_outlined,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // void activate() {
  //   _selectedIndex =0;
  //   super.activate();
  // }

  Container offers(String title) {
    return Container(
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
        iconTheme: IconThemeData(size: 30),
        actions: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                ),
                Text(
                  'HOME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 19.0),
                ),
                IconButton(
                  icon: Icon(MyFlutterApp.heart, color: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Wishlist()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("Images/male_avatar.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Account_info(),
                              ),
                            );
                          },
                          child: Text(
                            UserData.userName,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ),
                  ],
                )),
            ListTile(
              title: const Text('My Orders'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Order(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Wishlist'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Wishlist(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(loginText),
              onTap: () {
                if (loginText == "Log In") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }
                if (FirebaseAuth.instance.currentUser != null) {
                  FirebaseAuth.instance.signOut().then((value) {
                    UserData.key = "";
                    showLogoutSuccessful(context);
                  });
                }
                UserData.login = !UserData.login;
                setState(() {
                  UserData.login ? loginText = "Log Out" : loginText = "Log In";
                });
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: offers("Weekly Deal's"),
              ),
              SizedBox(
                height: 280,
                child: Expanded(
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map product = snapshot.value as Map;
                      product['key'] = snapshot.key;
                      // Product.productMap = product;
                      return listItem(product: product);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: offers("Best Seller's"),
              ),
              SizedBox(
                height: 280,
                child: Expanded(
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    // controller: ScrollController(initialScrollOffset: ),
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map product = snapshot.value as Map;
                      product['key'] = snapshot.key;
                      return listItem(product: product);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 280,
                child: Expanded(
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map product = snapshot.value as Map;
                      product['key'] = snapshot.key;
                      return listItem(product: product);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        iconSize: 20,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.address_card),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ));
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    }
    if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Search(),
        ),
      );
    }
    if (_selectedIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Account_info(),
        ),
      );
    }
    if (_selectedIndex == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Cart(text: "PUMA"),
        ),
      );
    }
  }
}
