import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0a112d),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/bmi.png'),
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 300,
            ),
            CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Check Your BMI',
              style: TextStyle(
                letterSpacing: 1,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
