import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../login/login_screen.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(LoginScreen.routeName);
        },
        child: Text(
          "Log in",
          style: TextStyle(
            color: Colors.white,
            fontSize: getWidth(16),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
