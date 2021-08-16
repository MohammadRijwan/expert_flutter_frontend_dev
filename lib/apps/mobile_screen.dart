import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.menu_open_outlined,
          color: Colors.black,
          size: 25.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Text(
                  'Week in Paris',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0, color: Color(0xffB07EE8)),
                ),
                Text('2021 fashion show in Paris'),
                SizedBox(height: 20.0,),
                Text(
                  'Explore',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0,),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommended'),
                    Text('New Models'),
                    Text('2020 Show'),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 280.0,
                  child: GridView.count(
                    crossAxisCount: 1,
                    scrollDirection: Axis.horizontal,
                    childAspectRatio: 1.5,
                    children: [
                    for(int i=0; i<4;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ShowCard(),
                    ),
                  ],),
                ),
                Container(
                  height: 220.0,
                  child: GridView.count(
                    crossAxisCount: 1,
                    scrollDirection: Axis.horizontal,
                    childAspectRatio: 0.7,
                    children: [
                      for(int i=0; i<4;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ExpandedImageCard(),
                        ),
                    ],),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShowCard extends StatelessWidget {
  final String label;
  final String location;
  final String imageUrl;
  const ShowCard({Key key, this.label, this.location, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl??'https://images.unsplash.com/photo-1464863979621-258859e62245?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80'),
              fit: BoxFit.fill,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 08, 122, 0.5),
                offset: Offset(2, 1),
                blurRadius: 1.5,
                spreadRadius: 3.5,
              )
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,top: 5.0),
          child: Text(label??'Niketo Williom', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text(location??'Paris', style: TextStyle(fontSize: 16.0,),),
        ),
      ],
    );
  }
}

class ExpandedImageCard extends StatelessWidget {
  final String imageUrl;
  const ExpandedImageCard({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            image: NetworkImage(imageUrl??'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
            ),
          fit: BoxFit.fill,
        ),
        color: Color(0xFF0099EE),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(1, 190, 520, 0.5),
            offset: Offset(2, 1),
            blurRadius: 1.5,
            spreadRadius: 3.5,
          )
        ],
      ),
    );
  }
}


