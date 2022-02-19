import 'package:flutter/material.dart';

import '../../../size_config.dart';class TextWidgetOnboard extends StatelessWidget {
  const TextWidgetOnboard({
    Key? key,
    required this.text,
    required this.width,
    required this.margin,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w700,
  }) : super(key: key);

  final String text;
  final double width;
  final double margin;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getWidth(margin)),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: getWidth(width),
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}