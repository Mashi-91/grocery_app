import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/pages/signup_page.dart';
import 'package:grocery_app/UI/profile_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?> (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user logged in
          if(snapshot.hasData) {
            return ProfilePage();
          } // user not logged in
          else {
            return const SignUp();
          }
        },
      )
    );
  }
}
