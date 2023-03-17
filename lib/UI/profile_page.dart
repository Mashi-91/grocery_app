import 'package:flutter/material.dart';
import 'package:grocery_app/Util/color_constant.dart';
import 'package:grocery_app/model/img_model.dart';
import 'package:velocity_x/velocity_x.dart';
import '';

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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Welcome to our",
                              ),
                            ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      )
    );
  }
}
