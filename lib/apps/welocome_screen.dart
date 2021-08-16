import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500.0,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.58,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xff6497ee),
                          Color(0xffd18fde),
                          Color(0xffff92b2),
                          Color(0xfffffad89),
                          Color(0xfff6d27e),
                        ]),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_open_sharp, color: Colors.white),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1581704906775-891dd5207444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 10.0, right: 10.0),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130.0, left: 10.0, right: 10.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 10.0,),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 300.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              for (int i = 0; i < 3; i++)
                                SideText(
                                  text: "Album",
                                ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 1,
                          childAspectRatio: 1.4,
                          scrollDirection: Axis.horizontal,
                          padding:
                              EdgeInsets.only(  left: 10.0, top: 40.0),
                          children: [
                            for (int i = 0; i < 5; i++)
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CenterContainer(),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 240.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                              SideText(
                                text: "Songs",
                                color: Colors.blueAccent,
                              ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 1,
                          childAspectRatio: 3.6,
                          // scrollDirection: Axis.horizontal,
                          padding:
                          EdgeInsets.only(  left: 10.0, top: 20.0),
                          children: [
                            for (int i = 0; i < 5; i++)
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                child: ListContainer(),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        elevation: 0.0,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1581704906775-891dd5207444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Basic', style: TextStyle(fontSize: 20.0, color: Colors.blueAccent, fontWeight: FontWeight.w700),),
            Text('Tom Middieton', style: TextStyle(fontSize: 12.0, color: Colors.blue[400], fontWeight: FontWeight.w700),),
          ],),
        ),
        Container(width: 100.0,),
        Expanded(child: Icon(Icons.more_vert, size: 20.0,color: Colors.grey,)),
      ],
    );
  }
}

class CenterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1581704906775-891dd5207444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 100.0,
            left: 10.0,
            child: Text('Enjoyment', style: TextStyle(fontSize: 25.0, color: Colors.indigoAccent, fontWeight: FontWeight.w700),),),
        Positioned(
          bottom: 70.0,
          left: 10.0,
          child: Text('Tom Middieton', style: TextStyle(fontSize: 18.0, color: Colors.indigoAccent[400], fontWeight: FontWeight.w700),),),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child:Icon(Icons.play_circle_filled, size: 50.0, color: Colors.white,) ),
      ],
    );
  }
}

class SideText extends StatelessWidget {
  const SideText({Key key, this.text, this.color= Colors.white}) : super(key: key);
  final text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 56.3 / 12.0,
        child: Text(
          '$text',
          style: TextStyle(
              color: color, fontWeight: FontWeight.w700, fontSize: 16.0),
        ));
  }
}
