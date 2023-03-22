import 'package:flutter/material.dart';
import 'package:grocery_app/UI/components/my_textfield.dart';
import 'package:grocery_app/UI/components/square_tile.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRememberMe = false;
  Widget buildRememberCb() {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.green), child: Checkbox(
            value: isRememberMe,
            checkColor: Colors.green,
            activeColor: Colors.grey[400],
            onChanged: (value) {
              setState(() {
                isRememberMe = value!;
              });
            },
          )),
          Text(
            'Remember me',
            style: TextStyle(fontSize: 16, color: Colors.grey[700], fontFamily: 'Poppins'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    var emailController;
    var passController;
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
              SizedBox(height: 40),
              const Text("Let's get started",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
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
                        style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0XFF3AA756),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/start_page');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width * 0.7,
                  height: 50,
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Poppins'),
                  ),
                ),
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
                        style: TextStyle(color: Colors.grey[700], fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 16),
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
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/images/facebook.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/images/apple-logo.png'),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: Colors.black54),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/signup_page');
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.green, fontSize: 17, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}