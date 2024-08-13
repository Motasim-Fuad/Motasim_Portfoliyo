import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:resume/resours/AppResource/RoundedButton.dart';

import '../resours/AppColor/app_colors.dart';


class Webappbar extends StatelessWidget {
  const Webappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(

              icon: FaIcon(FontAwesomeIcons.meetup,color: Colors.red,size: 50,),
              onPressed: () {

              }
          ),

          Row(
            children: [

              TextButton(onPressed: (){}, child: Text("About Me",style: TextStyle(color: appbarColor,fontWeight: FontWeight.bold,fontSize: 17),)),
              TextButton(onPressed: (){}, child: Text("Skills",style: TextStyle(color: appbarColor,fontWeight: FontWeight.bold,fontSize: 17),)),
              TextButton(onPressed: (){}, child: Text("Project",style: TextStyle(color: appbarColor,fontWeight: FontWeight.bold,fontSize: 17),)),
              TextButton(onPressed: (){}, child: Text("Experience",style: TextStyle(color: appbarColor,fontWeight: FontWeight.bold,fontSize: 17),)),
              TextButton(onPressed: (){}, child: Text("Education",style: TextStyle(color: appbarColor,fontWeight: FontWeight.bold,fontSize: 17),)),

            ],
          ),

          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale("en","US"));
              }, child: Text("English",style: TextStyle(color: appbarColor),)
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale("bn","BD"));
              }, child: Text("Bangla",style: TextStyle(color: appbarColor),)
              ),
            ],
          )


        ],
      ),
    );
  }
}
