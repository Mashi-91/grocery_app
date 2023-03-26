import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/components/my_button.dart';
import 'package:grocery_app/UI/components/my_textfield.dart';
import 'package:grocery_app/UI/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // Wrong Email
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }
      // Wrong Password
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }
     // wrong email message popup
     void wrongEmailMessage() {
       showDialog(
           context: context,
           builder: (context) {
             return const AlertDialog(
               title: Text('Incorrect Email'),
             );
           },
       );
     }
     // wrong password message popup
     void wrongPasswordMessage() {
       showDialog(
         context: context,
         builder: (context) {
           return const AlertDialog(
             title: Text('Incorrect Password'),
           );
         },
       );
     }

  bool isRememberMe = false;

  Widget buildRememberCb() {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: const Color(0XFF3AA756)),
              child: Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                ),
                value: isRememberMe,
                checkColor: Colors.white,
                activeColor: const Color(0XFF3AA756),
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              )),
          Text(
            'Remember me',
            style: TextStyle(
                fontSize: 16, color: Colors.grey[700], fontFamily: 'Poppins'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.grey[900],
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text("Let's get started",
                style: TextStyle(fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 70),
              MyTextField(
                controller: emailController,
                hintText: 'E-mail address',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passController,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 13, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildRememberCb(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              MyButton(
                text: 'Sign in',
                onTap: signUserIn,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 2,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.grey[700],
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(child: Divider(
                      thickness: 2,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/images/facebook.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/images/apple-logo.png'),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontFamily: 'Poppins',
                        fontSize: 17,
                        color: Colors.black54),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup_page');
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Color(0XFF3AA756),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
