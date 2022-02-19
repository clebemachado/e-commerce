import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../../components/skelton_.dart';

class CardPopularSkelton extends StatelessWidget {
  const CardPopularSkelton({
    Key? key,
  }) : super(key: key);

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
              Skelton(
                height: getWidth(30),
                width: getWidth(150),
              ),
              SizedBox(height: getWidth(16)),
              Skelton(
                width: double.infinity,
                height: getWidth(215),
                child: Container(
                  padding: EdgeInsets.all(getWidth(16)),
                  width: getWidth(210),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Skelton(
                            width: getWidth(170),
                            height: 32,
                          ),
                          SizedBox(height: getWidth(20)),
                          Skelton(
                            width: getWidth(170),
                            height: 32,
                          ),
                          SizedBox(height: getWidth(20)),
                          Row(
                            children: [
                              Skelton(
                                width: getWidth(100),
                                height: 37,
                              ),
                              const SizedBox(width: 20),
                              Skelton(
                                width: getWidth(50),
                                height: 37,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: Skelton(
              width: getWidth(130),
              height: getWidth(250),
            ),
          )
        ],
      ),
    );
  }
}
