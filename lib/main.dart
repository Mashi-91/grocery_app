import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/home_page.dart';
import 'package:grocery_app/UI/pages/auth_page.dart';
import 'package:grocery_app/UI/profile_page.dart';
import 'package:grocery_app/UI/pages/login_page.dart';
import 'package:grocery_app/UI/pages/signup_page.dart';
import 'package:grocery_app/UI/pages/start_page.dart';
import 'package:grocery_app/UI/pages/welcome_page.dart';
import 'package:grocery_app/firebase_options.dart';

//where is the problem
// lets again open the android studio its android studio elctric eil something like powerd by intellije but last one is not like that
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      theme: getTheme(context),
      home: const AuthPage(),
      routes: {
        '/profile_page': (context) => ProfilePage(),
        '/welcome_page': (context) => const WelcomePage(),
        '/login_page': (context) => const LoginPage(),
        '/signup_page': (context) => const SignUp(),
        '/start_page': (context) => const StartPage(),
        '/home_page': (context) => const HomePage(),
      },
    );
  }

  ThemeData getTheme(BuildContext context){
    return ThemeData(
      fontFamily: 'Montserrat',
      primarySwatch: Colors.blue,
    );
  }
}


