import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'my_flutter_app_icons.dart';


void main() {
  runApp( const LoginScreen());
}

class CustomWidgets {


  static Widget socialButtonRect(title, color, icon, {Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

  static Widget socialButtonCircle(color, icon, {iconColor, Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(
            icon,
            color: iconColor,
          )), //
    );
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyAppState();
}

class _MyAppState extends State<LoginScreen> {
  bool _obscureTextcreate=true;
  bool _obscureTextconfirm=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          //   appBar: AppBar(
          //     centerTitle: true,
          //     title: Text(
          //       "Login"
          //     ),
          //
          //     backgroundColor: Colors.deepOrange,
          //   ),
          backgroundColor: Colors.white,

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 120.0,),
              Text("Register",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 30),
                  child :  Form(child: Column(
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                        child : TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                              ),
                              hintText: 'Enter full name',
                              prefixIcon: Icon(MyFlutterApp.user,color: Colors.deepOrange),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.deepOrange,width: 3),
                              ),


                            ),
                            onChanged: (String value){

                            },
                            validator: (value){
                              return value!.isEmpty ? 'please enter full name' : null;

                            }
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                        child : TextFormField(
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
                            onChanged: (String value){

                            },
                            validator: (value){
                              return value!.isEmpty ? 'please enter email' : null;

                            }
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                        child : TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                              ),
                              hintText: 'Enter Phone Number',
                              prefixIcon: Icon(MyFlutterApp.mobile,color: Colors.deepOrange),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.deepOrange,width: 3),
                              ),


                            ),
                            onChanged: (String value){

                            },
                            validator: (value){
                              return value!.isEmpty ? 'please enter phone number' : null;

                            }
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                        child : TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: ' Create Password',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                              ),
                              suffixIcon: GestureDetector(onTap: (){
                                setState(()
                                {
                                  _obscureTextcreate = !_obscureTextcreate;
                                }
                                );
                              },
                                child:
                                Icon(_obscureTextcreate ? MyFlutterApp.eye :MyFlutterApp.eye_slash,color: Colors.deepOrange),
                              ),
                              hintText: 'Enter Password',
                              prefixIcon: Icon(MyFlutterApp.key,color: Colors.deepOrange),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.deepOrange,width: 3),
                              ),


                            ),
                            // onSaved: (value){
                            //   _password =value;
                            // },
                            obscureText: _obscureTextcreate,
                            onChanged: (String value){

                            },
                            validator: (value){
                              return value!.isEmpty ? 'please enter password' : null;

                            }
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                        child : TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: ' Confirm Password',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                              ),
                              suffixIcon: GestureDetector(onTap: (){
                                setState(()
                                {
                                  _obscureTextconfirm = !_obscureTextconfirm;
                                }
                                );
                              },
                                child:
                                Icon(_obscureTextconfirm ? MyFlutterApp.eye :MyFlutterApp.eye_slash,color: Colors.deepOrange),
                              ),
                              hintText: 'ReType Password',
                              prefixIcon: Icon(MyFlutterApp.key,color: Colors.deepOrange),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.deepOrangeAccent,width: 3),
                              ),


                            ),
                            // onSaved: (value){
                            //   _password =value;
                            // },
                            obscureText: _obscureTextconfirm,
                            onChanged: (String value){

                            },
                            validator: (value){
                              return value!.isEmpty ? 'please confirm password' : null;

                            }
                        ),
                      ),
                      SizedBox(height: 40,),
                      // MaterialButton(
                      //   minWidth: double.infinity,
                      //   onPressed: () {},
                      //   child: Text('Login'),
                      //   color: Colors.deepOrange,
                      //   textColor: Colors.white,
                      //
                      //
                      //  ),
                      Material(
                        color: Colors.deepOrange,

                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(

                          onTap: () {},
                          borderRadius: BorderRadius.circular(50),

                          child: Container(

                            width: 200,
                            height: 50,
                            alignment: Alignment.center,
                            child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),

                          ),
                        ),

                      ),
                      SizedBox(height: 10.0,),
                      // Padding(
                      //   padding: const EdgeInsets.all(10.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       Text('Forgot password?',style: TextStyle(color: Colors.deepOrange,fontSize: 16.0,fontWeight: FontWeight.bold),),
                      //     ],
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(30.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       Tab(icon: Icon(MyFlutterApp.facebook,color: Colors.indigo,size: 40,),),
                      //       Tab(icon: Icon(MyFlutterApp.instagram,color: Colors.pink,size: 40,),),
                      //       Tab(icon: Icon(MyFlutterApp.google,color: Colors.redAccent,size: 40,),),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 60.0,),
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                        },
                        child: Text.rich(
                          TextSpan(
                              text: 'Already have an account?  ',
                              children: [
                                TextSpan(
                                  text: 'Login',

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
        )
    );
  }
}
