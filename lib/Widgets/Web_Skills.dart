import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume/resours/AppColor/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class WebSkills extends StatelessWidget {
  const WebSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2,color: appbarColor),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
            children: [
              Container(
                width: width*0.2,
                decoration: BoxDecoration(
                  color: appbarColor,
                  border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.white)),
                ),
              ),
              SizedBox(width: width*0.03,),
              Text("Skills I've ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(width: width*0.03,),
              Container(
                width: width*0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.white)),
                ),
              ),

            ],
          ),


          SizedBox(height: height*0.05,),
          Container(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: height*0.03),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width*0.1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.blue)),
                              ),
                            ),
                            SizedBox(width: width*0.03,),
                            Text("Flutter ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                            SizedBox(width: width*0.03,),


                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.gofore,color: Colors.redAccent.shade700,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("GetX State Management",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.pinterest,color: Colors.blue.shade700,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Provider State Management",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.laptopCode,color: Colors.green,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("API",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.replyAll,color: Colors.yellow,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Responsive",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.arrowsToDot,color: Colors.teal,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Animation",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.route,color: Colors.lightBlueAccent,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Routing",style: TextStyle(color: textColor),),
                          ],
                        ),

                      ],
                    ),
                SizedBox(width: width*0.2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width*0.1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.teal)),
                              ),
                            ),
                            SizedBox(width: width*0.03,),
                            Text("Web Development",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                            SizedBox(width: width*0.03,),


                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.html5,color: Colors.redAccent.shade700,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("HTML",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.css3Alt,color: Colors.yellow,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Css",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.sass,color: Colors.pink.shade900,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Sass",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.bootstrap,color: Colors.green,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Bootstrap",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.cannabis,color: Colors.teal,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("TailWind",style: TextStyle(color: textColor),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 60),
                              child: IconButton(

                                  icon: FaIcon(FontAwesomeIcons.squareJs,color: Colors.yellow,),
                                  onPressed: () {  }
                              ),

                            ),
                            SizedBox(width: width*0.02,),

                            Text("Vanila JS",style: TextStyle(color: textColor),),
                          ],
                        ),
                      ],
                    )

                  ],
                ),






                SizedBox(height: height*0.03),
                Container(
                  margin: EdgeInsets.only(left: 400),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width*0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.yellow)),
                            ),
                          ),
                          SizedBox(width: width*0.03,),
                          Text("Database ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                          SizedBox(width: width*0.03,),


                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 60),
                            child: IconButton(

                                icon: FaIcon(FontAwesomeIcons.fire,color: Colors.yellow,),
                                onPressed: () {  }
                            ),

                          ),
                          SizedBox(width: width*0.02,),

                          Text("FireBase",style: TextStyle(color: textColor),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 60),
                            child: IconButton(

                                icon: FaIcon(FontAwesomeIcons.database,color: Colors.pink,),
                                onPressed: () {  }
                            ),

                          ),
                          SizedBox(width: width*0.02,),

                          Text("MySQL",style: TextStyle(color: textColor),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 60),
                            child: IconButton(

                                icon: FaIcon(FontAwesomeIcons.mdb,color: Colors.greenAccent,),
                                onPressed: () {  }
                            ),

                          ),
                          SizedBox(width: width*0.02,),

                          Text("MongoDB",style: TextStyle(color: textColor),),
                        ],
                      ),
                    ],
                  ),
                ),








                SizedBox(height: height*0.03),


                SizedBox(height: height*0.03),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 60),
                      child: IconButton(

                          icon: FaIcon(FontAwesomeIcons.github,color: Colors.teal.shade900,),
                          onPressed: () {  }
                      ),

                    ),
                    SizedBox(width: width*0.02,),

                    Text("Github",style: TextStyle(color: textColor),),
                  ],
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}

