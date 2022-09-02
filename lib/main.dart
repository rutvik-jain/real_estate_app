import 'package:flutter/material.dart';
import 'package:real_estate_app/CommonModules/colors.dart';
import 'package:real_estate_app/OnBoardingPages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

