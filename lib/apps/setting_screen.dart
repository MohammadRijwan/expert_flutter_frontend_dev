import 'package:flutter/material.dart';

import '../my_colors.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.white, blurRadius: 2.0, spreadRadius: 2.0)
        ],
        image: DecorationImage(
            image: AssetImage(
              'assets/pexels-sharon-mccutcheon-1450034.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma()),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.5, 0.5),
                          spreadRadius: 1.5,
                          blurRadius: 0.5)
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/girl.png'),
                      fit: BoxFit.contain,
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Amelia',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Amelia@gmail.com',
                style: TextStyle(
                    color: MyColors.lightChocolate,
                    fontSize: 14.0,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    color: MyColors.lightBack3),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              CardData(
                                isDividerShow: true,
                              ),
                              CardData(
                                color: MyColors.lightbegini3,
                                imageUrl: 'connection.png',
                                label: 'Device Connectivity',
                                labelInfo: 'Bluetooth, Printing',
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              CardData(
                                isDividerShow: true,
                                color: MyColors.lightblue3,
                                imageUrl: 'Path 10.png',
                                label: 'Sound',
                                labelInfo: 'Do not disturb, Ringtone, Vibrate',
                              ),
                              CardData(
                                isDividerShow: true,
                                color: MyColors.lightOrange2,
                                imageUrl: 'Desplay.png',
                                label: 'Display',
                                labelInfo:
                                    'Brightness, Eye comfort, Text & Display size',
                              ),
                              CardData(
                                isDividerShow: true,
                                color: MyColors.darkPink,
                                imageUrl: 'bell.png',
                                label: 'Notifications',
                                labelInfo: 'Badges, Lock screen notifications',
                              ),
                              CardData(
                                color: MyColors.lightGrn3,
                                imageUrl: 'battery.png',
                                label: 'Battery',
                                labelInfo: 'Power saving mode, Battery usage',
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              CardWithSwitch(
                                isDividerShow: true,
                                imageUrl: 'brightness.png',
                                color: MyColors.lightyellow3,
                                labelInfo: 'Enable dark or light mode',
                                label: 'User Interface',
                              ),
                              CardWithSwitch(
                                color: MyColors.lightRed3,
                                imageUrl: 'interactivity.png',
                                label: 'Digital balance',
                                labelInfo: 'Gesture Settings',
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardData extends StatelessWidget {
  final bool isDividerShow;
  final String imageUrl;
  final Color color;
  final String label;
  final String labelInfo;
  const CardData(
      {Key key,
      this.isDividerShow = false,
      this.imageUrl,
      this.color,
      this.label,
      this.labelInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: color ?? MyColors.lightpink3,
                  ),
                  child: Image.asset(
                    'assets/${imageUrl ?? 'Group 1.png'}',
                    scale: 0.8,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label ?? 'Wireless & Network',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                        ),
                        Text(
                          labelInfo ??
                              'Wifi, Dual Sim settings, Mobile network',
                          style: TextStyle(
                              color: MyColors.lightChocolate,
                              fontSize: 14.0,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isDividerShow)
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Divider(
                color: Colors.grey,
                thickness: 0.2,
                endIndent: 2.0,
                indent: 1.0,
              ),
            ),
        ],
      ),
    );
  }
}

class CardWithSwitch extends StatefulWidget {
  final bool isDividerShow;
  final String imageUrl;
  final Color color;
  final String label;
  final String labelInfo;

  bool enable = false;
  CardWithSwitch(
      {Key key,
      this.isDividerShow = false,
      this.imageUrl,
      this.color,
      this.label,
      this.labelInfo})
      : super(key: key);

  @override
  _CardWithSwitchState createState() => _CardWithSwitchState();
}

class _CardWithSwitchState extends State<CardWithSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: widget.color ?? MyColors.lightpink3,
                  ),
                  child: Image.asset(
                    'assets/${widget.imageUrl ?? 'Group 1.png'}',
                    scale: 0.8,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.label ?? 'Wireless & Network',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                        ),
                        Text(
                          widget.labelInfo ??
                              'Wifi, Dual Sim settings, Mobile network',
                          style: TextStyle(
                              color: MyColors.lightChocolate,
                              fontSize: 14.0,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      widget.enable=!widget.enable;
                    });
                  },
                  child: Container(
                      width: 80.0,
                      height: 60.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.enable? Image.asset('assets/color_switch .png',):Image.asset('assets/switch.png'),
                      )),
                )
              ],
            ),
          ),
          if (widget.isDividerShow)
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Divider(
                color: Colors.grey,
                thickness: 0.2,
                endIndent: 2.0,
                indent: 1.0,
              ),
            ),
        ],
      ),
    );
  }
}
