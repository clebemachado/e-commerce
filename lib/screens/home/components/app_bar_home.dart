import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../components/icon_app_bar.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/Profile.jpg"),
        ),
        const Spacer(),
        IconAppBar(pathImg: "assets/icons/Seacher.svg", press: () {}),
        SizedBox(width: getWidth(12)),
        IconAppBar(pathImg: "assets/icons/Shopping-bag.svg", press: () {}),
      ],
    );
  }
}