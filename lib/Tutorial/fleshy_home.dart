import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FleshyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff393939),
      appBar: AppBar(
        backgroundColor: Color(0xff393939),
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color(0xff363636),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Center(
              child: Icon(
                Icons.grid_view,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Text(
          'Tuesday 01 Jul 2021',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff363636),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Center(
                child: Icon(
                  Icons.search_outlined,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff393939),
                    image: DecorationImage(
                        image: AssetImage('assets/bg.png'), fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 3.5,
                        spreadRadius: 3.5,
                      )
                    ]),
              ),
              SizedBox(
                height: 20.0,

              ),
              Text(
                'Popular Events',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: size.height*0.6,
                width: 400.0,
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 3.0,
                  children: [
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color(0xff393939),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.9),
                offset: Offset(0.0, 0.0),
                blurRadius: 2.5,
                spreadRadius: 1.5,
              )
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff393939),
                    image: DecorationImage(
                        image: AssetImage('assets/bg.png'), fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Music', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, color: Color(0xff53AFC9),),),
                  Text('Glastonbury Festival', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, color: Colors.white54,
                  ),),
                  SizedBox(height: 5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_today_outlined, color: Colors.white54,),
                      SizedBox(width: 10.0,),
                      Text('01-30 July, 2021', style: TextStyle(color: Colors.white54, fontWeight:FontWeight.w500, fontSize: 16.0),)
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
