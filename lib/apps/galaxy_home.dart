import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalaxyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/darksky2.jpg'),
      )),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.more_vert,
            size: 30.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style:
                      GoogleFonts.akronim(color: Colors.white, fontSize: 50.0),
                ),
                Text(
                  'The Beauty',
                  style:
                      GoogleFonts.aldrich(color: Colors.white, fontSize: 30.0),
                ),
                Text(
                  'of the Nature',
                  style: GoogleFonts.aguafinaScript(
                      color: Colors.white, fontSize: 40.0),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height:180.0,
                        child: GridView.count(crossAxisCount: 1,
                        scrollDirection: Axis.horizontal,
                        childAspectRatio: 0.5,
                        children: [
                          for(int i=0 ;i<5; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/bg.png'),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                        ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.only(
              left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue[900],
                      Colors.blueAccent,
                    ])),
            child: Center(
                child: Text('START TOUR',
                    style: GoogleFonts.aclonica(
                      color: Colors.white,
                      fontSize: 25.0,
                    ))),
          ),
        ),
      ),
    );
  }
}
