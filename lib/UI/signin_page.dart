import 'package:flutter/material.dart';
import 'package:grocery_app/UI/components/my_buttons.dart';
import 'package:grocery_app/UI/components/my_textfield.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:velocity_x/velocity_x.dart';

class SignIn extends StatefulWidget {

  SignIn({Key? key}) : super(key: key);

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  get usernameController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.grey[900],
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            90.heightBox,
            const Text("Let's get started",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
            25.heightBox,
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            10.heightBox,
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            50.heightBox,
            MyButton(
              onTap: signUserIn,
            ),
            40.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 1,
                    color: Colors.grey[400],
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                        "or",
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    ),
                  ),
                  Expanded(child: Divider(
                    thickness: 1,
                    color: Colors.grey[400],
                  ))
                ],
              ),
            ),
            70.heightBox,
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SignInButton.mini(
                    buttonType: ButtonType.google,
                    buttonSize: ButtonSize.large,
                    onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  buttonSize: ButtonSize.large,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.apple,
                  buttonSize: ButtonSize.large,
                  onPressed: () {},
                ),
              ],
            ),
            100.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                5.widthBox,
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                      "Sign up",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // sign user in method
  signUserIn() {
  }

  void onTap() {
  }
}