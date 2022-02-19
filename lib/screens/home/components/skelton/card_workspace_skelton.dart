import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../../components/skelton_.dart';

class CardWorkspacesSkelton extends StatelessWidget {
  const CardWorkspacesSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skelton(
      height: getWidth(178),
      width: getWidth(136),
      child: Padding(
        padding: EdgeInsets.all(getWidth(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Skelton(
              width: getWidth(120),
              height: getWidth(104),
            ),
            Skelton(
              width: getWidth(79),
              height: getWidth(22),
            ),
            Skelton(
              width: getWidth(107),
              height: getWidth(16),
            ),
          ],
        ),
      ),
    );
  }
}