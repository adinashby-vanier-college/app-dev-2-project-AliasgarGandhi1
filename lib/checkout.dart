import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/emptyCheckout.dart';
import 'dialog.dart';
import 'home.dart';
import 'my_flutter_app_icons.dart';

void main() {
  runApp(Checkout());
}

int _itemCount = 1;
double _totalItemPrice=0;
double _itemPrice=89.90;
double _estimatedTax=0;
double _estimatedShipping=0;
double _totalPrice=0;
String Shippingfee="0";

double estimatedTax()  {
  if (_itemCount > 0)
    _estimatedTax= _totalItemPrice * 0.07;

  _estimatedTax= double.parse(_estimatedTax.toStringAsFixed(2));
  return _estimatedTax;


}
String estimatedShipping()  {

  if (_totalItemPrice > 0 && _totalItemPrice <300) {
    Shippingfee = (_totalItemPrice * 0.05).toString();
    _estimatedShipping = double.parse(Shippingfee);
    Shippingfee = "\$"+ (_totalItemPrice * 0.05).toString();
  }
  else if(_totalItemPrice > 300 && _totalItemPrice <1000){
    Shippingfee="Free";
  }
  return Shippingfee;
}

double totalPrice()  {
  if (_itemCount > 0)
    _totalPrice= _totalItemPrice +_estimatedTax + _estimatedShipping;
  _totalPrice= double.parse(_totalPrice.toStringAsFixed(2));
  return _totalPrice;
}

double totalItemPrice(double itemPrice)  {
  if (_itemCount > 0)
    _totalItemPrice =  itemPrice * _itemCount;
  _totalItemPrice= double.parse(_totalItemPrice.toStringAsFixed(2));
  return _totalItemPrice;
}


int orderDecrement(int count){
  if(count>1)
    count--;
  _itemCount=count;
  return _itemCount;
}

int orderIncrement(int count){
  count++;
  _itemCount=count;
  return _itemCount;
}
class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        // appBar: AppBar(


        backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
        body: SafeArea(child: Column(
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
                              Navigator.pop(context,
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
                    )
                )
            ),
            Container(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 400.0,
                    ////.0,
                    width: 350.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16,),
                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(

                              width: 90.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),),
                              child: Center(

                                child: Container(

                                  width: 70.0,
                                  height: 90.0,
                                  padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Image.asset('Images/sneakers.png'),
                                ),
                              ),

                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[


                                  Row(
                                    children: [
                                      Container(width: 100.0,
                                        child: Text(
                                          "Nike Air Max", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                        ),

                                      ),


                                      Spacer(),

                                      Text("\$89.90", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Container(width: 100.0,
                                        child: Text(
                                          "Cross Training Weightlifting Shoe",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),

                                      ),


                                      Spacer(),


                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Container(width: 100.0,
                                        child: Text(
                                          "Size: M 8.5/W 10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                          ),
                                        ),

                                      ),


                                      Spacer(),


                                    ],
                                  ),
                                  SizedBox(height: 8,),

                                  Row(
                                    children: [
                                      Material(

                                        color: Colors.blue,

                                        borderRadius: BorderRadius.circular(
                                            4),
                                        child: InkWell(

                                          onTap: () {
                                            setState(() {
                                              orderDecrement(_itemCount);
                                              totalItemPrice(_itemPrice);
                                              estimatedTax();
                                              estimatedShipping();
                                              totalPrice();

                                            });
                                          },
                                          //borderRadius: BorderRadius.circular(22),

                                          child: Container(

                                            width: 20,
                                            height: 20,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              MyFlutterApp.minus,
                                              color: Colors.white,
                                              size: 15.0,
                                            ),

                                          ),
                                        ),

                                      ),


                                      // Container(
                                      //   width: 20,
                                      //   height: 20,
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.grey[400],
                                      //     borderRadius: BorderRadius.circular(4),
                                      //   ),
                                      //   child: Icon(
                                      //     MyFlutterApp.minus,
                                      //     color: Colors.white,
                                      //     size: 15.0,
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          "$_itemCount", style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Material(

                                        color: Colors.blue,

                                        borderRadius: BorderRadius.circular(
                                            4),
                                        child: InkWell(

                                          onTap: () {
                                            setState(() {
                                              orderIncrement(_itemCount);
                                              totalItemPrice(_itemPrice);
                                              estimatedTax();
                                              estimatedShipping();
                                              totalPrice();
                                            });

                                          },
                                          //borderRadius: BorderRadius.circular(22),

                                          child: Container(

                                            width: 20,
                                            height: 20,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              MyFlutterApp.plus,
                                              color: Colors.white,
                                              size: 15.0,
                                            ),

                                          ),
                                        ),

                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {
                                            IconButton.styleFrom(
                                                foregroundColor:
                                                Color.fromRGBO(
                                                    255, 0, 0, 100.0));
                                            setState(() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => (emptyCheckout()),
                                                ),
                                              );
                                            });
                                          },
                                          icon: Icon(MyFlutterApp.trash_alt,
                                            color: Colors.black87,)),
                                    ],
                                  ),
                                  SizedBox(height: 21,),


                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                        Divider(color: Colors.black45,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                "Retail Price:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                "\$$_totalItemPrice",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                "Estimated Tax:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )
                            ),
                            Text(
                                "\$$_estimatedTax",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                "Estimated shipping & Handling:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )
                            ),
                            Text(
                                "$Shippingfee",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 7,),
                        Divider(color: Colors.black,height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                "Total:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                )
                            ),
                            Text(
                                "\$$_totalPrice",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                )
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Material(

                    color: Colors.red,

                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(

                      onTap: () {
                        showOrderPlacedDialog1(context);
                      },
                      borderRadius: BorderRadius.circular(50),

                      child: Container(

                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Checkout', style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),),

                      ),
                    ),

                  ),
                  SizedBox(height: 40,),
                  Material(

                    color: Colors.red,

                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(

                      onTap: () {

                        showAlertDialog(context);

                      },
                      borderRadius: BorderRadius.circular(50),

                      child: Container(

                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Cancel', style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),),

                      ),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),

        ),
      ),

    );
  }

}