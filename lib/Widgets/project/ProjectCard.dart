import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:resume/Utils/Utils.dart';
import 'package:resume/resours/AppColor/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../webViewScreen/webView.dart';



class ProjectCard extends StatelessWidget {
  final name;
  final message;
  final img;
  final url;

  final isweb;

  const ProjectCard({Key? key,required this.name,required this.message,required this.img, this.isweb=false,this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        color: Colors.white24,
        border: Border.all(width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),

        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              card,
              boxColor,
            ]),
      ),
      child:Column(
        children: [
          Container(
            width: 250,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image(image: AssetImage(img),height: 380,)),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            style: IconButton.styleFrom(backgroundColor: Colors.black45,),
                            icon: FaIcon(FontAwesomeIcons.github,color: Colors.white70,),
                            onPressed: () {
                              launch(url);
                            }
                        ),
                      isweb ==true  ? IconButton(
                            style: IconButton.styleFrom(backgroundColor: Colors.black45,),
                            icon: FaIcon(FontAwesomeIcons.eye,color: Colors.white70,),
                            onPressed: () {
                              Get.to(WebviewScreen(image: img));
                            }
                        ):Container(),
                      ],

                    ),
                    IconButton(
                      style: IconButton.styleFrom(backgroundColor: Colors.black45,),
                        icon: FaIcon(FontAwesomeIcons.info,color: Colors.white70,),
                        onPressed: () {
                        Utils.alartbox(context,message , name);
                        }
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ) ,
    );
  }
}


