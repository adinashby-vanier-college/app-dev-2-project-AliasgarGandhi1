import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mtl_chassures/login.dart';
import 'dialog.dart';
import 'my_flutter_app_icons.dart';




// void main() {
//
//   runApp(const Register());
// }

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _MyAppState();
}

class _MyAppState extends State<Register> {
  bool _obscureTextcreate=true;
  bool _obscureTextconfirm=true;
  //String _name="",_email="",_phone="";

  TextEditingController _name=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _phone=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _confirmPassword=TextEditingController();

  late DatabaseReference dbRef;

  void initState(){
    super.initState();
    dbRef= FirebaseDatabase.instance.ref().child('users');
  }

  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();





  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  //A function that validate user entered password
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 70.0,),
                Text("Register",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 30),
                  child: SingleChildScrollView(

                      child :  Form(

                        key: _formkey,
                        child: Column(
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child : TextFormField(
                                  controller: _name,
                                  keyboardType: TextInputType.name,
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
                                  onSaved: (value){
                                    _name = value as TextEditingController;
                                  },
                                  onChanged: (String value){

                                  },
                                  validator: (value){
                                    return value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value) ? 'Please enter or correct name' : null;
                                  }
                              ),
                            ),
                            SizedBox(height: 20,),
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
                                    return value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value) ? 'please enter email' : null;

                                  }
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child : TextFormField(
                                  controller: _phone,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                  //keyboardType: TextInputType.phone,
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
                                  onSaved: (value){
                                    _phone = value as TextEditingController;
                                  },
                                  onChanged: (String value){

                                  },
                                  validator: (value) {
                                    //    return value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value) ? 'please enter phone number' : null;


                                    if (value!.isEmpty) {
                                      return 'Please enter Phone Number';
                                    }
                                    if (value.length !=10) {
                                      return 'Your phone number must have 10 digits!!';
                                    }
                                    if (!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)) {
                                      return 'Your phone number is invalid!!';
                                    }
                                    //
                                    return null;
                                  }
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child : TextFormField(

                                  controller: _password,
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
                                  onSaved: (value){
                                    _password =value as TextEditingController;
                                  },
                                  obscureText: _obscureTextcreate,
                                  onChanged: (String value){

                                  },
                                  validator: (value){
                                    if(value!.isEmpty)
                                    {
                                      return 'Please a Enter Password';
                                    }
                                    if(value.length<=7){
                                      return 'Your password must be at least 8 characters';
                                    }
                                    if(value.length>=15){
                                      return 'Your password must be only 15 characters long';
                                    }
                                    else{
                                      //call function to check password
                                     bool result = validatePassword(value);
                                      if(result){
                                        // create account event
                                        return null;
                                      }else{
                                        return " Password should contain Capital, small letter & Number & Special";
                                      }
                                    }
                                    return null;
                                  }
                              ),
                            ),
                            SizedBox(height: 20,),

                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child : TextFormField(
                                  controller: _confirmPassword,
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
                                  onSaved: (value){
                                    _confirmPassword =value as TextEditingController;
                                  },
                                  obscureText: _obscureTextconfirm,
                                  onChanged: (String value){
                                  },
                                  validator: (value){
                                    //return value!.isEmpty ? 'please confirm password' : null;
                                    if(value!.isEmpty)
                                    {
                                      return 'Please  Re-enter a Password';
                                    }
                                    if(_password.value!= _confirmPassword.value)
                                    {
                                      return 'Passwords do not match!!';
                                    }
                                  }
                              ),
                            ),
                            SizedBox(height: 40,),
                            Material(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(50),
                              child: InkWell(
                                onTap: () {
                                  if(_formkey.currentState!.validate())
                                  {
                                    Map<String, String> users={
                                      'name' : _name.text,
                                      'email' : _email.text,
                                      'phone' : _phone.text,
                                      'password': _confirmPassword.text
                                    };
                                    // FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _password.text).then((value) => null)
                                    dbRef.push().set(users);
                                    showRegistertoLoginDialog(context);
                                    return;
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                borderRadius: BorderRadius.circular(50),

                                child: Container(

                                  width: 200,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),

                                ),
                              ),

                            ),
                            SizedBox(height: 50.0,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
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
                ),
              ],

            ),
          ),
        )
    );
  }
}


























