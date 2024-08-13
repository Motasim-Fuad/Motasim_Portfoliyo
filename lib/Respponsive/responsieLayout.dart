import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {
  final MobileScreen;
  final WebScreen;

  const Responsive({Key? key,required this.MobileScreen ,required this.WebScreen }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth >900){
            // its websecren showing
            return WebScreen;
          }else{
            // its mobileScreen showing
            return MobileScreen;
          }
        }
    );
  }
}
