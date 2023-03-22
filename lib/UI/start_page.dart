import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 360,
                height: 360,
                color: Colors.transparent,
                child: Image.asset("assets/images/img.jpg"),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Congratulation',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30, fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'You can now choose the product you \n want and order it. We guarantee the \n quality of our products.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'Poppins'
              ),
            ),
            const SizedBox(height: 80),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0XFF3AA756),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Home');
              },
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.7,
                height: 50,
                child: const Text(
                  "Start shopping now!",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
