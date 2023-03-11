import 'package:flutter/material.dart';
import 'package:grocery_app/UI/landing_page.dart';

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
      home: const Welcome(),
    );
  }

}


