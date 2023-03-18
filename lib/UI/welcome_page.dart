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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.jpg"),
                  )
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Welcome to our \n Grocery app \n",
                    style: TextStyle(color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 30),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "Our goal is to always provide you with \n fresh and quality products.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      minWidth: double.infinity,
                      height: 50,
                      color: Color(0XFF3AA757),
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "Next",
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      minWidth: double.infinity,
                      height: 50,
                      color: Color(0XFFD3D3D3),
                      textColor: Colors.black,
                      onPressed: () {},
                      child: Text(
                        "Skip",
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
