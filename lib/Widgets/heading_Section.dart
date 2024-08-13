import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:resume/Utils/Utils.dart';
import 'package:resume/resours/AppColor/app_colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:resume/resours/Component/downloadfile.dart';
import 'package:url_launcher/url_launcher.dart';
import '../resours/AppResource/RoundedButton.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;

    const colorizeColors = [
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 35.0,
      fontFamily: 'Horizon',
    );

Widget BuildWevyanimation()=>Center(
  child: AnimatedTextKit(animatedTexts: [ColorizeAnimatedText(
    'Motasim Fuad',
    textStyle: colorizeTextStyle,
    colors: colorizeColors,
  ),],
  ),
);


    Future<void> _launchUrl(String _url) async {
      if (!await launch(_url)) {
        throw Exception('Could not launch $_url');
      }
    }
 Contuct(){
   Row(
    children: [
      IconButton(
          icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.blue,),
          onPressed: () {
            _launchUrl("https://wa.me/1745121112");
          }
      ),
      Text("Whatsapp"),
    ],
  );
   InkWell(
     onTap: (){
       _launchUrl("https://wa.me/1745121112");
     },
     child: Row(
      children: [
        IconButton(
            icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.blue,),
            onPressed: () {

            }
        ),
        Text("Email"),
      ],
       ),
   );
}


    return Container(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
         child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,

                      blurRadius: 15.0,
                      spreadRadius: 2.0,

                    ), //BoxShadow
                  ],
                  border: Border.all(width: 2,color: appbarColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/myImg.jpg"),
                  radius: 100,
                ),
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

              Text("HI! This is",style: TextStyle(color: appbarColor,fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.03,),
              BuildWevyanimation(),
              // Text("heading_tx2".tr,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Text("heading_tx3".tr,style: TextStyle(color: Colors.blueGrey.shade100,fontSize: 20),),
              SizedBox(height: height*0.01,),
              Text("heading_tx4".tr,style: TextStyle(color: textColor,),),
              SizedBox(height: height*0.1,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedButton(title: "CONTACT ME", onPress: (){
                    Utils.contuctbox(context,    InkWell(
                      onTap: (){
                        _launchUrl("https://wa.me/1745121112");
                      },
                      child: Row(
                        children: [
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.blue,),
                              onPressed: () {

                              }
                          ),
                          Text("Whatsapp"),
                        ],
                      ),
                    )  , "Motasim");


                  }),
                  Resume(),

                ],
              )
          
            ],
          ),


    );
  }
}
