import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class IconAppBar extends StatelessWidget {
  const IconAppBar({
    Key? key,
    required this.pathImg,
    required this.press,
  }) : super(key: key);
  final String pathImg;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          padding: EdgeInsets.all(getWidth(8)),
          width: getWidth(42),
          height: getWidth(42),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffDDDDDB),
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(pathImg)),
    );
  }
}