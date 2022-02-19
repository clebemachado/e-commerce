import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.text,
    required this.text1,
    required this.press,
  }) : super(key: key);

  final String text;
  final String text1;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: const Color(0xff8A8B7A),
            fontSize: getWidth(16),
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: press,
          child: Text(
            text1,
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getWidth(16),
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}