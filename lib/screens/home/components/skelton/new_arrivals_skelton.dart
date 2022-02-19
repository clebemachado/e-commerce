
import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../../components/skelton_.dart';

class NewArrivalsSkelton extends StatelessWidget {
  const NewArrivalsSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(32),
        right: getWidth(32),
        bottom: getWidth(16),
      ),
      child: Skelton(
        width: double.infinity,
        height: getWidth(110),
        child: Row(children: [
          Skelton(
            width: getWidth(105),
            height: getWidth(106),
          ),
          SizedBox(width: getWidth(16)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Skelton(
                width: getWidth(180),
                height: getWidth(22),
              ),
              Skelton(
                width: getWidth(165),
                height: getWidth(22),
              ),
              Skelton(
                width: getWidth(80),
                height: getWidth(22),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
