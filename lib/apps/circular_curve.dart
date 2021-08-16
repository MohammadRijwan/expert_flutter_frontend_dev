import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:math' as math;

class CircularCurve extends StatelessWidget {
  RadicalModel viewModel = RadicalModel(
    pageColors: [Colors.blue[900], Colors.blueAccent],
    appearance: CircularSliderAppearance(),
    innerWidget: (double value) {
      return Transform.rotate(
          angle: degreeToRadians(-85+value),
          child: Align(
            alignment: Alignment.center,
            child: Container(
                width: value / 0.8,
                height: value / 0.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/person_icon.png'),
                      fit: BoxFit.fill
                  ),
                )),
          ));
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
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
    );
  }
}

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

double degreeToRadians(double degree) {
  return (math.pi / 180) * degree;
}
