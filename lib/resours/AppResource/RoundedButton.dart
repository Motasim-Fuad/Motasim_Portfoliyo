import 'package:flutter/material.dart';
import 'package:resume/resours/AppColor/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final title;
  final VoidCallback onPress;
  const RoundedButton({Key? key,required this.title,required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
          height:MediaQuery.of(context).size.height*0.08,
          width:MediaQuery.of(context).size.width*0.3,

          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),

            ],
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2,color: appbarColor),
          ),
          child:
          Center(
            child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: appbarColor),),
          )
      ),
    );
  }
}

