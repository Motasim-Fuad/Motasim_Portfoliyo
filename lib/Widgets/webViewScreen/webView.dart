import 'package:flutter/cupertino.dart';

class WebviewScreen  extends StatelessWidget {
  final image;
  WebviewScreen ({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Container(
          width: double.infinity,
          child: Image(image: AssetImage(image)),
    ),
    );
  }
}
