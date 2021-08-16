import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({Key key}) : super(key: key);

  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/menu.png'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      // backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          // decoration:BoxDecoration(
          //     // borderRadius: BorderRadius.only(
          //     //   topRight: Radius.circular(50.0),
          //     //   topLeft: Radius.circular(12.0),
          //     //   bottomLeft: Radius.circular(50.0),
          //     //   bottomRight: Radius.circular(12.0),
          //     // ),
          //     gradient: LinearGradient(
          //       begin: Alignment.bottomLeft,
          //       end: Alignment.topRight, // 10% of the width, so there are ten blinds.
          //       colors: [
          //         const Color(0xffaa10de),
          //         const Color(0xff903ee5),
          //         const Color(0xff7552e9),
          //         const Color(0xff3e6ae5)], // red to yellow
          //       tileMode: TileMode.repeated,
          //     )
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today'),
              Text('London', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),),
              Text('${DateTime.now()}'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/rain-cloud-sun.png', scale: 0.3,),
                    Divider(thickness: 10.5, color: Colors.black,height: 50.0,),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Text('13', style: TextStyle(fontSize: 120.0),),
                            Padding(
                              padding: const EdgeInsets.only(left: 130.0),
                              child: Text('O', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Text('Rainy Shower',style: TextStyle(color: Colors.grey, fontSize: 18.0)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 65.0,
                      width: 65.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Image.asset('assets/flash_cloud.png', color: Colors.indigoAccent,scale: 0.7,),
                    ),
                    Container(
                      height: 65.0,
                      width: 65.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Image.asset('assets/rainy.png', color: Colors.indigoAccent,scale: 0.7,),
                    ),
                    Container(
                      height: 65.0,
                      width: 65.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Image.asset('assets/cloud.png', color: Colors.indigoAccent,scale: 0.7,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Text('Today', style: TextStyle(fontSize: 20.0),),
              SizedBox(height: 20.0,),
              Container(
                height: 200.0,
                child: GridView.count(crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  childAspectRatio: 1.5,
                  children: [
                    WeatherCard(url: 'assets/sun-wind.png',temp: '30',time: '11:00am', isActive: true,),
                    WeatherCard(url: 'assets/spark-cloud.png',temp: '15',time: '12:00am', isActive: true,),
                    WeatherCard(url: 'assets/rain-cloud-sun.png',temp: '10',time: '10:00am', isActive: true,),
                    WeatherCard(url: 'assets/sun.png',temp: '15',time: '11:00am', isActive: true,),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(crossAxisCount: 1,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 8.5,
                  children: [
                    WeatherList(url: 'assets/rainy.png', temp: '14/10', day: 'Monday, Jun 21',),
                    WeatherList(url: 'assets/flash_cloud.png', temp: '14/12', day: 'Tuesday, Jun 21',),
                    WeatherList(url: 'assets/cloud.png', temp: '14/11', day: 'Wednesday, Jun 21',),
                    WeatherList(url: 'assets/sun.png', temp: '14/10', day: 'Monday, Jun 21',),
                    WeatherList(url: 'assets/rainy.png', temp: '14/10', day: 'Monday, Jun 21',),
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

class WeatherCard extends StatelessWidget {
  final String time;
  final String url;
  final String temp;
  final bool isActive;
  const WeatherCard({Key key, this.time, this.url, this.temp, this.isActive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showAboutDialog(context: context,applicationName: 'Weather App and Please Subscribe My Channel and Share with your friends, Thank You for Watching!');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 130.0,
          width: 110.0,
          decoration:isActive? BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(12.0),
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(12.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight, // 10% of the width, so there are ten blinds.
              colors: [
                const Color(0xffaa18de),
                const Color(0xff903ee5),
                const Color(0xff7552e9),
                const Color(0xff3e6ae5)], // red to yellow
              tileMode: TileMode.repeated,
            )
          ):BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(time??'12:00am', style: TextStyle(color: isActive?Colors.white:Colors.black),),
                Image.asset(url??'assets/rain-cloud-sun.png', scale: 0.5,),
                Stack(
                  children: [
                    Text(temp??'13', style: TextStyle(color: isActive?Colors.white:Colors.black, fontSize: 18.0),),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('O', style: TextStyle(color: isActive?Colors.white:Colors.black, fontSize: 8.0),),
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class WeatherList extends StatelessWidget {
  final String day;
  final String url;
  final String temp;
  const WeatherList({Key key, this.day, this.url, this.temp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(day??'Monday, Feb 20', style: TextStyle(),),
          Image.asset(url??'assets/rainy.png', scale: 0.8, color: Colors.blue,),
          Text(temp??'14/12', style: TextStyle(),),
        ],
      ),
    );
  }
}

