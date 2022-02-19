import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../../components/skelton_.dart';

class SeeMoreSkelton extends StatelessWidget {
  const SeeMoreSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBase,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Skelton(
            height: getWidth(30),
            width: getWidth(120),
          ),
          Skelton(
            height: getWidth(16),
            width: getWidth(76),
          ),
        ],
      ),
    );
  }
}