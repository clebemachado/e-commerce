
import 'package:flutter/material.dart';
import 'package:story_app/constants.dart';
import 'package:story_app/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: const SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}
