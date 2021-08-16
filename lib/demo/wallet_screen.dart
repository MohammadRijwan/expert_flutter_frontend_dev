import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glass_card/glass_card.dart';
import 'package:glass_kit/glass_kit.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 30, color:_textColor(context),),
        onPressed: () {},
      ),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NeumorphicButton(
              onPressed: () {
                print("onClick");
              },
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.favorite_border,
                color: _iconsColor(context),
              ),
            ),
            NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: () {
                  NeumorphicTheme.of(context).themeMode =
                  NeumorphicTheme.isUsingDark(context)
                      ? ThemeMode.light
                      : ThemeMode.dark;
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Toggle Theme",
                  style: TextStyle(color: _textColor(context)),
                )),
            NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return Container();
                  }));
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  // border: NeumorphicBorder()
                ),
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Go to full sample",
                  style: TextStyle(color: _textColor(context)),
                )),
          ],
        ),
      ),
    );

    //   Container(
    //   decoration: BoxDecoration(
    //     color: Colors.grey[900],
    //   ),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     appBar: AppBar(
    //       backgroundColor: Colors.transparent,
    //       elevation: 0.0,
    //       leading: Icon(
    //         Icons.arrow_back_ios,
    //         color: Colors.white,
    //       ),
    //       actions: [
    //         Icon(
    //           Icons.more_vert,
    //           color: Colors.white,
    //         )
    //       ],
    //     ),
    //     body: Padding(
    //       padding: EdgeInsets.only(top: 8.0, left: 20.0, right: 15.0),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             'Your Cards',
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 20.0,
    //                 fontWeight: FontWeight.w500),
    //           ),
    //           Text(
    //             'You have 3 Active Cards',
    //             style: TextStyle(
    //                 color: Colors.grey,
    //                 fontSize: 14.0,
    //                 fontWeight: FontWeight.w500),
    //           ),
    //           SizedBox(
    //             height: 20.0,
    //           ),
    //           Container(
    //             height: 200.0,
    //             child: GridView.count(
    //               scrollDirection: Axis.horizontal,
    //               crossAxisCount: 1,
    //               childAspectRatio: 0.55,
    //               children: [
    //                 CreditCardWidget(),
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CardGlass(
        height: 130,
        width: 300,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Battery  🔋',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Text(
                    '98%',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '12 hours to fully discharge',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


Color _iconsColor(BuildContext context) {
  final theme = NeumorphicTheme.of(context);
  if (theme.isUsingDark) {
    return theme.current.accentColor;
  } else {
    return Colors.redAccent;
  }
}

Color _textColor(BuildContext context) {
  if (NeumorphicTheme.isUsingDark(context)) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}