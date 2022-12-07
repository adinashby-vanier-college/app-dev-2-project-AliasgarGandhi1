import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mtl_chassures/login.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'home.dart';



class AuthService {

  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Home();
            print(snapshot.hasData);
          } else {
            return const LoginPage();
            print(snapshot.hasData);
          }
        });
  }

  signInWithGoogle() async {
    // Trigger the authentication flow

    final GoogleSignInAccount? googleUser1 = await GoogleSignIn(
        scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth1 = await googleUser1!
        .authentication;

    // Create a new credential
    final credential1 = GoogleAuthProvider.credential(
      accessToken: googleAuth1.accessToken,
      idToken: googleAuth1.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential1);
  }

//Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}