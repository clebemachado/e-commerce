import 'package:flutter/material.dart';

import '../../size_config.dart';

class TextCenterWidget extends StatelessWidget {
  const TextCenterWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: getWidth(28),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getWidth(12),
              color: const Color(0xffC1C2B8).withOpacity(0.75)),
        ),
      ),
    );
  }
}
