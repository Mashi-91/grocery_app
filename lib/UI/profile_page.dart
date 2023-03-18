import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Util/color_constant.dart';
import 'package:grocery_app/model/img_model.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, '/welcome_page');
          },
          color: Color(0XFF3AA757),
          height: 40,
          child: "Go to Welcome Page"
            .text
            .size(20)
            .color(Colors.white)
            .make(),
          ),
        ),
    );
  }
}
