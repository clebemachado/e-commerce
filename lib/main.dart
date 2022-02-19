import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:story_app/constants.dart';
import 'package:story_app/providers.dart';
import 'package:story_app/routes.dart';
import 'package:story_app/theme.dart';

import 'screens/onboard/onboard_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: kBackgroundColor,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Remotely.io',
        theme: themeData(context),
        home: const OnboardScreen(),
        routes: routes,
      ),
    );
  }
}
