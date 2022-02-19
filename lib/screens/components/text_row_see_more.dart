import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class TextRowSeeMore extends StatelessWidget {
  const TextRowSeeMore({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.press,
  }) : super(key: key);
  
  final String text;
  final double fontSize;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBase,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getWidth(fontSize),
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: press,
            child: Row(
              children: [
                Text(
                  "See More",
                  style: TextStyle(
                    color: const Color(0xff8A8B7A),
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: getWidth(8)),
                SvgPicture.asset(
                  "assets/icons/Arrow_Go.svg",
                  width: getWidth(12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
