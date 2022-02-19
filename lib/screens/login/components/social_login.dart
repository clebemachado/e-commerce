import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../components/button_with_social_login.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonSocial(
          social: "Google",
          pathImg: "assets/icons/Google.svg",
          press: () {},
        ),
        SizedBox(height: getWidth(20)),
        ButtonSocial(
          social: "Facebook",
          pathImg: "assets/icons/Facebook.svg",
          press: () {},
        )
      ],
    );
  }
}