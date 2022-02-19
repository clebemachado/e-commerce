// ignore: must_be_immutable

import 'package:flutter/material.dart';

import 'package:story_app/core/models_fake/product_model_fake.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

///```Dart
/// Esse arquivo contém todos os widgets utilizados no header
/// 
///```

class ImageProduct extends StatelessWidget {
  ///```Dart
  /// Esse widget é o que configura a imagem do header
  ///```

  final int indexImg;
  final Function press;
  final Product product;

  const ImageProduct({
    Key? key,
    required this.indexImg,
    required this.press,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.9,
          child: Image.asset(
            product.images[indexImg],
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Column(
            children: [
              const Spacer(),
              ...List.generate(
                product.images.length,
                (index) => GestureDetector(
                  onTap: () {
                    ///```Dart
                    /// Essa função muda a imagem
                    ///```
                    press(index);
                  },
                  child: ViewImageCard(
                    img: product.images[index],
                    borderImg: indexImg == index,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }
}

class ViewImageCard extends StatelessWidget {
  ///```Dart
  /// Esse widget é o que seleciona a imagem no header (CARD)
  ///```

  const ViewImageCard({
    Key? key,
    required this.img,
    required this.borderImg,
  }) : super(key: key);

  final String img;
  final bool borderImg;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getWidth(6)),
      width: getWidth(67),
      height: getWidth(65),
      decoration: decoration(),
      child: Container(
        margin: EdgeInsets.all(
          getWidth(4),
        ),
        decoration: BoxDecoration(
          color: const Color(0xffECEDDE),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          img,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderImg ? kSecondaryColor : Colors.transparent,
          width: 0.6,
        ));
  }
}

class CirculoIndicatorImage extends StatelessWidget {
  ///```Dart
  /// Esse widget é o circulo que indica a imagem atual
  ///```

  const CirculoIndicatorImage({
    Key? key,
    required this.indexImg,
    required this.lenghtImg,
  }) : super(key: key);

  final int indexImg;
  final int lenghtImg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        ...List.generate(
          lenghtImg,
          (indx) => Container(
            margin: EdgeInsets.only(left: getWidth(3.5), right: getWidth(3.5)),
            width: getWidth(8),
            height: getWidth(8),
            decoration: BoxDecoration(
              color: indexImg == indx ? kPrimaryColor : const Color(0xffC1C2B8),
              shape: BoxShape.circle,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
