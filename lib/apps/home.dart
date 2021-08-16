import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.10,
            left: size.width * 0.20,
            right: size.width * 0.20,
            bottom: size.height * 0.1),
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height:100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: Image.network('https://images.unsplash.com/photo-1581704906775-891dd5207444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80').image,
                      )
                    ),
                  )
                  // Image.network('https://images.unsplash.com/photo-1581704906775-891dd5207444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
