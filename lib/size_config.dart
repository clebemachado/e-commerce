import 'package:flutter/material.dart';

// https://medium.com/flutter-community/flutter-effectively-scale-ui-according-to-different-screen-sizes-2cb7c115ea0a

mixin SizeConfig {
  static late MediaQueryData _mediaQuery;
  static late double screenWidth;
  static late double screenHeight;
  static late double paddingTop;
  static late double appBarHeight;

  static void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    paddingTop = _mediaQuery.padding.top;
    screenWidth = _mediaQuery.size.width;
    screenHeight = _mediaQuery.size.height - paddingTop;
    appBarHeight = kToolbarHeight;
  }
}

double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  double widthLayout = 414; // Esse tamanho é o que o design usa

  return (inputWidth / widthLayout) * screenWidth;
}

double getHeigth(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  double widthLayout = 896; // Esse tamanho é o que o design usa

  return(inputHeight / widthLayout) * screenHeight;

}