import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_widget/doc_widget.dart';
import '../../../size_config.dart';

@docWidget
class TextSection extends StatelessWidget {
  final String text;
  final GestureTapCallback press;

  const TextSection({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: getWidth(21),
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: () {},
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
    );
  }
}
