import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({
    Key? key,
    required this.press,
    required this.social,
    required this.pathImg,
  }) : super(key: key);

  final GestureTapCallback press;
  final String social;
  final String pathImg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(8)),
          border: Border.all(color: const Color(0xffC1C2B8), width: 0.6),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getWidth(19),
                bottom: getWidth(19),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Login with $social",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(32),
                top: getWidth(16),
                bottom: getWidth(16),
              ),
              child: SvgPicture.asset(
                pathImg,
                height: getWidth(28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
