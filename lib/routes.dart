
import 'package:flutter/material.dart';
import 'package:story_app/screens/home/home_screen.dart';
import 'package:story_app/screens/login/login_screen.dart';
import 'package:story_app/screens/onboard/onboard_screen.dart';
import 'package:story_app/screens/sign_up/sign_up.dart';
import 'package:story_app/screens/viewItem/view_item_sreen.dart';
import 'package:story_app/screens/workspaces/workspaces.dart';

///```Dart
/// Esse arquivo contém as rotas da aplicação.
///```

Map<String, Widget Function(BuildContext)> routes = {
  OnboardScreen.routeName: (context) => const OnboardScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignUp.routeName: (context) => const SignUp(),
  HomeScreen.routeName: (constext) => const HomeScreen(),
  ViewItemScreen.routeName: (context) => const ViewItemScreen(),
  WorkSpaces.routeName: (context) => const WorkSpaces(),
};
