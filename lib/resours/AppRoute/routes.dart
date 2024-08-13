import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:resume/resours/AppRoute/routes_name.dart';
import 'package:resume/screen/MobileScreenLayout.dart';
import 'package:resume/screen/webscreenLayout.dart';

import '../../Respponsive/responsieLayout.dart';
import '../../screen/Splash_Screen.dart';


class AppRouts {

  static approutes ()=>[
    GetPage(
      name: Routename.splashScreen,
      page: ()=> SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(microseconds: 250),
    ),
    GetPage(
      name: Routename.Responsive,
      page: ()=> Responsive(MobileScreen: MobileScreen(),WebScreen: WebScreen()),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(microseconds: 250),
    ),

    // GetPage(
    //   name: Routename.WebviewScreen,
    //   page: ()=> WebviewScreen(),
    //   transition: Transition.leftToRightWithFade,
    //   transitionDuration: Duration(microseconds: 250),
    // ),

  ];
}