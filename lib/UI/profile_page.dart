import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: signUserOut,
              icon: const Icon(
                Icons.logout,
              ),
          ),
        ],
      ),
      body: Center(child: Text(
        "Logged In As: ${user.email!}",
        style: const TextStyle(
          fontSize: 20,
          color: Color(0XFF3AA757),
        ),
      )),
    );
  }
}
