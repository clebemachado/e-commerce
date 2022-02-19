import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:story_app/core/models_fake/product_model_fake.dart';

import '../../../size_config.dart';

class SectionDescriptionProduct extends StatelessWidget {
  const SectionDescriptionProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: getWidth(18),
        left: getWidth(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      product.title,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: getWidth(21),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text("Avaliações"),
                        SizedBox(width: getWidth(20)),
                        Text("${product.rating.rating}"),
                        SizedBox(width: getWidth(5)),
                        ...List.generate(
                          product.rating.rating.ceil(),
                          ((index) =>
                              SvgPicture.asset("assets/icons/Star.svg")),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const 
              SizedBox(width: 5),
              SectionPriceDescriptionProduct(
                price: product.price,
                percentDescount: 7.0,
              )
            ],
          ),
          SizedBox(height: getWidth(24)),
          Text(
            product.description,
            style: TextStyle(
              fontSize: getWidth(16),
            ),
          )
        ],
      ),
    );
  }
}

class SectionPriceDescriptionProduct extends StatelessWidget {
  const SectionPriceDescriptionProduct({
    Key? key,
    required this.price,
    required this.percentDescount,
  }) : super(key: key);

  final double price;
  final double percentDescount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF5FAF8),
      ),
      child: Container(
        margin: EdgeInsets.all(getWidth(15)),
        child: Column(
          children: [
            Text(
              "\$$price",
              style: TextStyle(
                  color: const Color(0xff1B3D2F),
                  fontSize: getWidth(21),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "$percentDescount % off",
              style: TextStyle(
                  color: const Color(0xff1B3D2F),
                  fontSize: getWidth(12),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
