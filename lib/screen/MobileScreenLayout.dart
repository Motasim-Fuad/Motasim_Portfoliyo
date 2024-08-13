import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:resume/resours/AppColor/app_colors.dart';

import '../Widgets/About Me.dart';

import '../Widgets/Email/emailWidgets.dart';
import '../Widgets/Footer/mobileFooter.dart';
import '../Widgets/IconsUrl/IconsUrls.dart';
import '../Widgets/Skills.dart';
import '../Widgets/heading_Section.dart';
import '../Widgets/project/mobile_project.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: forgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,

        foregroundColor: appbarColor,



        // leading: Ink.image(image: AssetImage("assets/log.png",)),
        // leading: CircleAvatar(
        //   backgroundImage: AssetImage("assets/IMG20230122143520.jpg"),
        // ),
        actions: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: appbarColor),

            ),
            child: Row(

              children: [
                InkWell(
                  onTap: (){
                    Get.updateLocale(Locale("en","US"));
                  },
                  child: Text("EN"),
                ),
              ],
            ),
          ),
          SizedBox(width: 2,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: appbarColor),

            ),
            child: Row(

              children: [
                InkWell(
                  onTap: (){
                    Get.updateLocale(Locale("bn","BD"));
                  },
                  child: Text("BN"),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),


        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [

                HeadingSection(),
                SizedBox(height: height*0.2,),
                AboutMe(),
                SizedBox(height: height*0.2,),
                MySkills(),
                mobileProject(),
                SizedBox(height: height*0.1,),
                EmailWidgets(),



                IconsUrls(),

              SizedBox(height: height*0.01,),

                MobileFooter(),



              ],
            ),
        ),
      ),

    );
  }
}
