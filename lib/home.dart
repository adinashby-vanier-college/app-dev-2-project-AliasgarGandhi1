import 'package:flutter/material.dart';

// void main() {
//   runApp(Home());
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  _HomeState createState() => _HomeState();
}


  // This widget is the root of your application.
class _HomeState extends State<Home>{
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
        body: Column(
          children: <Widget>[
            Container(
                height: 75.0,
                padding: EdgeInsets.all(15.0),
                child: Container(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.menu_rounded)),
                    // Image.network(
                    //     'https://img.icons8.com/ios-filled/344/squared-menu.png'),

                    Text(
                      "Home",
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
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.filter_alt_sharp)),
                    // Image.network(
                    //   'https://img.icons8.com/ios-filled/344/empty-filter.png',
                    //   alignment: Alignment.centerRight,
                    // )
                  ],
                ))),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 250.0,
                    width: 150.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.0),
                          width: 150.0,
                          height: 120.0,
                          child: Image.asset('Images/sneakers2.jpg'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('NIKE',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('Snekers for Men',
                              style: TextStyle(fontSize: 14)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          child: Text(r"$129.99",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 4.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.red),
                                  ),
                                  onHover: (value) => ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.white),
                                      foregroundColor:
                                          MaterialStatePropertyAll(Colors.red)),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    IconButton.styleFrom(
                                        foregroundColor:
                                            Color.fromRGBO(255, 0, 0, 100.0));
                                  },
                                  icon: Icon(Icons.favorite_border)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 250.0,
                    width: 150.0,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
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
          // backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
