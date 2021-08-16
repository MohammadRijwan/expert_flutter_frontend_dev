import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child:   Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          alignment: Alignment.center,
          child: ClipPath(
            clipper: ClipPathClass(),
            child: SizedBox(
              width: 320,
              height: 240,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        )



        // Column(
        //   children: [
        //     SizedBox(height: 200.0,),
        //     Stack(
        //       children: <Widget>[
        //         Container(
        //           margin: EdgeInsets.symmetric(horizontal: 32),
        //           width: double.infinity,
        //           height: 24,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(16),
        //             color: backgroundColor,
        //             boxShadow: [
        //               BoxShadow(color: lightShadowColor, offset: Offset(1, 4)),
        //               BoxShadow(color: shadowColor, offset: Offset(-1, -4)),
        //             ],
        //           ),
        //         ),
        //         Positioned(
        //           top: 2,
        //           bottom: 2,
        //           child: Container(
        //             margin: EdgeInsets.symmetric(horizontal: 36),
        //             width: 300,
        //             height: 20,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(16),
        //               gradient: LinearGradient(
        //                 colors: [seekBarLightColor, seekBarDarkColor],
        //                 begin: Alignment.topCenter,
        //                 end: Alignment.bottomCenter,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: <Widget>[
        //         CircularSoftButton(
        //           icon: Icon(Icons.skip_previous),
        //         ),
        //         CircularSoftButton(
        //           icon: Icon(
        //             Icons.play_arrow,
        //             size: 48,
        //             color: seekBarDarkColor,
        //           ),
        //           radius: 48,
        //         ),
        //         CircularSoftButton(
        //           icon: Icon(Icons.skip_next),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),





        // Padding(
        //   padding: EdgeInsets.all(20 / 2),
        //   child: Stack(
        //     children: <Widget>[
        //       Container(
        //         width: 100,
        //         height: 100,
        //         decoration: BoxDecoration(
        //           color: backgroundColor,
        //           borderRadius: BorderRadius.circular(100),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: shadowColor, offset: Offset(8, 6), blurRadius: 12),
        //             BoxShadow(
        //                 color: lightShadowColor,
        //                 offset: Offset(-8, -6),
        //                 blurRadius: 12),
        //           ],
        //         ),
        //       ),
        //       Positioned.fill(child: Icon(Icons.add, size: 30,)),
        //     ],
        //   ),
        // )


        // Container(
        //   width: MediaQuery.of(context).size.width - 50,
        //   height: MediaQuery.of(context).size.width - 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(
        //         MediaQuery.of(context).size.width),
        //     gradient: LinearGradient(
        //       colors: [shadowColor, lightShadowColor],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //           color: shadowColor,
        //           offset: Offset(8, 6),
        //           blurRadius: 12),
        //       BoxShadow(
        //           color: lightShadowColor,
        //           offset: Offset(-8, -6),
        //           blurRadius: 12),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}


class CircularSoftButton extends StatelessWidget {
  double radius;
  final Widget icon;

  CircularSoftButton({Key key, this.radius, @required this.icon})
      : super(key: key) {
    if (radius == null || radius <= 0) radius = 32;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                BoxShadow(
                    color: shadowColor, offset: Offset(8, 6), blurRadius: 12),
                BoxShadow(
                    color: lightShadowColor,
                    offset: Offset(-8, -6),
                    blurRadius: 12),
              ],
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}


Color backgroundColor = Color(0xFFF1F2F6);
Color shadowColor = Color(0xFFDADFF0);
Color lightShadowColor = Colors.white;
Color textColor = Color(0xFF707070);
Color seekBarLightColor = Color(0xFFB8ECED);
Color seekBarDarkColor = Color(0xFF37C8DF);



class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 0.25, size.height);
    path.lineTo(size.width * 0.25, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

