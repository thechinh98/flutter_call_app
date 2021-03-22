import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}
  double getProportionateScreenHeight(double inputHeight){
    double screenHeight = SizeConfig.screenHeight;
    return (inputHeight / 896.0) * screenHeight;
  }
  double getProportionateScreenWidth(double inputWidth){
    double screenWidth = SizeConfig.screenWidth;
    return (inputWidth / 414.0) * screenWidth;
  }
class VerticalSpacing extends StatelessWidget {

  final double of;

  const VerticalSpacing({Key key, this.of = 20,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getProportionateScreenHeight(of),);
  }
}
class HorizontalSpacing extends StatelessWidget {
  final double of;

  const HorizontalSpacing({Key key, this.of = 20}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(of),
    );
  }
}

