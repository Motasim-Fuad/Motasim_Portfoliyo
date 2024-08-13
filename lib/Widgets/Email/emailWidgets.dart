import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



import '../../Utils/Utils.dart';
import '../../resours/AppColor/app_colors.dart';
import '../../resours/AppResource/SendButton.dart';

class EmailWidgets extends StatelessWidget {
  const EmailWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String email="motasimfuad99@gmail.com";
    TextEditingController sub = TextEditingController();
    TextEditingController bodye = TextEditingController();


    sendEmails (String subject, String body, String recipientsemail) async{
      final Email emails = Email(
        body: body,
        subject: subject,
        recipients: [recipientsemail] ,
        // cc: ['cc@example.com'],
        // bcc: ['bcc@example.com'],
        // attachmentPaths: ['/path/to/attachment.zip'],
        isHTML: false,
      );
      await FlutterEmailSender.send(emails);
    }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(

              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
                Colors.blue,
                boxColor,

              ]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mail Me ",
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold,),
                ),
                IconButton(

                    icon: FaIcon(FontAwesomeIcons.solidPaperPlane,color: Colors.blue.shade700,),
                    onPressed: () {  }
                ),

              ],
            ),
            SizedBox(
              height: 30,
            ),

            Container(

              decoration: BoxDecoration(
                border: Border.all(width: 1,),
                borderRadius: BorderRadius.circular(20),
                color: appbarbgColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("motasimfuad99@gmail.com"),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.at,color: Colors.white70,),
                        onPressed: () {  }
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: sub,
              style: TextStyle(color: textColor),
              decoration: InputDecoration(
                  hintText: "Name",

                hintStyle: TextStyle(color: textColor),
                suffixIcon:IconButton(
                    icon: FaIcon(FontAwesomeIcons.fileSignature,color: Colors.white70,),
                    onPressed: () {  }
                ),
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: bodye,

              style: TextStyle(color: textColor),
              decoration: InputDecoration(
                  hintText: "Message",
                hintStyle: TextStyle(color: textColor),
                suffixIcon: Icon(Icons.message ,color: Colors.white70,),
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            SendButton(title: "Send", onPress: () {
              if (email.isEmpty) {
                Utils.snackBar("Some thing wrong", "enter email");
              }else if(sub.text.isEmpty){
                Utils.snackBar("Some thing wrong", "enter Name");
              }else if(bodye.text.isEmpty){
                Utils.snackBar("Some thing wrong", "enter Message");
              }else{
                sendEmails(sub.text, bodye.text, email);
                bodye.clear();
                sub.clear();
              }
            })

          ],
        ),
      );
    }
  }
