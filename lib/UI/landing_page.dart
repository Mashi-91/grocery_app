import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
            "hey there i am here to help you",
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
