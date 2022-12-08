import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mtl_chassures/Model/user.dart';
import 'package:mtl_chassures/Register.dart';
import 'package:mtl_chassures/dialog.dart';
import 'package:mtl_chassures/home.dart';
import 'auth_service.dart';
import 'my_flutter_app_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_database/firebase_database.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyAppState();
}

class _MyAppState extends State<LoginScreen> {
  bool _obscureText=true;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();


  Query dbRef = FirebaseDatabase.instance.ref().child('users');
  DatabaseReference reference =
  FirebaseDatabase.instance.ref().child('users');

  final GlobalKey<FormState> _formkey1= GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 120.0,),
              Text("Login",
              style: TextStyle(
                fontSize: 35,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold
              ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 30),
            child :  Form(
              key: _formkey1,
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                  child : TextFormField(
                      controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color: Colors.black87,
                      ),
                      hintText: 'Enter Email',
                      prefixIcon: Icon(MyFlutterApp.mail_bulk,color: Colors.deepOrange),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.deepOrange,width: 3),
                      ),
                    ),
                      onSaved: (value){
                        _email = value as TextEditingController;
                      },
                    onChanged: (String value){

                    },
                    validator: (value){
                      return value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value) ? 'Please enter valid email' : null;

                  }
                  ),
                  ),
                  SizedBox(height: 20,),

                  Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                    child : TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          suffixIcon: GestureDetector(onTap: (){
                            setState(()
                            {
                              _obscureText = !_obscureText;
                            }
                            );
                          },
                          child:
                          Icon(_obscureText ? MyFlutterApp.eye :MyFlutterApp.eye_slash,color: Colors.deepOrange,),
                          ),
                          hintText: 'Enter Password',
                          prefixIcon: Icon(MyFlutterApp.key,color: Colors.deepOrange),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.deepOrange,width: 3),
                          ),


                        ),
                         onSaved: (value){
                           _password = value as TextEditingController;
                         },
                        obscureText: _obscureText,
                        onChanged: (String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please enter password' : null;

                        }
                    ),
                  ),
                  SizedBox(height: 40,),
                  Material(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      onTap: () {
                        if(_formkey1.currentState!.validate())
                        {
                          FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text)
                              .then((value){
                                  UserData.key = FirebaseAuth.instance.currentUser!.uid;
                                  UserData.login = true;
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                          });
                          return;
                        }
                        else
                        {
                            showErrorinLogin(context);
                        }
                      },
                      borderRadius: BorderRadius.circular(50),
                      child: Container(

                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),

                      ),
                    ),

                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot password?',style: TextStyle(color: Colors.deepOrange,fontSize: 16.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Tab(icon: Icon(MyFlutterApp.facebook,color: Colors.indigo,size: 40,),),
                        Tab(icon: Icon(MyFlutterApp.instagram,color: Colors.pink,size: 40,),),
                        GestureDetector(
                            onTap: () {
                              AuthService().signInWithGoogle();

                            },
                            child: Tab(icon: Icon(MyFlutterApp.google,color: Colors.redAccent,size: 40,),),
                        )  ],
                    ),
                  ),
                  SizedBox(height: 60.0,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Register(),
                      ),
                      );
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                    },
                    child: Text.rich(
                      TextSpan(
                          text: 'Create New Account?  ',
                          children: [
                            TextSpan(
                              text: 'Signup',

                              style: TextStyle(
                                  color: Colors.deepOrange,fontSize: 16.0,fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
              )
              ),
            ],
              ),
        ),
      )
    );
  }
}
