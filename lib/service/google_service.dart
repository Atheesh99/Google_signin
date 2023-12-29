import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/screen/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;

typedef SignInCallback = void Function(UserCredential? userCredential);

Future<UserCredential?> signInWithGoogle(
    BuildContext context, SignInCallback callback) async {
  try {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    UserCredential? userCredential =
        await _auth.signInWithCredential(credential);
    if (userCredential != null) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
    callback(userCredential);
    return userCredential;
  } catch (e) {
    print("Error during Google sign in: $e");
    callback(null);
    return null;
  }
}
