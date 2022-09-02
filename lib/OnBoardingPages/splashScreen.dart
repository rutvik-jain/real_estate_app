import 'dart:async';
import 'package:flutter/material.dart';
import 'package:real_estate_app/OnBoardingPages/onBoardingTour1.dart';
import 'package:real_estate_app/CommonModules/colors.dart';
import 'package:real_estate_app/CommonModules/Strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(33, 98, 138, 0.8),
        body: Stack(
          children: [
            Image.asset("assets/images/splashScreen.png",color: splash.withOpacity(0.2),width: 500,fit: BoxFit.fill,
              colorBlendMode: BlendMode.color,
              filterQuality: FilterQuality.high,),
            Positioned(
                top: 260,
                left: 90,
                right: 93,
                child: Image.asset("assets/images/splashScreenLogo.png")),
            const Positioned(
                top: 400,
                left: 150,
                child: Text(spc,style: TextStyle(fontSize: 35,color: font,fontWeight: FontWeight.bold),)),
            const Positioned(
                top: 440,
                left: 100,
                child: Text(spc1,style: TextStyle(fontSize: 35,color: font,fontWeight: FontWeight.bold),)),
            Positioned(
                left: 100,
                top: 680,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return OnBoardingTour1();
                  }));
                },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(buttons),
                    padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,left: 65,right: 65,bottom: 15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                  child: Text(spc2),)),
            const Positioned(
                top: 760,
                left: 160,
                child: Text(spc3,style: TextStyle(fontSize: 10,color: font))),
            const Positioned(
                top: 775,
                left: 185,
                child: Text(spc4,style:TextStyle(fontSize: 10,color: font,fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
