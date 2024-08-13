import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume/resours/AppColor/app_colors.dart';

import '../resours/AppResource/RoundedButton.dart';

class WebHeadingSection extends StatelessWidget {
  const WebHeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    Widget BuildWevyanimation()=>AnimatedTextKit(animatedTexts: [WavyAnimatedText("heading_tx2".tr,textStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold) )],
    );
    return

      Container(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Row(

              children: [
                Container(
                  width: width*0.6,
                  height: height*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi! This is",style: TextStyle(color: appbarColor,fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(height: height*0.03,),
                      BuildWevyanimation(),
                      Text("heading_tx3".tr,style: TextStyle(color: Colors.blueGrey.shade100,fontSize: 20),),
                      SizedBox(height: height*0.01,),
                      Text("heading_tx4".tr,style: TextStyle(color: textColor,),),
                      SizedBox(height: height*0.1,),
                    ],
                  ),
                ),
                Container(
                  width: width*0.3,
                  height: height*0.4,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: appbarColor),
                      borderRadius: BorderRadius.only(topRight:  Radius.circular(20),bottomLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset:Offset(0, 3),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,

                        ), //BoxShadow
                    ],
                    image: DecorationImage(image: AssetImage("assets/myImg.jpg"),fit: BoxFit.cover),
                  ),

                  // child:CircleAvatar(
                  //   backgroundImage: AssetImage("assets/myImg.jpg"),
                  //   radius: 100,
                  //
                  // ),
                )
              ],
            ),


            SizedBox(height: height*0.03,),

            // Container(
            //   height: height*0.3,
            //   width: width*0.7,
            //   decoration: BoxDecoration(
            //     border: Border.all(width: 2,color: appbarColor),
            //     borderRadius: BorderRadius.horizontal(left: Radius.circular(100),right: Radius.circular(50)),
            //     image: DecorationImage(image: AssetImage("assets/IMG20230122143520.jpg")),
            //   ),
            // ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(title: "CONTACT ME", onPress: (){}),
                RoundedButton(title: "RESUME", onPress: (){}),

              ],
            )

          ],
        ),



    );
  }
}
