import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Welcome to ",
        style: TextStyle(
          fontSize: getWidth(21),
          fontWeight: FontWeight.bold,
        ),
        children: const [
          TextSpan(
            text: nomeLoja,
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}