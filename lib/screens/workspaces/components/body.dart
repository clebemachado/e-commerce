import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/constants.dart';
import 'package:story_app/size_config.dart';

import '../../components/form_work_space.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          FormWorkSpaceSeacher(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(24)),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getWidth(32)),
              image: const DecorationImage(
                alignment: FractionalOffset.centerRight,
                image: AssetImage(
                  "assets/images/BasterSound.png",
                ),
              ),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff000201),
                  Color(0xff232323),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: getWidth(23),
                top: getWidth(23),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FEATURED WORKSPACE",
                    style: TextStyle(
                        fontSize: getWidth(12), color: Color(0xffC1C2B8)),
                  ),
                  SizedBox(height: getWidth(32)),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: getWidth(233),
                    ),
                    child: Text(
                      "Professional Gaming Assessories",
                      maxLines: 2,
                      style: TextStyle(
                        color: const Color(0xffF4F5F7),
                        fontSize: getWidth(18),
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(height: getWidth(5)),
                  Container(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                    child: Wrap(
                      children: [
                        const Text(
                          "View Space",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        SizedBox(width: getWidth(5)),
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: kPrimaryColor,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getWidth(37),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
