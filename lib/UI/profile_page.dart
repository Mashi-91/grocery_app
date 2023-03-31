import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

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
      body: Consumer<AuthProvider>(builder: (_, authProv, child) {
        return Center(
            child: Text(
          "Logged In As: ${authProv.user.email!}",
          style: const TextStyle(
            fontSize: 20,
            color: Color(0XFF3AA757),
          ),
        ));
      }),
    );
  }
}
