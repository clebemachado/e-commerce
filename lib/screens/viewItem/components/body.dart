import 'package:flutter/material.dart';

import 'package:story_app/core/models_fake/product_model_fake.dart';
import 'package:story_app/screens/viewItem/components/related_item.dart';
import 'package:story_app/screens/viewItem/components/section_card_work_space.dart';
import 'package:story_app/screens/viewItem/components/section_description_product.dart';
import 'package:story_app/screens/viewItem/components/section_text_divider.dart';
import 'package:story_app/size_config.dart';

import 'header_view_item.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> relatedProduct = relatedItem(product.categoria);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderViewItem(product: product),
            SizedBox(height: getWidth(24)),
            SectionDescriptionProduct(product: product),
            SizedBox(height: getWidth(24)),
            const TextSectionWorkspace(text: "WORKSPACES ITEM CAN BE USED"),
            SizedBox(height: getWidth(16)),
            const SectionCardWorkSpace(),
            if (relatedProduct.isNotEmpty)
              RelatedItem(products: relatedProduct),
            SizedBox(height: getWidth(45))
          ],
        ),
      ),
    );
  }
}


