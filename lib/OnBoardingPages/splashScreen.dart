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
            Image.asset("assets/images/splashScreen.png",color: SelectColor().splash.withOpacity(0.2),width: 500,fit: BoxFit.fill,
              colorBlendMode: BlendMode.color,
              filterQuality: FilterQuality.high,),
            Align(
                alignment: Alignment.center,
                heightFactor: 3.3,
                // heightFactor: 64.5,
                child: Image.asset("assets/images/splashScreenLogo.png")),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 10.7,
                child: Text(StringSelect().spc,style: TextStyle(fontSize: 35,color: SelectColor().font,fontWeight: FontWeight.bold),)),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 11.7,
                child: Text(StringSelect().spc1,style: TextStyle(fontSize: 35,color: SelectColor().font,fontWeight: FontWeight.bold),)),
            Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 15,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                  return OnBoardingTour1();
                }));
              },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(SelectColor().buttons),
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,left: 65,right: 65,bottom: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                child: Text(StringSelect().spc2),),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 64.5,
                child: Text(StringSelect().spc3,style: TextStyle(fontSize: 10,color: SelectColor().font))),
            Align(
              alignment: Alignment.bottomCenter,
                heightFactor: 66,
                child: Text(StringSelect().spc4,style:TextStyle(fontSize: 10,color: SelectColor().font,fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
