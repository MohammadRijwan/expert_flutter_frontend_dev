import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CarBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff32a9fd),
                    Color(0xff1055e1),
                    ]
                  )
                ),
              ),),
              Expanded(flex: 3,child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff23233d),
                          Color(0xff23233d),
                          Color(0xff23233d),
                          Color(0xff12111f),
                        ]
                    )
                ),
              ))
            ],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Icon(Icons.arrow_back, color: Colors.white,size: 30.0,),
            actions: [
              Icon(Icons.search, color: Colors.white,size: 30.0,),
            SizedBox(width: 10.0,),
            ],
            ),
            body: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0, left: 20.0),
                    child: Text('Bugatti \nChiron', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/car.png', scale: 1.5,),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0, left: 30.0),
                          child: Column(
                            children: [
                              Text('Technical \nInformation', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                              SizedBox(height: 30.0,),
                              Text('Speed', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      gradient: LinearGradient(
                                          colors: viewModel.pageColors,
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight,
                                          tileMode: TileMode.decal)),
                                  child: SleekCircularSlider(
                                    onChangeStart: (double value) {
                                      // viewModel.value=value;
                                    },
                                    onChangeEnd: (double value) {
                                      // viewModel.value=value;
                                    },
                                    innerWidget: viewModel.innerWidget,
                                    appearance: viewModel.appearance,
                                    min: viewModel.min,
                                    max: viewModel.max,
                                    initialValue: viewModel.value,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Text('Power', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      gradient: LinearGradient(
                                          colors: viewModel.pageColors,
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight,
                                          tileMode: TileMode.decal)),
                                  child: SleekCircularSlider(
                                    onChangeStart: (double value) {
                                      // viewModel.value=value;
                                    },
                                    onChangeEnd: (double value) {
                                      // viewModel.value=value;
                                    },
                                    innerWidget: viewModel.innerWidget,
                                    appearance: viewModel.appearance,
                                    min: viewModel.min,
                                    max: viewModel.max,
                                    initialValue: viewModel.value,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child:Container(),),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0, left: 150.0),
                    child: Row(
                      children: [
                        Text('\$ 59.99', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0),),
                        Text('/month', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 18.0),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0, left: 20.0, bottom: 10.0),
                      child: Container(
                        height: 50.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xff1055e1),
                              Color(0xff32a9fd),
                            ]
                          )
                        ),
                        child: Center(
                          child: Text('Book Now', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white
                          ),),
                        ),
                      )
                    ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


RadicalModel viewModel = RadicalModel(
  pageColors: [Colors.blue[900], Colors.blueAccent],
  appearance: CircularSliderAppearance(),
  innerWidget: (double value) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.transparent,
          child: Text('80%', style: TextStyle(color: Colors.white, fontSize: 25.0),),
        ),
      ),
    );
  },
);


class RadicalModel {
  final List<Color> pageColors;
  final CircularSliderAppearance appearance;
  final double min;
  final double max;
  double value;
  final InnerWidget innerWidget;

  RadicalModel(
      {this.pageColors,
        this.appearance,
        this.min = 0,
        this.max = 100,
        this.value = 80,
        this.innerWidget});
}

