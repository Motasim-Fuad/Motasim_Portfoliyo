import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/About Me.dart';


import '../Widgets/Email/emailWidgets.dart';
import '../Widgets/Footer/mobileFooter.dart';
import '../Widgets/IconsUrl/IconsUrls.dart';
import '../Widgets/Web_Skills.dart';
import '../Widgets/project/Project.dart';
import '../Widgets/webHeadingSection.dart';
import '../Widgets/web_appbar.dart';
import '../resours/AppColor/app_colors.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: forgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Webappbar(),
          WebHeadingSection(),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          AboutMe(),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          WebSkills(),
          webProject(),
            EmailWidgets(),
            IconsUrls(),

            SizedBox(height: 10,),
            MobileFooter()
          ],
        ),
      ),
    );
  }
}






// Webappbar(),
// WebHeadingSection(),
// SizedBox(height: MediaQuery.of(context).size.height*0.2,),
// AboutMe(),
// SizedBox(height: MediaQuery.of(context).size.height*0.2,),
// WebSkills(),
// webProject(),
// EmailScreen(),