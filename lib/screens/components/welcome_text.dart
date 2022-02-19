import 'package:flutter/material.dart';

import '../../size_config.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "HI FELLA",
          style: TextStyle(
            color: const Color(0xff8A8B7A),
            fontSize: getWidth(16),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: getWidth(12),
        ),
        Image.asset("assets/images/goodbye.png"),
      ],
    );
  }
}
