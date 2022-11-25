import 'package:flutter/material.dart';
import 'package:mtl_chassures/login.dart';

import 'checkout.dart';
import 'home.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(

    child: Text("Cancel"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Checkout(),
        ),
      );
    },
  );
  Widget continueButton = TextButton(
    child: Text("Confirm"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.white),
    titleTextStyle:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Confirmation"),
    content: Text("Would you like to cancel?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}




showOrderPlacedDialog1(BuildContext context) {

  Widget continueButton = TextButton(
    child: Text("Continue to Shopping"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.white),
    titleTextStyle:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Congratulations!!"),
    content: Text("Your order has been placed successfully! Thank you for shopping with us 😄"
    ),
    actions: [
      //cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showRegistertoLoginDialog(BuildContext context) {

  Widget continueButton = TextButton(
    child: Text("Continue to Login"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.white),
    titleTextStyle:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Hey ✋!!! Welcome"),
    content: Text("Thank you for choosing us 😄"
    ),
    actions: [
      //cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showErrorinLogin(BuildContext context) {

  Widget continueButton = TextButton(
    child: Text("Ok"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.white),
    titleTextStyle:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Oops!!"),
    content: Text("You email or passowrd are incorrect!!"
    ),
    actions: [
      //cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}