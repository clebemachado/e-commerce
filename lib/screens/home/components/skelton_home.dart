import 'package:flutter/material.dart';

import 'package:story_app/screens/home/components/skelton/card_popular_skelton.dart';
import 'package:story_app/screens/home/components/skelton/new_arrivals_skelton.dart';
import 'package:story_app/screens/home/components/skelton/see_more_skelton.dart';
import 'package:story_app/size_config.dart';

import 'skelton/work_space_skelton.dart';

class SkeltonHome extends StatelessWidget {
  const SkeltonHome({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getWidth(40)),
            const CardPopularSkelton(),
            SizedBox(height: getWidth(17)),
            const SeeMoreSkelton(),
            SizedBox(height: getWidth(12)),
            const WorkSpaceSkelton(),
            SizedBox(height: getWidth(17)),
            const SeeMoreSkelton(),
            SizedBox(height: getWidth(12)),
            Column(
              children:
                  List.generate(2, ((index) => const NewArrivalsSkelton())),
            )
          ],
        ),
      ),
    );
  }
}
