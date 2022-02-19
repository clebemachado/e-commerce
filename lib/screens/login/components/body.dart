import 'package:flutter/material.dart';

import 'package:story_app/screens/login/components/form_login.dart';
import 'package:story_app/screens/sign_up/sign_up.dart';
import 'package:story_app/size_config.dart';

import '../../../constants.dart';
import '../../components/fotter_text.dart';
import '../../components/text_center_widget.dart';
import 'header_login.dart';
import 'social_login.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingBase,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.appBarHeight),
            const HeaderLogin(),
            SizedBox(height: getWidth(45)),
            const SocialLogin(),
            const TextCenterWidget(text: "OR"),
            FormLogin(),
            FooterText(
              text: "Forgot password?",
              text1: "Sign Up",
              press: () => Navigator.of(context).pushNamed(SignUp.routeName),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
