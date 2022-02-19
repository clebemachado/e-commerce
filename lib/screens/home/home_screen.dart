import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import 'package:story_app/constants.dart';
import 'package:story_app/core/api/api_response.dart';
import 'package:story_app/modelviews/product_provider/product_provider.dart';
import 'package:story_app/screens/components/app_bar_customer.dart';
import 'package:story_app/screens/home/components/skelton_home.dart';
import 'components/app_bar_home.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: Scaffold(
            appBar: const AppBarCustomer(
              child: AppBarHome(),
            ),
            body: Consumer<ProductProvider>(
              builder: (context, controller, child) {
                switch (controller.getStatus) {
                  case Status.COMPLETED:
                    return Body(
                      products: controller.products,
                    );
                  case Status.ERROR:
                    SchedulerBinding.instance!.addPostFrameCallback((_) {
                      snackBarErro(controller.messageApi, context);
                    });
                    return const SkeltonHome();
                  default:
                    return const SkeltonHome();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  snackBarErro(String error, BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text("Erro ao carregar os dados: $error"),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
