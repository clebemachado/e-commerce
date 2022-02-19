import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app/modelviews/product_provider/product_provider.dart';
import 'package:story_app/screens/home/home_screen.dart';
import 'package:story_app/screens/onboard/components/login_button.dart';
import 'package:story_app/screens/onboard/components/text_widget_onboard.dart';

import 'package:story_app/size_config.dart';

import '../../../constants.dart';
import '../../components/default_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingBase,
      width: double.infinity,
      decoration: boxDecorationOnboard,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          TextWidgetOnboard(
              text: welcomeOnboard.toUpperCase(),
              color: kPrimaryColor,
              width: 12,
              margin: 8),
          const TextWidgetOnboard(text: nomeLoja, width: 42, margin: 2),
          const TextWidgetOnboard(
              text: text1Onboard,
              color: Color(0xffDDDDDB),
              width: 16,
              margin: 27,
              fontWeight: FontWeight.w500),
          DefaultButton(
            text: buttonBrowseShop,
            press: () async {
              Provider.of<ProductProvider>(context, listen: false).fetchData();
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            heightButton: getWidth(60),
          ),
          SizedBox(height: getWidth(20)),
          const LogInButton(),
          SizedBox(height: getWidth(30))
        ],
      ),
    );
  }
}
