import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserPhotoWidget(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Natasha Joel',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Image.asset(
                        'assets/pastel-de-nata.png',
                        height: 30.0,
                        width: 30.0,
                      ),
                      Text('Food Lover',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[700],
                  ),
                  Text('Western Poland',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Divider(
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1548',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w500)),
                      Text('Likes',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('105',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w500)),
                      Text('Offers',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('45',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w500)),
                      Text('Discounts',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your History',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.more_vert_outlined,
                    color: Colors.grey[700],
                  )
                ],
              ),
            ),
            HistoryCardWidget(foodName: 'Butter Cake',),
            HistoryCardWidget(foodUrl: 'food1.jpg', foodName: 'Butter Kabab',),
            HistoryCardWidget(foodUrl: 'food2.jpg', foodName: 'Veg Slice Paneer',),
            HistoryCardWidget(foodUrl: 'pao.jpg',foodName: 'Full Roasted Paw',),
          ],
        ),
      ),
    );
  }
}

class UserPhotoWidget extends StatelessWidget {
  const UserPhotoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(180.0)),
              image: DecorationImage(
                image: AssetImage('assets/food1.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 240.0, right: 250.0),
          child: Container(
            height: size.height * 0.13,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.5),
                image: DecorationImage(
                  image: AssetImage('assets/5.jpg'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.5, 1.5),
                      spreadRadius: 2.5,
                      blurRadius: 2.5)
                ]),
          ),
        ),
      ],
    );
  }
}

class HistoryCardWidget extends StatelessWidget {
  final String foodUrl;
  final String foodName;
  const HistoryCardWidget({Key key, this.foodUrl, this.foodName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0, vertical: 10.0),      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage('assets/${foodUrl??'cake.jpg'}'), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${foodName??''}',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text('45K',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text('45K',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Got on Nov 20,2021',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
