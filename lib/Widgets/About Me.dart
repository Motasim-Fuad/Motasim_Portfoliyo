import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume/resours/AppColor/app_colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(width: 2,color: appbarColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 3),
            blurRadius: 5.0,
            spreadRadius: 2.0,

          ), //BoxShadow

        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("About Me",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),),
             SizedBox(width: width*0.03,),
                Container(
                  width: width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.white)),
                  ),
                ),

            ],
          ),


          SizedBox(height: height*0.1,),
          Text("About_me".tr,style: TextStyle(color: textColor),),

        ],
      ),
    );
  }
}
