import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/core/models_fake/product_model_fake.dart';
import 'package:story_app/screens/components/default_button.dart';
import 'package:story_app/size_config.dart';

import 'components/body.dart';

class ViewItemScreen extends StatelessWidget {
  static String routeName = "/view_item";
  const ViewItemScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ArgsProduct;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: getWidth(24)),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xffF4F5F7),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffF4F5F7),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(getWidth(10)),
            margin: EdgeInsets.only(right: getWidth(24)),
            width: getWidth(42),
            height: getWidth(42),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Export.svg"),
          )
        ],
      ),
      body: Body(
        product: args.productModel,
      ),
      bottomNavigationBar: const BottomNavigatorButtonCard(),
    );
  }
}

class BottomNavigatorButtonCard extends StatelessWidget {
  const BottomNavigatorButtonCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                  heightButton: getWidth(60),
                  text: "Add to cart",
                  press: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.all(getWidth(17)),
                width: getWidth(60),
                height: getWidth(60),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  "assets/icons/Coracao.svg",
                ),
              )
            ],
          ),
          SizedBox(height: getWidth(16))
        ],
      ),
    );
  }
}

class ArgsProduct {
  Product productModel;

  ArgsProduct({required this.productModel});
}
