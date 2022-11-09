import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'my_flutter_app_icons.dart';
import 'package:flutter/widgets.dart';


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
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
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
            Text("Login",
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
                      // onSaved: (value){
                      //   _password =value;
                      // },
                      obscureText: _obscureText,
                      onChanged: (String value){

                      },
                      validator: (value){
                        return value!.isEmpty ? 'please enter password' : null;

                      }
                  ),
                ),
                SizedBox(height: 40,),

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
                      Tab(icon: Icon(MyFlutterApp.google,color: Colors.redAccent,size: 40,),),
                    ],
                  ),
                ),
                SizedBox(height: 60.0,),
                GestureDetector(
                  onTap: (){
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
      )
    );
  }
}
