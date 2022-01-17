import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class ImageSplashScreen extends StatefulWidget {
  const ImageSplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<ImageSplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const Calculator())); //    Navigator.of(context).pushReplacementNamed(HOME_PAGE);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/icon.jpg',
          fit: BoxFit.fitWidth,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
//        fit: BoxFit.cover,
      ),
    );
  }
}
