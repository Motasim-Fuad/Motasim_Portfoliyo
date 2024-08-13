
import 'package:flutter/material.dart';
import 'package:resume/Widgets/project/ProjectCard.dart';


class webProject extends StatelessWidget {
  const webProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Text("My Project",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCard(name: "Hotel Hill Side", message: "This is a hottel management applicaton. Hare someone can order food or drinks from restrunt and bar. After order customer can view there ordered item", img: "assets/hilsideproject.png"),
                ProjectCard(name: "Covit19 tracker", message: "This project can provite world wide covit19 people details. Country wise details", img: "assets/coviteproject.png"),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCard(name: "WhatAppui", message: "This is responsive whatapp ui design project", img: "assets/whatAppui.png",url: "https://github.com/murad123460833/WhatApp_UI",),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCard(isweb :true,name: "Flowbite", message: "It's a Photography related website,and its responsive also ", img: "assets/web1.png",),
                ProjectCard(isweb :true,name: "BdCricket", message: "This website is Bangladesh Cricket Board Clone", img: "assets/bdCricket.png",),

              ],
            ),
          ],
        ),
    );
  }
}
