

import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


import '../../Utils/Utils.dart';
import '../AppResource/RoundedButton.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
   double? _progress;
  @override
  Widget build(BuildContext context) {
    var drivedownloadurl="https://drive.google.com/uc?export=download&id=";
    return Container(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _progress!=null? CircularProgressIndicator(
            backgroundColor: Colors.green,
            value: _progress,
          ):    RoundedButton(title: "RESUME", onPress: (){
            //You can download a single file

            FileDownloader.downloadFile(

                url: "${drivedownloadurl}15Pp0gxDYsEko3wCKmjbp9vVZJChFgb4p",
                name: "Motasim_resume",//(optional)
                // subPath: "your/desired/sub/path",//(optional)
                onProgress: ( fileName, progress) {
                  print('FILE fileName HAS PROGRESS $progress');
                  setState(() {
                    _progress=progress;
                  });

                },
                onDownloadCompleted: (String path) {
                  setState(() {
                    _progress=null;
                  });
                  Utils.snackBar("Motasim-Resume","Download Completed \n $path");
                },
                onDownloadError: (String error) {
                  setState(() {
                    _progress=null;
                  });
                  Utils.snackBar("Motasim-Resume","Error \n $error");
                });
          }),

        ],
      ),
    );
  }
}



