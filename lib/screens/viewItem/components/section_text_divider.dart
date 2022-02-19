import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TextSectionWorkspace extends StatelessWidget {
  const TextSectionWorkspace({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(24)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: getWidth(12),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}