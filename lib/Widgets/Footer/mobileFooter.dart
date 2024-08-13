import 'package:flutter/material.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Motasim Fuad ",
            style: TextStyle(color: Colors.white),
          ),Text(
            "Gaibandha || Bangladesh",
            style: TextStyle(color: Colors.white),
          ),
          ClipPath(
            clipper: TriangleClip(),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Text(
                "Copyright @ 2024 || Motasim",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TriangleClip extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();



path.lineTo(size.width/1, 9.6);
path.lineTo(102, size.height);
path.lineTo(204, size.height - 50);
path.lineTo(150, size.height);
path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(TriangleClip oldClipper) => false;
}

// path.lineTo(size.width, 9.6);
// path.lineTo(102, size.height);
// path.lineTo(3, size.height - 50);
// path.lineTo(150, size.height);
// path.lineTo(size.width, 0);

// path.lineTo(size.width/1, 9.6);
// path.lineTo(size.height/2, size.height);
// path.lineTo(10, size.height);
// path.lineTo(20, size.height - 50);
// path.lineTo(150, size.height);
// path.lineTo(size.width, 0);

// path.lineTo(size.width/1, 9.6);
// path.lineTo(102, size.height);
// path.lineTo(204, size.height - 50);
// path.lineTo(150, size.height);
// path.lineTo(size.width, 0);

// path.lineTo(12, size.height);
// path.lineTo(204, size.height - 4);
// path.lineTo(150, size.height);
// path.lineTo(size.width, -37);

//
// path.lineTo(0, size.height - 50);
//
// path.lineTo(43, size.height - 3);
// path.lineTo(4, 44.4);
// path.lineTo(204, size.height + 4);
// path.lineTo(-65,0.878);
// path.lineTo(size.width, -37);
