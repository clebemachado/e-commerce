import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../core/models_fake/product_model_fake.dart';
import '../../../size_config.dart';
import '../../components/default_button.dart';
import '../../viewItem/view_item_sreen.dart';

class CardPopularNow extends StatelessWidget {
  const CardPopularNow({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBase,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTextTitleCardPopNow(),
              SizedBox(height: getWidth(16)),
              Container(
                width: double.infinity,
                decoration: decorationCardPopNow(),
                child: Row(
                  children: [
                    Container(
                      padding: paddingCardPopNow(),
                      width: getWidth(190),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionCardTitle(text: product.title),
                          SectionCardRowRating(rate: product.rating.rating),
                          SizedBox(height: getWidth(20)),
                          SectionCardPopNowButon(product: product),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SectionImageCardPopNow()
        ],
      ),
    );
  }

  EdgeInsets paddingCardPopNow() {
    return EdgeInsets.only(
        left: getWidth(24), top: getWidth(24), bottom: getWidth(24));
  }

  BoxDecoration decorationCardPopNow() {
    return BoxDecoration(
      color: const Color(0xff0A0B02),
      borderRadius: BorderRadius.circular(getWidth(32)),
    );
  }
}

class SectionTextTitleCardPopNow extends StatelessWidget {
  const SectionTextTitleCardPopNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Popular now",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: getWidth(21),
      ),
    );
  }
}

class SectionCardTitle extends StatelessWidget {
  const SectionCardTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(
          color: const Color(0xffF4F5F7),
          fontSize: getWidth(20),
          fontWeight: FontWeight.w500),
    );
  }
}

class SectionCardRowRating extends StatelessWidget {
  const SectionCardRowRating({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Avaliações ",
          style: TextStyle(
            color: const Color(0xffA6A798),
            fontSize: getWidth(12),
          ),
        ),
        const Spacer(),
        Text(
          "$rate ",
          style: TextStyle(
            color: const Color(0xffDDDDDB),
            fontSize: getWidth(12),
          ),
        ),
        SvgPicture.asset(
          "assets/icons/Star.svg",
          width: getWidth(12),
        )
      ],
    );
  }
}

class SectionCardPopNowButon extends StatelessWidget {
  const SectionCardPopNowButon({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(111),
          child: DefaultButton(
            text: "View Item",
            press: () {
              Navigator.of(context).pushNamed(
                ViewItemScreen.routeName,
                arguments: ArgsProduct(productModel: product),
              );
            },
            heightButton: getWidth(42),
          ),
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(getWidth(8)),
          width: getWidth(42),
          height: getWidth(42),
          decoration: const BoxDecoration(
            color: Color(0xffA6A798),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/Shopping-bag.svg"),
        )
      ],
    );
  }
}

class SectionImageCardPopNow extends StatelessWidget {
  const SectionImageCardPopNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      top: 0,
      child: Image.asset("assets/images/Cadeira_2.png"),
    );
  }
}
