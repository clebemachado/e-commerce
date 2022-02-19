import 'package:flutter/material.dart';
import 'package:story_app/screens/components/fotter_text.dart';
import 'package:story_app/screens/components/welcome_text.dart';
import 'package:story_app/screens/login/login_screen.dart';
import 'package:story_app/size_config.dart';

import '../../../constants.dart';
import '../../components/text_center_widget.dart';
import 'button_social_sign_up.dart';
import 'form_sign_up.dart';
import 'headersignup.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingBase,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.appBarHeight),
            const WelcomeText(),
            SizedBox(height: getWidth(5)),
            const HeaderSignUp(),
            SizedBox(height: getWidth(39)),
            const ButtonSocialSignUp(),
            const TextCenterWidget(text: "OR"),
            FormSignUp(),
            SizedBox(height: getWidth(32)),
            FooterText(
              text: "Don't have an account?",
              text1: "Login",
              press: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            SizedBox(height: getWidth(32)),
          ],
        ),
      ),
    );
  }
}
