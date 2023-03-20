import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                60.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      minWidth: double.infinity,
                      height: 50,
                      color: const Color(0XFF3AA757),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin_page');
                      },
                      child: const Text(
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
                      color: const Color(0XFFD3D3D3),
                      textColor: Colors.black,
                      onPressed: () {},
                      child: const Text(
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
