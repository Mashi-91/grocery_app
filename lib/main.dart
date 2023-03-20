import 'package:flutter/material.dart';
import 'package:grocery_app/UI/home_page.dart';
import 'package:grocery_app/UI/profile_page.dart';
import 'package:grocery_app/UI/signin_page.dart';
import 'package:grocery_app/UI/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/profile_page': (context) => const ProfilePage(),
        '/welcome_page': (context) => const WelcomePage(),
        '/signin_page': (context) => SignIn(),
      },
    );
  }
}


