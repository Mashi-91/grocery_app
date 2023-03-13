import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 150.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}