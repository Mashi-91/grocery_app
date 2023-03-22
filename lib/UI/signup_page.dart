import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Let's get started",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 70),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/google.png",
                      height: 30),
                      const Text("Connect with google", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/facebook.png",
                          height: 30),
                      const Text("Connect with google", style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/apple-logo.png",
                          height: 30),
                      const Text("Connect with google", style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0XFF3AA756),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signin_page');
              },
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.7,
                height: 50,
                child: const Text(
                  "Sign in with E-mail",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
            ),
            const SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: Colors.black54,
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: 'Poppins'
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
}
