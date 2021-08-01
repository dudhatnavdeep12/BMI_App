import 'package:bmi_project/home.dart';
import 'package:bmi_project/result.dart';
import 'package:bmi_project/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xff0a112d), // navigation bar color
      statusBarColor: Color(0xff0a112d), // status bar color
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => Home(),
        'result': (context) => Result(),
      },
    ),
  );
}
