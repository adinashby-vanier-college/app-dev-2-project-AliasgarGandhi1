import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:mtl_chassures/Model/user.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';
import 'Navigation/search_place.dart';
import 'dialog.dart';
import 'home.dart';

bool edit = false;
TextEditingController txtFullName = new TextEditingController();
TextEditingController txtEmailID = new TextEditingController();
TextEditingController txtAddress = new TextEditingController();
TextEditingController txtPhoneNo = new TextEditingController();

void main() => runApp(Account_info());

class Account_info extends StatefulWidget {
  const Account_info({super.key});

  State<Account_info> createState() => _Account_info();
}

// This widget is the root of your application.
class _Account_info extends State<Account_info> {
  late DatabaseReference dbRef;
  UserData userData = new UserData();
  String currentUsr = "";
  @override
  void activate() {
    setState(() {
      txtAddress.text = UserData.address;
    });
  }

  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('users');
    if(UserData.key == ""){
      setState(() {
        txtAddress.text = "";
        txtEmailID.text = "";
        txtPhoneNo.text = "";
        txtFullName.text = "";
      });
    }
    getUserData();
  }

  void getUserData() async {
    if (FirebaseAuth.instance.currentUser != null) {
      DataSnapshot snapshot = (await dbRef.child('/' + UserData.key).get());
      if (snapshot.exists) {
        Map user = snapshot.value as Map;
        print(user.keys.toString().substring(1, user.keys.toString().length-1));
        currentUsr = user.keys.toString().substring(1, user.keys.toString().length-1);
        Map<String, String> user1 =
            new Map<String, String>.from(user[user.keys.first]);
        txtFullName.text = user1['name']!;
        txtPhoneNo.text = user1['phone']!;
        txtEmailID.text = user1['email']!;
        // user1['address']=="" ? txtAddress.text=UserData.address : txtAddress.text = user1['address']!;
        UserData.address != "" ? txtAddress.text=UserData.address : txtAddress.text = user1['address']!;
        // txtAddress.text = UserData.address;
      } else {
        print("no data");
      }
    }
    if(UserData.googleUser){
      txtFullName.text = UserData.userName;
      txtPhoneNo.text = UserData.phoneNumber;
      txtEmailID.text = UserData.emailId;
      txtAddress.text = UserData.address;
    }
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
        appBar: AppBar(
          backgroundColor: Colors.white70,
          iconTheme: IconThemeData(size: 30),
          actions: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(MyFlutterApp.arrow_left, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 19.0),
                  ),
                  IconButton(
                    icon: Icon(MyFlutterApp.home, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("Images/male_avatar.png"),
                ),
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "    Full Name",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                          controller: txtFullName,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Enter Full Name',
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid),
                            ),
                            prefixIcon: Icon(MyFlutterApp.address_book),
                            prefixIconColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                    style: BorderStyle.solid)),
                          ),
                          validator: (value) {
                            return value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                                ? 'Please enter or correct name'
                                : null;
                          }),

                      ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                      SizedBox(height: 20),
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////

                      Text(
                        "    Address",
                        style: TextStyle(color: Colors.black54),
                      ),

                      TextFormField(
                          controller: txtAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter Address',
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid),
                            ),
                            prefixIcon: Icon(MyFlutterApp.address_card),
                            prefixIconColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                    style: BorderStyle.solid)),
                          ),
                          readOnly: true,
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter Address'
                                : null;
                          }),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 10),
                        child: TextButton(
                          onPressed: () {
                            UserData.addressSelected = true;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SearchPlacesScreen()));
                          },
                          child: Text(
                            'Select Address',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red),
                              elevation: MaterialStatePropertyAll(10)),
                        ),
                      ),

                      ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                      SizedBox(height: 20),
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////

                      Text(
                        "    Email ID",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                          controller: txtEmailID,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Enter Email ID',
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid),
                            ),
                            prefixIcon: Icon(MyFlutterApp.mail_bulk),
                            prefixIconColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                    style: BorderStyle.solid)),
                          ),
                          validator: (value) {
                            return value!.isEmpty ||
                                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value)
                                ? 'please enter email'
                                : null;
                          }),

                      ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                      SizedBox(height: 20),
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////

                      Text(
                        "    Phone Number",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                        controller: txtPhoneNo,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter Phone Number',
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          prefixIcon: Icon(MyFlutterApp.phone_alt),
                          prefixIconColor: Colors.red,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                  style: BorderStyle.solid)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Phone Number';
                          }
                          if (value.length != 10) {
                            return 'Your phone number must have 10 digits!!';
                          }
                          if (!RegExp(
                                  r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                              .hasMatch(value)) {
                            return 'Your phone number is invalid!!';
                          }
                          //
                          return null;
                        },
                      ),

                      ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                      SizedBox(height: 40),
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Map<String, String> users = {
                                    'name': txtFullName.text,
                                    'email': txtEmailID.text,
                                    'phone': txtPhoneNo.text,
                                    'address': txtAddress.text
                                  };
                                  dbRef.child(UserData.key+"/"+currentUsr).update(users);
                                  showUpdateSuccessfully(context);
                                  return;
                                } else {
                                  return null;
                                }
                              },
                              child: const Text(
                                'Update',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red),
                                elevation: MaterialStatePropertyAll(10),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
