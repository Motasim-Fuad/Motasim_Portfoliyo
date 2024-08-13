import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IconsUrls extends StatelessWidget {
  const IconsUrls({Key? key}) : super(key: key);
       final fburl="https://www.facebook.com/profile.php?id=100061346928340&mibextid=ZbWKwL";
       final instaurl="https://www.instagram.com/_motasim___/";
       final linkinurl="https://www.linkedin.com/in/motasim-fuad-27949b319/";




  Future<void> _launchUrl(String _url) async {
    if (!await launch(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              onPressed: () {
                _launchUrl(fburl);
              }
          ),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.redAccent,),
              onPressed: () {
                _launchUrl(instaurl);
              }
          ),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,),
              onPressed: () {
                _launchUrl(linkinurl);
              }
          ),
        ],
      ),
    );
  }
}
