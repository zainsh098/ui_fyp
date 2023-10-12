
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:ui_fyp/screens/Authentications/auth_gateways.dart';
import 'package:ui_fyp/screens/Home%20Screen/home_screen.dart';
import 'package:ui_fyp/utils/utils.dart';

class Google_AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> handleSignin(BuildContext context) async {
    try {
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        await _auth.signInWithCredential(credential);

        // If sign-in is successful, navigate to the home screen.
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
    } catch (e, stackTrace) {
      print("Error signing in with Google: $e");
      print("StackTrace: $stackTrace");

      // Show a Snackbar with the error message.
      Utils.snackBar(e.toString(), context);
    }
  }


  //Google Signout Functions

  Future<void> handleSignOut(BuildContext context) async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => AuthGateWays(),
        ),
      );
    } catch (e) {
      print("Error signing out with google $e");
    }
  }
}