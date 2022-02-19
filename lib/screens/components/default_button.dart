import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    required this.heightButton,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;
  final double heightButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: heightButton,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ))),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: getWidth(16),
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
