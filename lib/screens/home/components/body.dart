
import 'package:flutter/material.dart';

import 'package:story_app/core/models/product_list.dart';
import 'package:story_app/screens/home/components/card_workspace.dart';
import 'package:story_app/size_config.dart';

import '../../components/text_row_see_more.dart';
import 'card_new_arrivals.dart';
import 'card_popular_now.dart';

class Body extends StatelessWidget {
  final Products products;
  const Body({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getWidth(40)),
            CardPopularNow(product: products.popPost),
            SizedBox(height: getWidth(17)),
            TextRowSeeMore(
                text: "Workspace", fontSize: getWidth(21), press: () {}),
            SizedBox(height: getWidth(12)),
            CardWorkspace(categorias: products.categoria),
            SizedBox(height: getWidth(32)),
            TextRowSeeMore(
                text: "New arrivals", fontSize: getWidth(21), press: () {}),
            SizedBox(height: getWidth(14)),
            CardNewArrivals(products: products.productsLista)
          ],
        ),
      ),
    );
  }
}


