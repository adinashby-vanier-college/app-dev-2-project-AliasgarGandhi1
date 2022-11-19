import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mtl_chassures/home.dart';


void main() {
  runApp( const SplashScreen());
}
class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => InitState(); }

class InitState extends State<SplashScreen> {

  void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration= Duration(seconds: 3);
    return new Timer(duration, loginRoute());
  }
  loginRoute(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)), (new Color( 0xffF2861E))],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
              )
            ),
          ),
    Center(child: Container(
    child: Image.asset("Images/running-shoes.png"),
      height: 200,
      width: 200,
    ),)
        ],
      )
    )
    );

  }


}





