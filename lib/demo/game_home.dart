import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff232941),
                      Color(0xff171925),
                    ])),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff35abe9), Color(0xff454ce5)])),
              ),
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 30.0,
                decoration: BoxDecoration(
                    color: Color(0xff232941),
                    shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.2,
                      spreadRadius: 1.2,
                      offset: Offset(1.0, 0.5)),
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.2,
                      spreadRadius: 1.2,
                      offset: Offset(-1.0, -0.5)),
                ]),
                child: Center(
                  child: Icon(
                    Icons.view_sidebar_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Color(0xff232941),
                      shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.2,
                        spreadRadius: 1.2,
                        offset: Offset(1.0, 0.5)),
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.2,
                        spreadRadius: 1.2,
                        offset: Offset(-1.0, -0.5)),
                  ]),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Featured', style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
                Text('Products', style: GoogleFonts.kumarOneOutline(color: Colors.white, fontSize: 40.0) ),
                Container(
                  height: 100.0,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    childAspectRatio: 1.0,
                    children: [
                      GameButton(icon: 'assets/interactivity.png',),
                      GameButton(),
                      GameButton(isActive: false,icon: 'assets/mouse.png',),
                      GameButton(isActive: false,icon: 'assets/brightness.png',),
                      GameButton(isActive: false,icon: 'assets/setting.png',),
                    ],
                  ),
                ),
                Container(
                  height: 400.0,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    childAspectRatio: 1.5,
                    children: [
                      GameCard(),
                      GameCard(name: 'Farrai', label: 'Sifi Technology', imageUrl: 'assets/car1.png',),
                      GameCard(),
                      GameCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff232941),
                  boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.2,
                    spreadRadius: 1.2,
                    offset: Offset(1.0, 0.5)),
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.2,
                    spreadRadius: 1.2,
                    offset: Offset(-1.0, -0.5)),
              ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      ],
    );
  }
}

class GameButton extends StatelessWidget {
  final bool isActive;
  final String icon;
  const GameButton({Key key, this.isActive=true, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: isActive? BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.05),
          borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff35abe9), Color(0xff454ce5)])):BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.05),
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff232941),
                  Color(0xff171925),])
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(icon??'assets/game.png', color: Colors.white,fit: BoxFit.fill,scale: 0.5,),
        ),),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final String name;
  final String label;
  final String imageUrl;
  const GameCard({Key key, this.name, this.label, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.05),
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff232941),
                  Color(0xff171925),])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl??'assets/car.png', scale: 2.0,),
            Text(name??'Dual Sense', style: GoogleFonts.kumarOne(color: Colors.white, fontSize: 20.0),),
            Text(label??'Official Remote Car', style: GoogleFonts.actor(color: Colors.white, fontSize: 16.0),),
            SizedBox(height: 2.0,),
          ],
        ),
      ),
    );
  }
}

