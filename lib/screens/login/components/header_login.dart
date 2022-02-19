import 'package:flutter/material.dart';
import 'package:story_app/size_config.dart';

import '../../components/welcome_text.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WelcomeText(),
        SizedBox(height: getWidth(4)),
        Text(
          "Welcome Back",
          style: TextStyle(
            color: const Color(0xff040B14),
            fontSize: getWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}