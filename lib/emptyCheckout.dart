import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/login.dart';
import 'dialog.dart';
import 'home.dart';
import 'my_flutter_app_icons.dart';

void main() {
  runApp(emptyCheckout());
}
class emptyCheckout extends StatefulWidget {
  const emptyCheckout({Key? key}) : super(key: key);

  @override
  State<emptyCheckout> createState() => _CheckoutState();
}

class _CheckoutState extends State<emptyCheckout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        // appBar: AppBar(


        backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                            onPressed: () {
                              Navigator.pop(
                                context
                                ,
                              );
                            },
                            icon: Icon(MyFlutterApp.arrow_left)),
                        // Image.network(
                        //     'https://img.icons8.com/ios-filled/344/squared-menu.png'),

                        Text(
                          "Checkout",
                          style: TextStyle(
                            fontSize: 22,
                            height: 2,
                            //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                            color: Colors.black,
                            //font color
                            letterSpacing: 2,
                            //letter spacing
                            fontWeight: FontWeight.bold,
                            // decorationThickness: 5, //decoration 'underline' thickness
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            }, icon:  Icon(MyFlutterApp.home)),
                      ],
                    ))),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 200,//double.infinity,
              height:  200,//MediaQuery.of(context).size.height * 0.4,

              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('Images/emptycart.png'),//Image.asset('Images/sneakers.png'),//AssetImage('https://www.bing.com/images/search?view=detailV2&ccid=rEpE6Udv&id=4B945ED6CA57E859480BCB084FFA509420F47882&thid=OIP.rEpE6Udvde8aFOiS-hYo6QHaGw&mediaurl=https%3a%2f%2fthumbs.dreamstime.com%2fz%2fshopping-cart-sad-5662438.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ac4a44e9476f75ef1a14e892fa1628e9%3frik%3dgnj0IJRQ%252bk8Iyw%26pid%3dImgRaw%26r%3d0&exph=1187&expw=1300&q=empty+cart+sad+face+&simid=607998736345797767&FORM=IRPRST&ck=15BAEC0EDB9462FAD714C22FFA13CB73&selectedIndex=2'),
                  )
              ),
            ),
            Text(
              'Oops!! Your cart is empty',
              style:  TextStyle(
                  color: Colors.black,fontSize: 30,
                  fontWeight: FontWeight.w800
              ),textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            Text(
              'Looks Like You didn\'t \n add anything to your cart yet',
              style:  TextStyle(
                  color: Colors.black,fontSize: 22,
                  fontWeight: FontWeight.w400
              ),textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            Material(

              color: Colors.red,

              borderRadius: BorderRadius.circular(10),
              child: InkWell(

                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Container(

                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('Continue to Shopping', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),

                ),
              ),

            ),

          ],
        ),

        ),
      ),

    );
  }

}