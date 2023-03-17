import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/cart_page.dart';
import 'package:grocery_app/UI/categories_page.dart';
import 'package:grocery_app/UI/favorite_page.dart';
import 'package:grocery_app/UI/profile_page.dart';
import 'package:grocery_app/Util/color_constant.dart';

import 'Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List _pages = [
    const Home(),
    const CategoriesPage(),
    const FavoritePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorConstant.tealA400,
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          items: const [
            BottomNavigationBarItem(icon: Icon(EvaIcons.homeOutline), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(EvaIcons.gridOutline), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(EvaIcons.heartOutline), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(EvaIcons.shoppingCartOutline), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(EvaIcons.person), label: 'Profile'),
          ],
          currentIndex: _currentIndex,
          onTap: (i){
            setState(() {
              _currentIndex = i;
            });
          }
        )
      ),
    );
  }
}
