import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/resours/AppColor/app_colors.dart';
import 'package:resume/resours/AppRoute/routes_name.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  static const colorizeColors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

   static const colorizeTextStyle = TextStyle(
    fontSize: 35.0,
    fontFamily: 'Horizon',
  );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget loading()=>Center(
    child: AnimatedTextKit(animatedTexts: [ColorizeAnimatedText(
      'Loading',
      textStyle: SplashScreen.colorizeTextStyle,
      colors: SplashScreen.colorizeColors,
    ),],
    ),
  );

  islogin(){
    Timer(Duration(seconds: 5), () {
      Get.offNamed(Routename.Responsive);
    });
  }

  @override

  void initState() {
    // TODO: implement initState

    islogin();

  }

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: forgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SpinKitWave(
            //   color: Colors.blue,
            //   size: 50.0,
            // ),
            Lottie.asset(
              'assets/splash.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),

            loading(),
          ],
        )


      ) ,
    ) ;
  }
}
