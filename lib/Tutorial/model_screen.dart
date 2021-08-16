import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffee6cb6),
                Color(0xffea76c4),
                Color(0xffe680d2),
                Color(0xffe08ade),
                Color(0xffda94e9),
                Color(0xffcd98f0),
                Color(0xffbf9df5),
                Color(0xffb0a1f9),
                Color(0xff95a1f9),
                Color(0xff76a1f7),
                Color(0xff52a0f2),
                Color(0xff149feb),
          ])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Icon(Icons.arrow_back_ios),
          actions: [Icon(Icons.more_vert)],
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/girl.png'),
                fit: BoxFit.fill,
              )),
            ),
            Positioned(
              top: 150.0,
              left: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Text(
                    '10+',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.height * 0.03,
              left: 10.0,
              right: 10.0,
              child: Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Milla Jovovich',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0),
                      ),
                      SizedBox(height: 2.0,),
                      Text(
                        'This is a Demo Text For the above Model Who is Showing her Pose. You can Subscribe my channel for more information about flutter Developments, i will share all the most interesting stuffs of the flutter on my video, so guys subscribe Ridz Creations, Support me and share with your friends so they can also learn, I want to spread my knowledge to all developer or who are new to learn.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          fontSize: 16.0
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 40.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                              color: Color(0xffBC082B),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Follow", style: TextStyle(color: Colors.white),),
                                Icon(Icons.play_circle_fill, color: Colors.white,)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
