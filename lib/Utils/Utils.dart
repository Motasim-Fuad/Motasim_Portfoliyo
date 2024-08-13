
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resours/AppColor/app_colors.dart';
class Utils{

  static alartbox(context,String msg,String name){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(name,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),),
        backgroundColor: appbarbgColor,
        content: Text(msg),
      );
    });
  }
  static contuctbox(context,Widget msg,String name){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(name,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),),
        backgroundColor: appbarbgColor,
        content: msg,
      );
    });
  }
  static snackBar(String title,String message){
    Get.snackbar(
      title,
      message,
      colorText: appbarColor,
    );
  }
}