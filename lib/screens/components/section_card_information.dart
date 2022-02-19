import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SectionCardInformation extends StatelessWidget {
  const SectionCardInformation({
    Key? key,
    required this.title,
    required this.rate,
    required this.price,
  }) : super(key: key);

  final String title;
  final double rate;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color(0xff040B14),
          ),
        ),
        Row(
          children: [
            Text(
              "Hughlan Workspaces - ",
              style: TextStyle(
                color: const Color(0xffA6A798),
                fontSize: getWidth(12),
              ),
            ),
            Text(
              "$rate  ",
              style: TextStyle(
                color: const Color(0xff8A8B7A),
                fontSize: getWidth(12),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/Star.svg",
              width: getWidth(12),
            )
          ],
        ),
        SizedBox(height: getWidth(12)),
        Text(
          "\$$price",
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: getWidth(16),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
