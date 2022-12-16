import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sarim/Home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: ConstColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Splash Screen",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w800)),
          ],
        ),
      ),
    );
  }
}
