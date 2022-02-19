import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/screens/viewItem/components/section_text_divider.dart';

import '../../../constants.dart';
import '../../../core/models_fake/product_model_fake.dart';
import '../../../size_config.dart';
import '../../components/section_card_information.dart';
import '../view_item_sreen.dart';

class RelatedItem extends StatelessWidget {
  final List<Product> products;

  const RelatedItem({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getWidth(26)),
        const TextSectionWorkspace(text: "RELATED ITEM"),
        SizedBox(height: getWidth(16)),
        Container(
          margin: EdgeInsets.only(left: getWidth(24)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                products.length,
                (index) => InkWell(
                  onTap: () => Navigator.of(context).pushNamed(
                    ViewItemScreen.routeName,
                    arguments: ArgsProduct(productModel: products[index]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: getWidth(12)),
                    padding: EdgeInsets.all(getWidth(12)),
                    width: getWidth(188),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getWidth(8)),
                      border: Border.all(
                        color: const Color(0xffDDDDDB),
                      ),
                    ),
                    child: SectionRelatedItem(product: products[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SectionRelatedItem extends StatelessWidget {
  const SectionRelatedItem({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getWidth(86),
          padding: EdgeInsets.symmetric(vertical: getWidth(13)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getWidth(8)),
            color: const Color(0xffF4F5F7),
          ),
          child: Stack(
            children: [
              Center(child: Image.asset(product.images[0])),
              Positioned(
                right: getWidth(9),
                child: Container(
                  padding: EdgeInsets.all(getWidth(6)),
                  width: getWidth(32),
                  height: getWidth(32),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: SvgPicture.asset("assets/icons/Coracao.svg"),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: getWidth(16)),
        SizedBox(
          width: double.infinity,
          child: SectionCardInformation(
            price: product.price,
            rate: product.rating.rating,
            title: product.title,
          ),
        ),
      ],
    );
  }
}
