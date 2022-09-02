import 'package:flutter/material.dart';

class OnBoardingTour1 extends StatefulWidget {
  const OnBoardingTour1({Key? key}) : super(key: key);

  @override
  State<OnBoardingTour1> createState() => _OnBoardingTour1State();
}

class _OnBoardingTour1State extends State<OnBoardingTour1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: const Center(child: Text("Tour begins",style: TextStyle(fontSize: 30),))));
  }
}
