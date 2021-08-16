import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/menu_icon.PNG',
          ),
        ),
        backgroundColor: Color(0xff1c2025),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_location_rounded,
              size: 20.0,
              color: Colors.white,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'New York, NY',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff2d2f3a),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/person_icon.png',
                  ),
                )),
          ),
        ],
      ),
      backgroundColor: Color(0xff1c2025),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff2d2f3a),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, bottom: 15.0),
                        child: Image.asset('assets/search_icon.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 5.0, bottom: 12.0),
                        child: Container(
                          height: 50.0,
                          width: size.width*0.7,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),

                            ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                Text('Popular Categories', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 40.0,),
                Container(
                  height: 100.0,
                  child: GridView.count(crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  childAspectRatio: 1.0,
                  children: [
                    IconCard(),
                    IconCard(label: 'Hotels', icons: Icons.hotel,),
                    IconCard(label: 'Visa', icons: Icons.phone_iphone_outlined,),
                    IconCard(label: 'Buses', icons: Icons.bus_alert,),
                  ],
                  ),
                ),
                SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommended', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                    Text('See All', style: TextStyle(color: Color(0xfffaa587), fontSize: 14.0, fontWeight: FontWeight.bold),),

                  ],
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: GridView.count(crossAxisCount: 1,
                    scrollDirection: Axis.horizontal,
                    childAspectRatio: 1.0,
                    children: [
                      ImageCard(),
                      ImageCard(name: 'Beach Side', locationName: 'Hawai',),
                      ImageCard(locationName: 'New York', name: 'Lakes',),
                      ImageCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: BottomSheetCard(),
    );
  }
}

class IconCard extends StatelessWidget {
  final IconData icons;
  final String label;
  const IconCard({Key key, this.icons, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 100.0,
          width: 90.0,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xff2d2f3a),
          ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(icons??Icons.airplanemode_on, size: 35.0, color: Color(0xfffaa587),),
                Text(
                  label??'Flights',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String name;
  final String locationName;
  const ImageCard({Key key, this.name, this.locationName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name??'Mountain Safari', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Icon(Icons.location_on, size: 12.0, color: Colors.white,),
                  SizedBox(width: 5.0,),
                  Text(locationName??'India', style: TextStyle(fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff1c2025),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xff2d2f3a),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_filled, color: Colors.white,size: 25.0,),
              Icon(Icons.bus_alert, color: Colors.white,size: 25.0,),
              Icon(Icons.add_alert_rounded, color: Colors.white,size: 25.0,),
              Icon(Icons.person, color: Colors.white,size: 25.0,),
            ],
          ),
        ),
      ),
    );
  }
}



