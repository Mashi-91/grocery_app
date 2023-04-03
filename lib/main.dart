import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/category_detail_page.dart';
import 'package:grocery_app/UI/NavigationController.dart';
import 'package:grocery_app/UI/pages/auth_page.dart';
import 'package:grocery_app/UI/profile_page.dart';
import 'package:grocery_app/UI/pages/login_page.dart';
import 'package:grocery_app/UI/pages/signup_page.dart';
import 'package:grocery_app/UI/pages/start_page.dart';
import 'package:grocery_app/UI/pages/welcome_page.dart';
import 'package:grocery_app/firebase_options.dart';
import 'package:grocery_app/model/CartModel.dart';
import 'package:grocery_app/provider/auth_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'grocery_app',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CartModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        theme: getTheme(context),
        home: const AuthPage(),
        routes: {
          '/profile_page': (context) => ProfilePage(),
          '/welcome_page': (context) => const WelcomePage(),
          '/login_page': (context) => LoginPage(),
          '/signup_page': (context) => SignUp(),
          '/start_page': (context) => const StartPage(),
          '/home_page': (context) => const NavigatationController(),
          CategoryDetailPage.routename: (_) => CategoryDetailPage()
        },
      ),
    );
  }

  ThemeData getTheme(BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        textTheme: const  TextTheme(
            titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Montserrat'),
        titleLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: 'Montserrat')),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
          backgroundColor: Colors.white,
        ));
  }
}
