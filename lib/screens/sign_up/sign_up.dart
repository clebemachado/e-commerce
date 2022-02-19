import 'package:flutter/material.dart';
import 'package:story_app/constants.dart';
import 'package:story_app/screens/sign_up/components/body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/signup";
  const SignUp({Key? key}) : super(key: key);

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
