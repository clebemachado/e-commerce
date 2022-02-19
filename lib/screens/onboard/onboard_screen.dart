import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_app/screens/onboard/components/body.dart';
import 'package:story_app/size_config.dart';

class OnboardScreen extends StatelessWidget {
  static String routeName = "/onBoardScreen";

  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return const Scaffold(
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}
