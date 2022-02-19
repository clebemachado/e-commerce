import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'size_config.dart';

///```Dart
/// Esse arquivo contém as contants do aplicativo, como cor, textos e outros.
///```

const Color kBackgroundColor = Color(0xffFCFCFC);
const Color kPrimaryColor = Color(0xffCED55B);
const Color kSecondaryColor = Color(0xffBA5C3D);
///```Dart
/// Onboard consts
///```
const String buttonBrowseShop = "Browse Shop";
const String welcomeOnboard = "Welcome";
const String nomeLoja = "Remotely.io";
const String text1Onboard =
    "We serve you with the best gadgets for your home workspace";

BoxDecoration boxDecorationOnboard = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/WelcomeImage.png"),
    fit: BoxFit.cover,
  ),
);

EdgeInsets paddingBase = EdgeInsets.only(
  left: getWidth(32),
  right: getWidth(32),
);
