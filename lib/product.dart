import 'package:flutter/material.dart';

// void main() {
//   runApp(Product());
// }

class Product extends StatelessWidget {
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,

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
                          image: AssetImage("Images/sneakers2.jpg"),
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
                                  text: 'NIKE Sneakers', style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),
                                ),
                                TextSpan(text: '\n\$ 89.99 cad',style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nCategory: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: 'Running Shoes',style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nColor: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: 'Blue - Orange Tint',style: TextStyle(color: Colors.black)),
                                TextSpan(text: '\nSize: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: '11',style: TextStyle(color: Colors.black))
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

      child: TextButton(
    child: Text('Add to cart', style: TextStyle(color: Colors.white)),
    onPressed: (){},
    )
    ),
      SizedBox(height: 10),
      Container(
        width: 300,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffED4232),),
        child: TextButton(
          child: Text('Buy now', style: TextStyle(color: Colors.white)),
          onPressed: (){},
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
