import 'package:flutter/material.dart';

import '../../components/button_with_social_login.dart';

class ButtonSocialSignUp extends StatelessWidget {
  const ButtonSocialSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonSocial(
          pathImg: "assets/icons/Google.svg",
          social: "Google",
          press: () {},
        ),
        const SizedBox(height: 20),
        ButtonSocial(
          pathImg: "assets/icons/Facebook.svg",
          social: "Facebook",
          press: () {},
        ),
      ],
    );
  }
}
