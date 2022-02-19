import 'package:flutter/material.dart';

import 'package:story_app/core/models_fake/product_model_fake.dart';

import '../../../size_config.dart';
import 'header_imagens_section.dart';

class HeaderViewItem extends StatefulWidget {
  
  final Product product;
  const HeaderViewItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<HeaderViewItem> createState() => _HeaderViewItemState();
}

class _HeaderViewItemState extends State<HeaderViewItem> {
  int indexImg = 0;

  void mudarImagem(index) {
    setState(() {
      indexImg = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      color: const Color(0xffF4F5F7),
      width: double.infinity,
      child: Column(
        children: [
          ImageProduct(
            indexImg: indexImg,
            press: mudarImagem,
            product: widget.product,
          ),
          SizedBox(height: getWidth(20)),
          CirculoIndicatorImage(
            indexImg: indexImg,
            lenghtImg: widget.product.images.length,
          ),
          SizedBox(height: getWidth(20)),
        ],
      ),
    );
  }
}
