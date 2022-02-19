import 'package:flutter/material.dart';

import 'package:story_app/core/models_fake/product_model_fake.dart';
import 'package:story_app/screens/viewItem/view_item_sreen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../components/section_card_information.dart';

class CardNewArrivals extends StatelessWidget {
  const CardNewArrivals({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBase,
      child: Column(
        children: List.generate(
          products.length > 5 ? 5 : products.length,
          ((index) => Padding(
                padding: EdgeInsets.only(bottom: getWidth(12)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ViewItemScreen.routeName,
                      arguments: ArgsProduct(productModel: products[index]),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(getWidth(12)),
                    decoration: decorationCardNewArrivals(),
                    child: Row(
                      children: [
                        SectionCardInformationImage(
                            pathImg: products[index].images[0]),
                        SizedBox(width: getWidth(16)),
                        Flexible(
                          child: SectionCardInformation(
                            title: products[index].title,
                            rate: products[index].rating.rating,
                            price: products[index].price,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }

  BoxDecoration decorationCardNewArrivals() {
    return BoxDecoration(
      border: Border.all(color: const Color(0xffDDDDDB)),
      borderRadius: BorderRadius.circular(getWidth(8)),
    );
  }
}

class SectionCardInformationImage extends StatelessWidget {
  const SectionCardInformationImage({
    Key? key,
    required this.pathImg,
  }) : super(key: key);

  final String pathImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(105),
      height: getWidth(86),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffF4F5F7),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(getWidth(10)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(pathImg),
              Positioned(
                right: -10,
                child: Container(
                  width: getWidth(32),
                  height: getWidth(32),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset("assets/images/Heart.png"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
