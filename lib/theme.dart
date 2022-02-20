///```Dart
/// Esse arquivo contém as configurações de tema;
/// Ótimo artigo: https://bit.ly/3gTP198
///```

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:story_app/size_config.dart';

import 'constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: appBarTheme2,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme2,
  );
}

AppBarTheme appBarTheme2 = const AppBarTheme(
  elevation: 0,
  color: kBackgroundColor,
  titleTextStyle: TextStyle(
    color: Color(0xff040B14),
    fontWeight: FontWeight.w500,
  ),
  centerTitle: true,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: kBackgroundColor,
    statusBarIconBrightness: Brightness.light,
  ),
);

TextTheme textTheme = const TextTheme(
  bodyText1: TextStyle(
    fontFamily: "Avenir",
    color: Colors.black,
  ),
  bodyText2: TextStyle(
    fontFamily: "Avenir",
    color: Colors.black,
  ),
);

InputDecorationTheme inputDecorationTheme2 = InputDecorationTheme(
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(
    8,
  ),
  borderSide: const BorderSide(
    color: Colors.transparent,
  ),
  gapPadding: 16,
);
