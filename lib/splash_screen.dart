import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/home.dart';
// import 'package:mtl_chassures/home.dart';
import 'package:mtl_chassures/main.dart';

 void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
   runApp( SplashScreen());
 }
 class SplashScreen extends StatelessWidget
 {
   Widget build (BuildContext context){
   return MaterialApp(home: SplashScreenShow(),);
   }
 }
 class SplashScreenShow extends StatefulWidget{
  const SplashScreenShow({Key? key}) : super(key: key);
  @override
  InitState createState() => InitState(); }

class InitState extends State<SplashScreenShow> {

  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Home()))
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





